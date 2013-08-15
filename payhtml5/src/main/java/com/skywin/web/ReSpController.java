package com.skywin.web;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.skywin.model.JsonResp;
import com.skywin.model.PageModel;
import com.skywin.model.ReSpInf;
import com.skywin.model.UserRedisInf;
import com.skywin.service.SpService;

@Controller
@RequestMapping("/sp")
public class ReSpController {

	private static Log logger = LogFactory.getLog(ReSpController.class);
	private SpService spService;

	@Autowired
	public void setSpService(SpService spService) {
		this.spService = spService;
	}

	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String list(Integer page, Integer size, Model model) {
		PageModel<ReSpInf> pageModel = new PageModel<ReSpInf>();
		if (page == null || page < 1)
			page = 1;
		if (size == null || size < 1)
			size = 10;
		pageModel = spService.findPage("from ReSpInf sp order by sp.spid desc", null, page, size);
		model.addAttribute("pageModel", pageModel);
		return "sp/list";
	}

	// 链接到add页面时是GET请求，会访问这段代码
	@RequestMapping(value = "/get/{spid}", method = RequestMethod.GET)
	@ResponseBody
	public ReSpInf get(@PathVariable Long spid) {
		if (spid == null)
			return null;
		ReSpInf inf = spService.get(spid);
		return inf;
	}

	// 在具体添加用户时，是post请求，就访问以下代码
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public JsonResp add(@Validated ReSpInf sp, BindingResult br,
			HttpServletRequest req) throws IOException {// 一定要紧跟Validate之后写验证结果类
		JsonResp ret = new JsonResp();
		ret.setSuccess(true);
		if (br.hasErrors()) {
			ret.setSuccess(false);
			FieldError err = br.getFieldErrors().get(0);
			ret.setMessage(err.getDefaultMessage());
		} else {
			try {
				UserRedisInf user = (UserRedisInf) req
						.getAttribute("loginUser");
				if (user != null) {
					sp.setModifieduser(user.getUsername());
				}
				sp.setModifieddate(new Date());
				spService.save(sp);
			} catch (RuntimeException e) {
				ret.setSuccess(false);
				ret.setMessage(e.getMessage());
				logger.error("数据库操作出错!", e);
			}
		}

		return ret;
	}

	// @RequestMapping(value="/{username}",method=RequestMethod.GET)
	// public String show(@PathVariable String username,Model model) {
	// model.addAttribute(users.get(username));
	// return "user/show";
	// }

	@RequestMapping(value = "/{spid}", method = RequestMethod.GET, params = "json")
	@ResponseBody
	public ReSpInf show(@PathVariable Long spid) {
		return spService.get(spid);
		// return users.get(username);
	}

	// @RequestMapping(value="/update/{spid}",method=RequestMethod.GET,params="json")
	// @ResponseBody
	// public void update(@PathVariable Long spid,Model model) {
	// //model.addAttribute(users.get(username));
	// //return "user/update";
	// }

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public JsonResp update(@Validated ReSpInf spinf, BindingResult br,
			HttpServletRequest req) {
		JsonResp ret = new JsonResp();
		ret.setSuccess(true);
		if (br.hasErrors()) {
			ret.setSuccess(false);
			FieldError err = br.getFieldErrors().get(0);
			ret.setMessage(err.getDefaultMessage());
		} else {
			try {
				UserRedisInf user = (UserRedisInf) req
						.getAttribute("loginUser");
				if (user != null) {
					spinf.setModifieduser(user.getUsername());
				}
				spinf.setModifieddate(new Date());
				spService.update(spinf);
			} catch (RuntimeException e) {
				ret.setSuccess(false);
				ret.setMessage(e.getMessage());
				logger.error("数据库操作出错!", e);
			}
		}

		return ret;
	}

	@RequestMapping(value = "/delete/{spid}", method = RequestMethod.GET)
	@ResponseBody
	public JsonResp delete(@PathVariable Long spid) {
		JsonResp ret = new JsonResp();
		ret.setSuccess(true);

		try {
			if (spid == null || spid < 1) {
				ret.setSuccess(false);
				ret.setMessage("缺少id！");
			} else {
				spService.delete(spid);
			}
		} catch (RuntimeException e) {
			ret.setSuccess(false);
			ret.setMessage(e.getMessage());
			logger.error("数据库操作出错!", e);
		}

		return ret;
	}

	/**
	 * 局部异常处理,仅仅只能处理这个控制器中的异常
	 */
	/*
	 * @ExceptionHandler(value={UserException.class}) public String
	 * handlerException(UserException e,HttpServletRequest req) {
	 * req.setAttribute("e",e); return "error"; }
	 */
}
