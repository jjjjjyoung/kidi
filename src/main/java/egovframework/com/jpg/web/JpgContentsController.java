package egovframework.com.jpg.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.com.cms.web.MenuManageNewVO;
import egovframework.com.jpg.service.HtmlEditorService;
import egovframework.com.jpg.service.HtmlEditorVO;
import egovframework.com.sym.mnu.mpm.service.EgovMenuManageService;



@Controller
public class JpgContentsController{
	
	@Autowired
    private DefaultBeanValidator beanValidator;

    /** EgovMessageSource */
    @Resource(name = "egovMessageSource")
    EgovMessageSource egovMessageSource;
		
	@Resource(name = "HtmlEditorService")
	private HtmlEditorService htmlEditorService;
	
	/** EgovMenuManageService */
	@Resource(name = "meunManageService")
	private EgovMenuManageService menuManageService;
	

	
	/* 관리자 : 컨텐츠 리스트 */
	@RequestMapping("/contentsManage.do")
	public String contentsManegeList(@ModelAttribute("HtmlEditorVO") HtmlEditorVO htmlEditorVO, ModelMap model)
    		throws Exception {
		
		/*// 0. Spring Security 사용자권한 처리
    	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
    	if (!isAuthenticated) {
    		model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
    		return "egovframework/com/uat/uia/EgovLoginUsr";
    	}*/
		
		// 0. Spring Security 사용자권한 처리
		LoginVO user = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();

		//System.out.println(user.getId());
		if (!isAuthenticated || !"webmaster".equals(user.getId())) {
			
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
			return "egovframework/com/uat/uia/EgovLoginUsr";
		}
    	
    	List<?> resultList = htmlEditorService.selectHtmlEditorList();

    	model.addAttribute("resultList", resultList);

        return "egovframework/com/jpg/skinContentsList";
	}
	
	
	
	
	
	
	
	
	
	
	/* 관리자 : 컨텐츠 등록 */
	@RequestMapping("/contentsRegist.do")
    public String contentsManegeRegist(@RequestParam Map<?, ?> commandMap,@ModelAttribute("HtmlEditorVO") HtmlEditorVO htmlEditorVO,ModelMap model) throws Exception {
        // 0. Spring Security 사용자권한 처리
        Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
        if (!isAuthenticated) {
            model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
            return "egovframework/com/uat/uia/EgovLoginUsr";
        }

        // 로그인 객체 선언
        //LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();

        
        String sLocationUrl = "egovframework/com/jpg/skinContentsRegist";
        String sCmd = commandMap.get("cmd") == null ? "" : (String) commandMap.get("cmd");

        /** 저장 */
        if (sCmd.equals("save")) {
        	/*
        	String ctsCn = htmlEditorVO.getCtsCn();
        	ctsCn = ctsCn.replaceAll("&lt;", "<");
        	ctsCn = ctsCn.replaceAll("&gt;", ">");
        	ctsCn = ctsCn.replaceAll("&quot;", "\"");
        	htmlEditorVO.setCtsCn(ctsCn);
        	*/
        	htmlEditorService.insertHtmlEditor(htmlEditorVO);
            sLocationUrl = "forward:/contentsManage.do";
        }

        return sLocationUrl;
    }
	
	/* 관리자 : 컨텐츠 수정 */
	@RequestMapping("/contentsUpdt.do")
    public String contentsManegeUpdt(@RequestParam Map<?, ?> commandMap, @ModelAttribute("HtmlEditorVO") HtmlEditorVO htmlEditorVO, ModelMap model) throws Exception {
		
        // 0. Spring Security 사용자권한 처리
        Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
        if (!isAuthenticated) {
            model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
            return "egovframework/com/uat/uia/EgovLoginUsr";
        }

        // 로그인 객체 선언
        String sLocationUrl = null;
        String sCmd = commandMap.get("cmd") == null ? "" : (String) commandMap.get("cmd");
        String sId = (String) commandMap.get("id");
        
        /** 수정 */
        if (sCmd.equals("updt")) {
        	/*
        	String ctsCn = htmlEditorVO.getCtsCn();
        	ctsCn = ctsCn.replaceAll("&lt;", "<");
        	ctsCn = ctsCn.replaceAll("&gt;", ">");
        	ctsCn = ctsCn.replaceAll("&quot;", "\"");
        	htmlEditorVO.setCtsCn(ctsCn);
        	*/
        	htmlEditorService.updateHtmlEditor(htmlEditorVO);
            sLocationUrl = "forward:/contentsManage.do";
            
        } else {        	
        	sLocationUrl = "egovframework/com/jpg/skinContentsUpdt";
        	
        	//HtmlEditorVO vo = new HtmlEditorVO();            
        	htmlEditorVO.setCtsId(sId);        	
        	htmlEditorVO = htmlEditorService.selectHtmlEditor(htmlEditorVO);
            model.addAttribute("vo", htmlEditorVO);
        }
        
        return sLocationUrl;
    }
	
