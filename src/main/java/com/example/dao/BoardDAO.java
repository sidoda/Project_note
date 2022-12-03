package com.example;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


public class BoardDAO {
    //Connection conn = null;
    //PreparedStatement stmt = null;
    //ResultSet rs = null;

    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    private final String BOARD_INSERT = "insert into P5_test (title, writer, content) values (?, ?, ?)";
    private final String BOARD_UPDATE = "update P5_test set title=?, writer=?, content=? where seq=?";
    private final String BOARD_DELETE = "delete from P5_test where seq=?";
    private final String BOARD_GET = "select * from P5_test where seq=?";
    private final  String BOARD_LIST = "select * from P5_test order by seq desc";

    public int insertBoard(BoardVO vo) {
        return template.update(BOARD_INSERT, new Object[]{vo.getTitle(), vo.getWriter(), vo.getContent()});
    }

    public int updateBoard(BoardVO vo) {
        return template.update(BOARD_UPDATE, new Object[]{vo.getTitle(), vo.getWriter(), vo.getContent(), vo.getSeq()});
    }

    public int deleteBoard(int id) {
        return template.update(BOARD_DELETE, new Object[]{id});
    }



    public BoardVO getBoard(int seq) {
        return template.queryForObject(BOARD_GET, new Object[]{seq}, new BeanPropertyRowMapper<BoardVO>(BoardVO.class));
    }



    public List<BoardVO> getBoardList() {
        return template.query(BOARD_LIST, new RowMapper<BoardVO>() {
            @Override
            public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                BoardVO data = new BoardVO();
                data.setSeq(rs.getInt("set"));
                data.setTitle(rs.getString("title"));
                data.setWriter(rs.getString("writer"));
                data.setContent(rs.getString("content"));
                return data;
            }
        });
    }

}
