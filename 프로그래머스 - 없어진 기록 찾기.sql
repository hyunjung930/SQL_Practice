-- 코드를 입력하세요
-- 보호소에 들어온 기록이 없는 동물의 이름, ID
SELECT A.ANIMAL_ID, A.NAME
-- 입양 간 기록은 있고(B) 보호소에 들어온 적 없는 동물(A) JOIN문 사용
FROM ANIMAL_OUTS A 
    LEFT JOIN ANIMAL_INS B 
    ON A.ANIMAL_ID=B.ANIMAL_ID
-- 보호소에 들어온 동물 테이블(B) 필드값이 비어있는 것 조회
WHERE B.ANIMAL_ID IS NULL
-- ID 순으로 정렬 
ORDER BY ANIMAL_ID ASC

