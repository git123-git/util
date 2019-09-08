package com.bw.controller;

import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zxh.utils.StringUtils;

@Controller
public class WebController {
	
	@RequestMapping("toAdd.do")
	public String toAdd() {
		return "add";
	}
	@RequestMapping("add.do")
	@ResponseBody
	public int add(String str) {
		if(StringUtils.isBlank(str)) {//先判断 字符串为不为空
			
			//不是空的话就可以返回以下
			String replaceStr = StringUtils.replaceStr(str);
			System.out.println(replaceStr);
			return 1;
		}else {
			//如果 是错误的
			return 0;
		}
		
		
		
		
		
	}

}