	/* 관리자 : 컨텐츠 삭제 */
	@RequestMapping("/contentsDel.do")
    public String contentsManegeDel(@RequestParam Map<?, ?> commandMap, @ModelAttribute("HtmlEditorVO") HtmlEditorVO htmlEditorVO, ModelMap model) throws Exception {
		
        // 0. Spring Security 사용자권한 처리
        Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
        if (!isAuthenticated) {
            model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
            return "egovframework/com/uat/uia/EgovLoginUsr";
        }

        // 로그인 객체 선언
        //LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
        String sLocationUrl = null;
        
        String sId = (String) commandMap.get("id");

        /** 삭제 */
    	sLocationUrl = "forward:/contentsManage.do";
    	        
    	htmlEditorVO.setCtsId(sId);        	
    	htmlEditorService.deleteHtmlEditor(htmlEditorVO);
        
        return sLocationUrl;
    }
	
	/* 사용자 : 컨텐츠 페이지 */
	@RequestMapping("/contents.do")
	public String pageGreetings(@RequestParam Map<?, ?> commandMap,MenuManageNewVO searchVO,ModelMap model) throws Exception{
		
		HtmlEditorVO vo = new HtmlEditorVO();
		
		String lang = ((String)commandMap.get("lang") != null)?(String)commandMap.get("lang"):"kr";
		String ctnId = (String)commandMap.get("id");
		String bufCtnId = "";
		String ctnType = ((String)commandMap.get("type") != null)?(String)commandMap.get("type"):"N";
		
		model.addAttribute("lang", lang);
		 
		if(ctnType.equals("k")) {
			model.addAttribute("kid","Y");
		}else {
			model.addAttribute("kid","N");
		}
		
		if (ctnId.equals("email") || ctnId.equals("privacy") || ctnId.equals("service")) {
			bufCtnId = ctnId;
			ctnId = "greetings";
		}
		MenuManageNewVO meCode = menuManageService.seachMenu(ctnId);
		String parentCode = meCode.getMeCode().substring(0,2);
		MenuManageNewVO parent = menuManageService.parentName(parentCode);
		

		String parentName = parent.getMeName();
		
		
	
		model.addAttribute("parentName", parentName);
		model.addAttribute("parentCode", parentCode);
		model.addAttribute("meName", meCode.getMeName());
		model.addAttribute("meCode", meCode.getMeCode());
		
		List<?> list_menumanage = menuManageService.selectMenuManageListNew(searchVO);
		model.addAttribute("list_menumanage", list_menumanage);
		
		if (!bufCtnId.equals("")) {
			ctnId = bufCtnId;
		}
		
		
		
		
		vo.setCtsId(ctnId);
		HtmlEditorVO result = htmlEditorService.selectHtmlEditor(vo);
		
		
		String ctsCn = result.getCtsCn();
    	ctsCn = ctsCn.replaceAll("&lt;", "<");
    	ctsCn = ctsCn.replaceAll("&gt;", ">");
    	ctsCn = ctsCn.replaceAll("&quot;", "\"");
    	result.setCtsCn(ctsCn);
		
		model.addAttribute("vo", result);
		
		return "egovframework/com/jpg/skinContentsView";		
	}
	
	
	
	
	
	
	
	
	
	
	

}
