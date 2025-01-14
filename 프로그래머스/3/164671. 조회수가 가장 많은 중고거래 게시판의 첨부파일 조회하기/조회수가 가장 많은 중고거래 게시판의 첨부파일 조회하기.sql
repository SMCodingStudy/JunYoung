# 테이블에서 조회수가 가장 높은 중고거래 게시물에 대한 첨부파일 경로를 조회
SELECT CONCAT('/home/grep/src/', A.BOARD_ID, '/', B.FILE_ID, B.FILE_NAME, B.FILE_EXT) AS FilePath
FROM USED_GOODS_BOARD AS A
LEFT OUTER JOIN USED_GOODS_FILE AS B
ON A.BOARD_ID = B.BOARD_ID
WHERE A.VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
ORDER BY A.VIEWS DESC