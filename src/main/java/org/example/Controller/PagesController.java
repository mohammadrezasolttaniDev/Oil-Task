package org.example.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PagesController {
    @RequestMapping(value = "/index")
    public String index()
    {
        return "Index";
    }
}
