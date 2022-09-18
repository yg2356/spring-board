INSERT INTO article(id, title, content) VALUES (1, '안녕하세요', '반갑습니다');
INSERT INTO article(id, title, content) VALUES (2, '안녕히가세요', '즐거웠습니다');
INSERT INTO article(id, title, content) VALUES (3, '또만나요', '잘가고');

--article 더미 데이터
INSERT INTO article(id, title, content) VALUES (4, '인생게임?', '댓글');
INSERT INTO article(id, title, content) VALUES (5, '인생노래?', '댓글');
INSERT INTO article(id, title, content) VALUES (6, '취미는?', '댓글');

-- comment 더미 데이터
---- 4번 게시글의 댓글들
INSERT INTO comment(id, article_id, nickname, body) VALUES(1, 4, '박', '카트');
INSERT INTO comment(id, article_id, nickname, body) VALUES(2, 4, '김', '로아');
INSERT INTO comment(id, article_id, nickname, body) VALUES(3, 4, '최', '디아');
---- 5번 게시글의 댓글들
INSERT INTO comment(id, article_id, nickname, body) VALUES(4, 5, '이', '모놀로그');
INSERT INTO comment(id, article_id, nickname, body) VALUES(5, 5, '오', '다이너마이트');
INSERT INTO comment(id, article_id, nickname, body) VALUES(6, 5, '구', '나무');
---- 6번 게시글의 댓글들
INSERT INTO comment(id, article_id, nickname, body) VALUES(7, 6, '류', '야구');
INSERT INTO comment(id, article_id, nickname, body) VALUES(8, 6, '박', '유튜브');
INSERT INTO comment(id, article_id, nickname, body) VALUES(9, 6, '송', '독서');
