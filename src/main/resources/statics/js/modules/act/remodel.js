$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'act/remodel/list',
        datatype: "json",
        colModel: [
            {label: 'ID', name: 'name', index: 'ID_', width: 80},
            {label: '名称', name: 'name', index: 'NAME_', width: 80},
            {label: '标识', name: 'key', index: 'KEY_', width: 80},
            {label: '版本号', name: 'version', index: 'VERSION_', width: 80},
            {label: '创建时间', name: 'createTime', index: 'CREATE_TIME_', width: 80},
            {label: '更新时间', name: 'lastUpdateTime', index: 'LAST_UPDATE_TIME_', width: 80},
            {label: '部署ID', name: 'deploymentId', index: 'DEPLOYMENT_ID_', width: 80},
            {
                label: '操作', name: '', index: '', width: 80,
                formatter: function (cellvalue, options, row) {
                    return "<a href='"+baseURL+"/statics/act/modeler.html?modelId=" + row.id + "' class='label label-primary'>编辑</a> &nbsp;" +
                        "<a onclick=\"deploy('" + row.id + "')\" class='label label-primary'>部署</a> &nbsp;" +
                        "<a onclick=\"deleteModel('" + row.id + "')\" class='label label-danger'>删除</a>";

                }
            }
        ],
        viewrecords: true,
        height: 385,
        rowNum: 10,
        rowList: [10, 30, 50],
        rownumbers: true,
        rownumWidth: 25,
        autowidth: true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader: {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames: {
            page: "page",
            rows: "limit",
            order: "order"
        },
        gridComplete: function () {
            //隐藏grid底部滚动条
            $("#jqGrid").closest(".ui-jqgrid-bdiv").css({"overflow-x": "hidden"});
        }
    });
});

function deploy(modelId) {
    var url = baseURL + "/activiti/deploy?modelId=" + modelId;
    $.get(baseURL + url, function (r) {
        if (r.code == 0) {
            alert("部署成功");
            vm.reload();
        } else {
            alert(r.msg);
        }

    });
}

function deleteModel(modelId) {
    confirm('确定要删除选中的流程吗？', function () {
        var url = baseURL + "/activiti/delete?modelId=" + modelId;
        $.get(baseURL + url, function (r) {
            if (r.code == 0) {
                alert("删除成功")
                vm.reload();
            } else {
                alert(r.msg);
            }
        });
    });
}

var vm = new Vue({
    el: '#rrapp',
    data: {
        showList: true,
        title: null,
        reModel: {},
        q: {}
    },
    methods: {
        query: function () {
            vm.reload();
        },
        add: function () {
            // vm.showList = false;
            // vm.title = "新增";
            // vm.reModel = {};
            location.href = baseURL + "/activiti/create"
        },
        update: function (event) {
            var id = getSelectedRow();
            if (id == null) {
                return;
            }
            vm.showList = false;
            vm.title = "修改";

            vm.getInfo(id)
        },
        saveOrUpdate: function (event) {
            var url = vm.reModel.id == null ? "/act/remodel/save" : "/act/remodel/update";
            $.ajax({
                type: "POST",
                url: baseURL + url,
                contentType: "application/json",
                data: JSON.stringify(vm.reModel),
                success: function (r) {
                    if (r.code === 0) {
                        alert('操作成功', function (index) {
                            vm.reload();
                        });
                    } else {
                        alert(r.msg);
                    }
                }
            });
        },
        del: function (event) {
            var ids = getSelectedRows();
            if (ids == null) {
                return;
            }

            confirm('确定要删除选中的记录？', function () {
                $.ajax({
                    type: "POST",
                    url: baseURL + "/act/remodel/delete",
                    contentType: "application/json",
                    data: JSON.stringify(ids),
                    success: function (r) {
                        if (r.code == 0) {
                            alert('操作成功', function (index) {
                                $("#jqGrid").trigger("reloadGrid");
                            });
                        } else {
                            alert(r.msg);
                        }
                    }
                });
            });
        },
        getInfo: function (id) {
            $.get(baseURL + "act/remodel/info/" + id, function (r) {
                vm.reModel = r.reModel;
            });
        },
        reload: function (event) {
            vm.showList = true;
            var page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                postData: vm.q,
                page: page
            }).trigger("reloadGrid");
        }
    }
});