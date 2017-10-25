package com.youmel.auth.util.jwt;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.youmel.auth.util.MessageRsp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/**
 * jwt认证filter
 */
public class HTTPBearerAuthorizeAttribute implements Filter {
    @Autowired
    private Audience audience;
    private static final Set<String> ALLOWED_PATHS = Collections.unmodifiableSet(new HashSet<>(
            Arrays.asList("/oauth/token")));
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this,
                filterConfig.getServletContext());
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        MessageRsp resultMsg = new MessageRsp();
        HttpServletRequest httpRequest = (HttpServletRequest)request;
        String path = httpRequest.getRequestURI().substring(httpRequest.getContextPath().length()).replaceAll("[/]+$", "");
        boolean allowedPath = ALLOWED_PATHS.contains(path);
        if (allowedPath) {
            chain.doFilter(request,response);
            return;
        }
        String auth = httpRequest.getHeader("Authorization");
        if((auth != null) && (auth.length() > 7)){
            String HeadStr = auth.substring(0,6).toLowerCase();
            if(HeadStr.compareTo("bearer") == 0){
                auth = auth.substring(7,auth.length());
                if(JwtHelper.parseJWT(auth,audience.getBase64Secret()) != null){
                    chain.doFilter(request,response);
                    return;
                }
            }
        }
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        httpResponse.setCharacterEncoding("UTF-8");
        httpResponse.setContentType("application/json; charset=utf-8");
        httpResponse.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        ObjectMapper mapper = new ObjectMapper();
        resultMsg.setErrorcode(0);
        resultMsg.setErrormsg("token error");
        httpResponse.getWriter().write(mapper.writeValueAsString(resultMsg));
        return;
    }

    @Override
    public void destroy() {

    }
}
