package com.bin.temperature.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AjaxResult {
    private Boolean success;
    // data 用来存放ajax请求返回的数据
    private Object data;
}
