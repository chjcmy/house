package com.spring.life.entity;

import org.springframework.web.multipart.MultipartFile;


import java.util.List;

public class MediaVO {
    private String creator;
    private String callbackUrl;
    private List<MultipartFile> mediaFile;

    @Override
    public String toString() {
        return "MediaVO{" +
                "creator='" + creator + '\'' +
                ", callbackUrl='" + callbackUrl + '\'' +
                ", mediaFile=" + mediaFile +
                '}';
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getCallbackUrl() {
        return callbackUrl;
    }

    public void setCallbackUrl(String callbackUrl) {
        this.callbackUrl = callbackUrl;
    }

    public List<MultipartFile> getMediaFile() {
        return mediaFile;
    }

    public void setMediaFile(List<MultipartFile> mediaFile) {
        this.mediaFile = mediaFile;
    }
}
