package com.javaee.annotation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CdPlayer {
    @Autowired
    private CompactDisc cd;
    public void playCD(){
        cd.play();
    }
}
