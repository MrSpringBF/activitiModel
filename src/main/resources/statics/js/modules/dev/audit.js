function registerFrom() {
    var validator = $("#myForm").data('bootstrapValidator')
    if (validator) {
        validator.destroy();
        $('#myForm').data('bootstrapValidator', null);
    }
    $('#myForm').bootstrapValidator({
        excluded: [":disabled"],
        fields: {
            content: {
                validators: {
                    notEmpty: {
                        message: '请假理由不能为空'
                    }
                }
            }
        }
    });
}

$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'act/queryMyTask',
        datatype: "json",
        colModel: [
            {label: 'id', name: 'id', index: 'id', width: 50, key: true},
            {label: '请假人', name: 'chineseName', index: 'user_id', width: 80},
            {label: '请假理由', name: 'content', index: 'content', width: 80},
            {label: '开始日期', name: 'startDate', index: 'start_date', width: 80},
            {label: '结束日期', name: 'endDate', index: 'end_date', width: 80},
            {
                label: '操作', name: '', index: '', width: 80,
                formatter: function (cellvalue, options, row) {
                    return "<a onclick=\"toAudit('" + row.processInstanceId + "')\" class='label label-primary'>审核</a> &nbsp;"
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
function toAudit(processInstanceId) {
    $("#processInstanceId").val(processInstanceId);
    vm.showList = false;
    vm.title = "审核";
}
function Audit() {
    let processInstanceId=$("#processInstanceId").val();
    let agree=$("#agree").val();
    let content=$("#content").val();
    let obj={};
    obj.processInstanceId=processInstanceId;
    obj.agree=agree;
    obj.content=content;
    $.ajax({
        type: "POST",
        url: baseURL + "/dev/audit/audit",
        contentType: "application/json",
        data: JSON.stringify(obj),
        success: function (r) {
            alert('操作成功');
            vm.showList = true;
            vm.reload();
        }
    });
}
var vm = new Vue({
    el: '#rrapp',
    data: {
        isDisable: false,
        showList: true,
        title: null
    },
    methods: {
        query: function () {
            vm.reload();
        },
        reload: function (event) {
            vm.showList = true;
            var page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                page: page
            }).trigger("reloadGrid");
        }
    }
});