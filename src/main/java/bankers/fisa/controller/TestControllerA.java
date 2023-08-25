package bankers.fisa.controller;


import java.net.URI;

import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponentsBuilder;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("/testa")
public class TestControllerA {
	
	@GetMapping("/")
	public ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@PostMapping("/login")
	public ModelAndView loginPage(
			@RequestParam("loginID") String id,
			@RequestParam("loginPW") String pw,
			HttpServletResponse response) {
		
		ModelAndView mv = new ModelAndView();

		System.out.println("들어옴");
		if(!login(id, pw)) {
			System.out.println("로그인 틀림");
			mv.setViewName("fail");
			return mv;
		}
		
		Cookie cookie = new Cookie("id", id);
		cookie.setDomain("localhost");
		cookie.setPath("/");
		cookie.setMaxAge(30*60);
		cookie.setSecure(true);
		response.addCookie(cookie);
		
		mv.setViewName("mainpage");
		return mv;
	
	}
	//김건영 박상건 8888
	private boolean login(String id, String pw) {
		URI uri = UriComponentsBuilder.fromUriString("http://localhost:7070")
				.path("/center/login")
				.encode()
				.build()
				.toUri();

		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();
		parameters.add("loginID", id);
		parameters.add("loginPW", pw);
		
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> responseEntity = restTemplate.postForEntity(uri, parameters, String.class);
		
		if(responseEntity.getBody().equals("true")) {
			return true;
		}else {
			return false;
		}
	}

}
