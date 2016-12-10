/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ws;

/**
 *
 * @author MAX
 */
public class FileTransfererClient {

    public String uploadFilePDF(java.lang.String filename, byte[] pdf) {
        com.ws.Uploadfile_Service service = new com.ws.Uploadfile_Service();
        com.ws.Uploadfile port = service.getUploadfilePort();
        return port.uploadFilePDF(filename, pdf);
    }


}
