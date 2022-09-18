# spring-board
**기본적인 메인 화면**
![image](https://user-images.githubusercontent.com/59286004/190893560-2fa995d8-5001-4cb7-8498-16283933ff36.png)

스프링의 기본기에 충신한 게시판
기본 html과 css는 부트스트랩을 이용하여 구현

**타이틀 클릭시**
![image](https://user-images.githubusercontent.com/59286004/190893631-72a87508-b439-4d1b-bc67-4c0460c166a5.png)
게시글을 쓸 수 있고 아래에 댓글을 달 수 있는 창을 구현

**글 삭제시**
![image](https://user-images.githubusercontent.com/59286004/190893784-b5ef81df-eabd-4b8a-b769-4487a9e602df.png)
삭제가 완료되었다는 창을 준비했습니다.

***댓글을 달경우***
![image](https://user-images.githubusercontent.com/59286004/190893683-f5c1bd11-2e0c-4f05-abc4-219ef926b8ff.png)
알림이 나오고 확인을 누른 후
댓글을 보여지게 구현
![image](https://user-images.githubusercontent.com/59286004/190893689-ae77a34e-ed66-4ba7-b00c-86ed4618a0ac.png)

**에러사항**
![image](https://user-images.githubusercontent.com/59286004/190893848-2479a1ea-2eb8-420b-998a-391d8e654b4c.png)
댓글을 달고 글을 삭제할 경우 sql문제가 발생

![image](https://user-images.githubusercontent.com/59286004/190893904-9b62c2b3-def4-41f9-96cc-a799061ef91d.png)
제가 
ddl-auto=create-drop
ddl-auto옵션을 create-drop로 해놔서그런건가 싶었는데 
이건 해당 테이블이 있으면 삭제후 재생성이란 관점에서 봤을 때 아무 문제가 없는것 같아서 어디가 문제인지 해결중입니다.

찾아보니 
게시글을 삭제시킬 경우 게시글에 포함된 댓글을 먼저 삭제시켜야 된다는 것을 확인했다. 
게시글 삭제시 댓글을 참조 못하는데 존재하지 않는 FK를 가진다 한다. 

jpa에서는 CASCADE_REMOVE를 이용하여 매핑되어 있는 것을 끊어줘야한다.


***댓글 수정을 누른경우***
![image](https://user-images.githubusercontent.com/59286004/190893729-f6413ca7-526c-4bb3-9777-7c5269a6db92.png)
창을 보여지게 하여 정리를 할 수 있게하고 
![image](https://user-images.githubusercontent.com/59286004/190893742-cbd91a59-4c6a-489d-b518-a3616c9e2665.png)
수정확인을 누르면 다시 알림을 뜨게 했습니다.
***삭제시***
![image](https://user-images.githubusercontent.com/59286004/190893761-09a70956-847e-4fe4-bf46-714a36d91dc8.png)
삭제시 바로 삭제할 수 있게 하였습니다.

**DB와 연동하여 게시판 저장상태 확인**
![image](https://user-images.githubusercontent.com/59286004/190894192-22278bbd-87a9-4142-9bb7-dd5fb1d4a513.png)

DB연동시 에러 방생
![image](https://user-images.githubusercontent.com/59286004/190894324-ce7c2677-9f2d-48d5-b69f-91f738fb07a2.png)
![image](https://user-images.githubusercontent.com/59286004/190894562-3d76c3b0-a389-498a-a53b-fbd0b6e95fad.png)
DB에러가 아니라 8080포트를 사용을 계속하고 있어 발생한 에러 
포트를 죽이고 다시 키니 정상적으로 작동


***정상적으로 DB와 연동***
![image](https://user-images.githubusercontent.com/59286004/190894990-0decf4f8-6ee4-4455-bbe3-b8251ebe95d1.png)
![image](https://user-images.githubusercontent.com/59286004/190895009-aab43c27-ee22-4ad0-9dfa-18b44e2423e7.png)
정상적으로 쿼리문이 수행되는게 보입니다.
![image](https://user-images.githubusercontent.com/59286004/190895024-7f00d96a-f1ed-40ae-867e-16bd6522841c.png)



