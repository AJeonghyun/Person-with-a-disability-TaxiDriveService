package com.example.drive;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TaxiController {

    @Autowired
    TaxiDAO taxiDAO;
    @RequestMapping("/drive")
    public String home() {
        return "/drive/index";
    }
    @RequestMapping(value = "/drive/list", method = RequestMethod.GET)
    public String boardlist(Model model) {
        model.addAttribute("list",taxiDAO.getDriveList());
        return "/drive/list";
    }
    @RequestMapping(value = "/drive/add", method = RequestMethod.GET)
    public String addPost() {
        return "/drive/addpostform";
    }

    @RequestMapping(value="/drive/addok", method = RequestMethod.POST)
    public String addPostOK(TaxiVO vo) {
        int i = taxiDAO.insertDrive(vo);
        if(i==0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!");
        return "redirect:/drive/list";
    }

    @RequestMapping(value = "/drive/editpost/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        TaxiVO taxiVO = taxiDAO.getDrive(id);
        model.addAttribute("taxiVO",taxiVO);
        return "/drive/editform";
    }

    @RequestMapping(value="/drive/editok", method = RequestMethod.POST)
    public String editPostOK(TaxiVO vo) {
        int i = taxiDAO.updateDrive(vo);
        if(i==0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!");
        return "redirect:/drive/list";
    }

    @RequestMapping(value = "/drive/delete/{id}", method = RequestMethod.GET)
    public String deletePost(@PathVariable("id") int id) {
        taxiDAO.deleteDrive(id);
        return "redirect:../list";
    }

}
