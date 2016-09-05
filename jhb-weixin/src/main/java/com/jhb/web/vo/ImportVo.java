package com.jhb.web.vo;

import org.springframework.web.multipart.MultipartFile;

public class ImportVo {

    /**
     * 上传类型
     */
    private String uploadType;

    /**
     * 文件
     */
    private MultipartFile uploadFile;

    public MultipartFile getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(MultipartFile uploadFile) {
        this.uploadFile = uploadFile;
    }

    public String getUploadType() {
        return uploadType;
    }

    public void setUploadType(String uploadType) {
        this.uploadType = uploadType;
    }

    @Override
    public String toString() {
        return "UploadDemoVo [imgFile=" + uploadFile + "]";
    }
}
