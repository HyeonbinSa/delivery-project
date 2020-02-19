<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Modal -->
<style>
.modal-photo{
	background : aliceblue;
}
.modal-detail{
	text-align:center;
}
</style>
<div class="modal fade" id="menu-detail-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">메뉴 상세</h4>
      </div>
      <div class="modal-body">
      	<div class="modal-photo">
			사진 들어감
		</div>
		<div class="modal-detail">
			<div class="modal-detail-name">메뉴이름</div>
			<div class="modal-detail-component">메뉴 구성</div>
		</div>
		<div class="modal-price">가격 </div>
        <form>
          <div class="form-group">
            <label for="recipient-name" class="control-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">주문표 추가</button>
        <button type="button" class="btn btn-primary">주문하기</button>
      </div>
    </div>
  </div>
</div>