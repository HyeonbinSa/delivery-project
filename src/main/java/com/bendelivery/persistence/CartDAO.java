package com.bendelivery.persistence;

import java.util.List;

import com.bendelivery.domain.CartVO;

public interface CartDAO {
	/* 1. 장바구니 추가 create 
	 * 2. session 종료시 해당 session ID 내용 삭제
	 * 3. 수량변경 시 update
	 * 4. X 버튼 클릭시 해당 메뉴 주문표에서 삭제
	 * 5. 새로운 식당에서 추가시 (sessionID는 같은데 res_no가 다를 경우) 이전에 있던 주문 내역 삭제)
	 * 6. cart list 출력(해당 res_no와 sessionID)
	 * 7. 추가하려는 메뉴가 카트에 있는 지 확인 
	 * 8. 해당 menu_id 값과 session_id 값을 가진 메뉴 가지고오기(수량 추가를 위함)
	 * 9. 주문표에서 마이너스 버튼 눌렀을때 수량 수정
	 * 10. 주문표에서 플러스 버튼 눌렀을때 수량 수정
	 * 11. 다른 식당의 메뉴를 추가할 경우 기존에 있던 내용 삭제하기 위해 res_no 가져오기 
	 */
	public void create(CartVO vo)throws Exception;
	public void deleteById(String session_id)throws Exception;
	public void updateByQuan(CartVO vo)throws Exception;
	public void deleteByButton(CartVO vo)throws Exception;
	public void deleteByRes(CartVO vo)throws Exception;
	public List<CartVO> list(String session_id)throws Exception;
	public CartVO checkMenu(CartVO vo)throws Exception;
	public void updateMinus(CartVO vo)throws Exception;
	public void updatePlus(CartVO vo)throws Exception;
	public List<Integer> getRestuarantNo(String session_id)throws Exception;
	
}
