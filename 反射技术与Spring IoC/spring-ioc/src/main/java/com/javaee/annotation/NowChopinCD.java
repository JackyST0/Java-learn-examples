package com.javaee.annotation;

import org.springframework.stereotype.Component;

@Component
public class NowChopinCD implements CompactDisc{
    private String title = "名称：十一月的肖邦";
    private String artist = "周杰伦";
    public void play(){
        System.out.println("播放专辑："+title+"by"+artist);
    }
}
