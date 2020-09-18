package com.allblue.utils;

import com.fasterxml.jackson.databind.node.ObjectNode;
import org.activiti.bpmn.converter.BpmnXMLConverter;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.editor.language.json.converter.BpmnJsonConverter;
import org.activiti.engine.RepositoryService;
import org.activiti.explorer.util.XmlUtil;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

@Component
public class ImpoerModelUtil {
    @Resource
    private RepositoryService repositoryService;

    /**
     * 创建Model二进制信息
     *
     * @param bpmnStream
     * @param ModelID
     */
    public void creatModelByImpoutStream(InputStream bpmnStream, String ModelID) {
        XMLInputFactory xif;
        InputStreamReader in = null;
        XMLStreamReader xtr = null;
        try {
            xif = XmlUtil.createSafeXmlInputFactory();
            in = new InputStreamReader(bpmnStream, "UTF-8");
            xtr = xif.createXMLStreamReader(in);
            BpmnModel bpmnModel = (new BpmnXMLConverter()).convertToBpmnModel(xtr);
            ObjectNode modelNode = new BpmnJsonConverter().convertToJson(bpmnModel);
            repositoryService.addModelEditorSource(ModelID, modelNode.toString().getBytes("utf-8"));
        } catch (XMLStreamException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } finally {
            if (xtr != null) {
                try {
                    xtr.close();
                } catch (XMLStreamException e) {
                    e.printStackTrace();
                }
            }
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (bpmnStream != null) {
                try {
                    bpmnStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

