package test;

import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import model.dao.*;
import model.entity.ItemEntity;


public class MarketTest {
    private static MarketDAO marketDao = new MarketDAO();

    public static void main(String[] args) throws SQLException {
		Scanner scanner = new Scanner(System.in);

        //테스트 할 것들 주석 없애고 테스트 해보세요!
   
        
     // 타입 상관없이 모든 글을 보여주기
//        List<Item> AllitemList = marketDao.findItemListAllType();
//        if (AllitemList != null) {
//            Iterator<Item> iter = AllitemList.iterator();
//
//            System.out.println(
//                    "post_id        title           type          content        image      reg_date   writer_id    cnt_like    detail      price   scrap");
//
//            System.out.println("---------------------------------------------------------------------------------------------------------------------------");
//            while (iter.hasNext()) {
//
//                Item allitems = iter.next();
//                System.out.println(allitems);
//
//            }
//        } else {
//            System.out.println("No posts found.");
//        }
        
        
// // 글 중에서 타입에 따라서 아이템 글 리스트을 보여주기
//        System.out.print("포스트타입을 입력하시오: ");
//        String type = scanner.next();
//        List<Item> itemList = marketDao.findItemListType(type);
//        // empList에 포함된 모든 emp 객체들의 필드 값을 출력
//
//        if (itemList != null) {
//            Iterator<Item> iter = itemList.iterator();
//
//            System.out.println(
//                    "post_id        title           type          content        image      reg_date   writer_id    cnt_like    detail      price   scrap");
//
//            System.out.println("----------------------------------------------------------------------------------------------------------------------------");
//            while (iter.hasNext()) {
//
//                Item items = iter.next();
//                System.out.println(items);
//
//            }
//        } else {
//            System.out.println("No posts found.");
//        }
//
        
     // 글 제목으로 select해서 상세 글 보이도록
        // 사진, 제목, 가격, 지역, 태그, 업로드 날짜 가져오기
//        System.out.print("포스트타입을 입력하시오: ");
//        String posttype = scanner.next();
//        System.out.println();
//        System.out.print("포스트제목을 입력하시오: ");
//        String posttitle = scanner.next();
//        System.out.println();
//
//        Item item = marketDao.findItemDetail(posttype, posttitle);
//
//        if (item != null) {
//            System.out.println("<글 제목>");
//            System.out.println("글 제목:" + posttitle);
//            System.out.println("글 타입:" + item.getType());
//            System.out.println("글 내용:" + item.getContent());
//            System.out.println("글 이미지:" + item.getImage());
//            System.out.println("글 생성일:" + item.getReg_date());
//            System.out.println("작성자 id:" + item.getWriter_id());
//            System.out.println("좋아요 수:" + item.getCnt_like());
//            System.out.println("스크랩 수:" + item.getScrap());
//            System.out.println("가격:" + item.getPrice());
//            System.out.println("선호 타입:" + item.getDetail());
//            System.out.println();
//        }
//        
		
		
        
        //타입 별 같은 성별에 해당하는 아이템 전체 리스트만 보여주기 user과 join >> 성별과 마켓인지 장터인지 사용자가 입력
        System.out.print("성별을 입력하시오: ");
        String gender = scanner.next();
        System.out.println();
        System.out.print("포스트타입을 입력하시오: ");
        String posttype = scanner.next();
        System.out.println();
        List<ItemEntity> itemList = marketDao.findItemListSameGender(gender,posttype);
     

      if (itemList != null) {
          Iterator<ItemEntity> iter = itemList.iterator();

          System.out.println(
                  "post_id        title           type          content        image      reg_date   writer_id    cnt_like    detail      price   scrap");

          System.out.println("----------------------------------------------------------------------------------------------------------------------------");
          while (iter.hasNext()) {

        	  ItemEntity items = iter.next();
              System.out.println(items);

          }
      } else {
          System.out.println("No posts found.");
      }

    }
}