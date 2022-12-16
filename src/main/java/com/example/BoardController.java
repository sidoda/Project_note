package com.example;

import com.example.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
    @Autowired
    BoardServicelmpl boardService;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String boardList(Model model) {
        model.addAttribute("list", boardService.getBoardList());
        return "board/post";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost() {
        return "board/addpostform";
    }

    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPostOK(BoardVO vo) {
        if(boardService.insertBoard(vo) == 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공");
        return "redirect:/";
    }

    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("u", boardVO);
        return "board/editform";
    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOk(BoardVO vo) {
        if(boardService.updateBoard(vo) == 0) {
            System.out.println("데이터 수정 실패");
        }
        else {
            System.out.println("데이터 수정 성공");
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id) {
        if(boardService.deleteBoard(id) == 0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:/";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String searchPost(@PathVariable("search") String search, Model model) {
        model.addAttribute("list", boardService.getSearchBoardList(search));
        return "board/post";
    }

}
