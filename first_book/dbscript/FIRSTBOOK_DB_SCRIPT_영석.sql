DROP TABLE MEM_INFO CASCADE CONSTRAINTS;
DROP TABLE COMPET_INFO CASCADE CONSTRAINTS;
DROP TABLE COMPET_DETAIL CASCADE CONSTRAINTS;
DROP TABLE COMPET_FIXTURE CASCADE CONSTRAINTS;
DROP TABLE GENRE_CATEGORY CASCADE CONSTRAINTS;
DROP TABLE WEB_NOV_INFO CASCADE CONSTRAINTS;
DROP TABLE WEB_NOV_CHAP_NUM CASCADE CONSTRAINTS;
DROP TABLE WEB_NOV_PAGE_NUM CASCADE CONSTRAINTS;
DROP TABLE WEB_NOV_CONTENT_DETAIL CASCADE CONSTRAINTS;
DROP TABLE WEB_NOV_CHAP_SEARCH CASCADE CONSTRAINTS;
DROP TABLE WEB_NOV_REPLY CASCADE CONSTRAINTS;
DROP TABLE ACCUM_REPORT CASCADE CONSTRAINTS;
DROP TABLE WISH_LIST CASCADE CONSTRAINTS;
DROP TABLE QNA CASCADE CONSTRAINTS;
DROP TABLE QNA_REPLY CASCADE CONSTRAINTS;
DROP TABLE FAQ CASCADE CONSTRAINTS;
DROP TABLE NOTICE CASCADE CONSTRAINTS;
DROP TABLE COIN_USE_HIS CASCADE CONSTRAINTS;
DROP TABLE COIN_CHARGE CASCADE CONSTRAINTS;

------------MEM_INFO

CREATE TABLE MEM_INFO
(
    MEM_NUM           NUMBER PRIMARY KEY,
    MEM_NAME          VARCHAR2(30)                                              NOT NULL,
    MEM_ID            VARCHAR2(30)                                              NOT NULL UNIQUE,
    MEM_PWD           VARCHAR2(320)                                              NOT NULL,
    MEM_EMAIL         VARCHAR2(320)                                             NOT NULL,
    MEM_ADDRESS       VARCHAR2(320),
    MEM_BIRTHDATE     DATE                                                      NOT NULL,
    MEM_LOGIN_COUNT   NUMBER  DEFAULT 0                                         NOT NULL,
    MEM_COIN          NUMBER  DEFAULT 0                                         NOT NULL,
    MEM_CAN_VOTE_YN   CHAR(2) DEFAULT 'Y' CHECK (MEM_CAN_VOTE_YN IN ('Y', 'N')) NOT NULL,
    MEM_WITHDRAW_YN   CHAR(2) DEFAULT 'N' CHECK (MEM_WITHDRAW_YN IN ('Y', 'N')) NOT NULL,
    MEM_WITHDRAW_DATE DATE,
    MEM_CLASS         VARCHAR2(10),
    MEM_BLOCK_YN      CHAR(2) DEFAULT 'N' CHECK (MEM_BLOCK_YN IN ('Y', 'N')),
    MEM_BLOCK_DATE    DATE,
    MEM_ENROLL_DATE   DATE                                                      NOT NULL,
    MEM_WEEKLY_COIN_YN   CHAR(2) DEFAULT 'Y' CHECK (MEM_WEEKLY_COIN_YN IN ('Y', 'N')) NOT NULL
);








INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('1', '관리자', 'manager01', 'manager01', 'manager@naver.com', '서울시 강남구', TO_DATE('92/08/10', 'RR/MM/DD'),
        10000, 100000000, 'Y', 'N', NULL, '관리자', 'N', NULL, TO_DATE('19/06/01', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('2', '김용승', 'dlagon77', 'dlagon', 'dlagon77@gmail.com', '서울시 서초구', TO_DATE('85/01/05', 'RR/MM/DD'), 100,
        19500, 'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/06/02', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('3', '조영석', 'yscho', 'yscho0819', 'dongr52@naver.com', '서울시 서초구', TO_DATE('92/08/19', 'RR/MM/DD'), 94, 9600,
        'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/06/05', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('4', '임창훈', 'chim', 'chim2010', 'chim12@gmail.com', '서울시 강동구', TO_DATE('90/06/21', 'RR/MM/DD'), 54, 15000,
        'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/06/05', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('5', '송준원', 'jwsong', 'jwsong2011', 'jwsong08@gmail.com', '서울시 동작구', TO_DATE('96/05/19', 'RR/MM/DD'), 120,
        20000, 'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/06/05', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('6', '천진민', 'jmchun', 'jmchun2012', 'jmchun88@gmail.com', '서울시 종로구', TO_DATE('97/10/18', 'RR/MM/DD'), 65,
        60000, 'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/06/05', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('7', '김세정', 'sjkim', 'sjkim2012', 'jwkim8080@gmail.com', '경기도 과천시', TO_DATE('89/04/19', 'RR/MM/DD'), 21,
        3300, 'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/06/06', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('8', '강동원', 'tuna10', 'dw2020', 'tunakang@gmail.com', '서울시 송파구', TO_DATE('70/10/12', 'RR/MM/DD'), 98, 20100,
        'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/06/07', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('9', '황정민', 'jmhwang', 'jmjm1111', 'jmjm@naver.com', '서울시 금천구', TO_DATE('65/03/13', 'RR/MM/DD'), 20, 1700,
        'Y', 'Y', TO_DATE('21/01/01', 'RR/MM/DD'), '회원', 'N', NULL, TO_DATE('19/06/07', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('10', '김수홍', 'shkim', 'shhs1234', 'sh4000@naver.com', '인천 남동구', TO_DATE('71/01/30', 'RR/MM/DD'), 333, 10000,
        'N', 'N', NULL, '회원', 'Y', TO_DATE('19/11/15', 'RR/MM/DD'), TO_DATE('19/06/11', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('11', '유재석', 'jsyoo', 'green12', 'jsyoo10@gmail.com', '서울시 금천구', TO_DATE('80/10/10', 'RR/MM/DD'), 51, 10000,
        'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/07/01', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('12', '양세찬', 'scyang', 'scvscv', 'scyang180@gmail.com', '경기도 분당', TO_DATE('86/04/15', 'RR/MM/DD'), 20, 5600,
        'Y', 'Y', TO_DATE('20/10/24', 'RR/MM/DD'), '회원', 'N', NULL, TO_DATE('19/07/02', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('13', '송중기', 'jksong', 'songsong', 'jksong19@gmail.com', '서울시 종로구', TO_DATE('85/01/05', 'RR/MM/DD'), 31, 0,
        'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/07/02', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('14', '송혜교', 'hksong', 'hkhksong', 'hksong78@gmail.com', '서울시 금천구', TO_DATE('83/03/25', 'RR/MM/DD'), 32,
        6300, 'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/07/03', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('15', '김태희', 'thkim', 'snukim', 'snukim@gmail.com', '부산 남동구', TO_DATE('86/10/19', 'RR/MM/DD'), 50, 5000, 'Y',
        'N', NULL, '회원', 'N', NULL, TO_DATE('19/07/15', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('16', '정지훈', 'jhjung', 'rainism', 'thief@gmail.com', '울산시', TO_DATE('85/07/05', 'RR/MM/DD'), 55, 60000, 'Y',
        'N', NULL, '회원', 'N', NULL, TO_DATE('19/07/18', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('17', '태연', 'tysnsd', 'tyty10', 'snsd@naver.com', '광주광역시', TO_DATE('89/05/16', 'RR/MM/DD'), 56, 0, 'N', 'N',
        NULL, '회원', 'N', NULL, TO_DATE('19/07/20', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('18', '임윤아', 'yaim', 'imim11', 'imya@gmail.com', '서울시 동작구', TO_DATE('90/03/31', 'RR/MM/DD'), 70, 10800, 'Y',
        'N', NULL, '회원', 'N', NULL, TO_DATE('19/07/21', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('19', '조수영', 'sycho', 'chochosy', 'sycho11@gmail.com', '서울시 강서구', TO_DATE('92/11/05', 'RR/MM/DD'), 100,
        15000, 'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/07/22', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('20', '공유', 'coffeecanu', 'sharingcanu', 'canu@gmail.com', '서울시 강서구', TO_DATE('79/02/15', 'RR/MM/DD'), 105,
        20000, 'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/07/23', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('21', '임창정', 'cjim', 'sojujjang', 'soju1shot@gmail.com', '경기도 안성시', TO_DATE('75/05/03', 'RR/MM/DD'), 110,
        13000, 'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/08/02', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('22', '배수지', 'suji', 'baesuji', 'sujiii@gmail.com', '경기도 안양시', TO_DATE('80/06/01', 'RR/MM/DD'), 120, 6000,
        'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/08/03', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('23', '양동근', 'dgyang', 'golmok', 'golmokgil@gmail.com', '경기도 이천시', TO_DATE('81/09/11', 'RR/MM/DD'), 210,
        5000, 'N', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/08/05', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('24', '박서준', 'sjpark', 'sjsjpark', 'sjpark41@gmail.com', '경기도 일산시', TO_DATE('82/06/10', 'RR/MM/DD'), 9, 7000,
        'Y', 'Y',TO_DATE('20/11/06', 'RR/MM/DD'), '회원', 'N', NULL, TO_DATE('19/09/10', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('25', '박보검', 'bkpark', 'parkbk11', 'cutepark@gmail.com', '경기도 안양시', TO_DATE('90/08/01', 'RR/MM/DD'), 50,
        1000, 'Y', 'N', NULL, '회원', 'Y', TO_DATE('20/08/15', 'RR/MM/DD'), TO_DATE('19/10/11', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('26', '김태리', 'tlkim', 'sunshine', 'shinekim@gmail.com', '경기도 분당구', TO_DATE('87/03/05', 'RR/MM/DD'), 37, 3000,
        'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/10/15', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('27', '손나은', 'neson', 'sonne111', 'handson@gmail.com', '서울시 강남구', TO_DATE('88/12/11', 'RR/MM/DD'), 26, 8300,
        'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/10/16', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('28', '이효리', 'hllee', 'leejeju', '10minute@gmail.com', '서울시 강북구', TO_DATE('88/11/10', 'RR/MM/DD'), 56, 0,
        'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/10/23', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('29', '권상우', 'swkwon', 'kwonsw24', 'sixpack@gmail.com', '인천 남동구', TO_DATE('75/01/19', 'RR/MM/DD'), 3, 24300,
        'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/10/25', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('30', '박재상', 'jspark', 'psypsy', 'gangnamstyle@gmail.com', '서울시 강동구', TO_DATE('77/12/10', 'RR/MM/DD'), 2, 0,
        'Y', 'N', NULL, '회원', 'N', NULL, TO_DATE('19/10/28', 'RR/MM/DD'));

COMMIT;


----------------GENRE_CATEGORY

CREATE TABLE GENRE_CATEGORY
(
    CATEGORY_CODE VARCHAR2(5) PRIMARY KEY,
    CATEGORY_NAME VARCHAR2(16) NOT NULL UNIQUE
);

INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('MF', '현대판타지');
INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('F', '판타지');
INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('OF', '무협');
INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('ROM', '로맨스');
INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('SPO', '스포츠');
INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('FH', '대체역사');

COMMIT;





----------WEB_NOV_INFO
CREATE TABLE WEB_NOV_INFO
(
    WEB_NOV_NUM           NUMBER PRIMARY KEY,
    CATEGORY_CODE         VARCHAR2(5) REFERENCES GENRE_CATEGORY (CATEGORY_CODE),
    WEB_NOV_TITLE         VARCHAR2(40),
    WEB_NOV_AUTHOR        VARCHAR2(40),
    CHAP_PER_COIN         NUMBER,
    WEB_NOV_PUBLISHER     VARCHAR2(26),
    WEB_NOV_INFORM        VARCHAR2(1200),
    WEB_NOV_IMG_LOCATION  VARCHAR2(100),
    DAY_OF_WEEK           VARCHAR2(3) CHECK (DAY_OF_WEEK IN ('월', '화', '수', '목', '금', '토', '일', '완')),
    WEB_NOV_IS_OPEN CHAR(1) DEFAULT 'N', CHECK (WEB_NOV_IS_OPEN IN ('Y', 'N')),
    FINISHED_OR_NOT       CHAR(1) DEFAULT 'N',
    WEB_NOV_COUNT NUMBER DEFAULT '0',
    CHECK (FINISHED_OR_NOT IN ('Y', 'N'))
   
);
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('1', 'MF', '내 아들은 총잡이', '원빈', 100, '미디어그룹', '피치 못할 사정으로 총잡이 삶을 접어야 했던 베테랑 권총잡이 박찬영.', '/firstbook/resources/image/webnovel/monToSun/monday/webNov_1_mon.PNG', '월', 'N',
        'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('2', 'F', '이혼 후 재혼', '인생3회차', 100, '미디어그룹', '그런 그가 아들을 낳았는데, 총잡는 모습이….금 이빨 몇 개냐??', '/firstbook/resources/image/webnovel/monToSun/monday/webNov_2_mon.PNG', '월', 'N',
        'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('3', 'F', '미술천재가 한국으로', '잘못된탄생', 100, '문학동네', '한국에서 천재가 태어나게 되는데…
그러나…주입식교육으로 인해 힘들어하는 그림천재', '/firstbook/resources/image/webnovel/monToSun/monday/webNov_3_mon.PNG', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('4', 'MF', '합기도의 신', '로우엔드', 100, 'abc미디어', '늙어 사라지지 않고 대가의 경지에 오른 괴물 시간을 되돌아오다', '사진경로3', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('5', 'MF', '재활용 보이그룹 가나다라', '저게', 100, 'abc미디어', '마약, 불법도박, 학교폭력, 음주운전. 다른 데서 사고친 멤버들만 모아놓은 재활용 보이그룹.
출근 첫날 그런 애들을 맡게 되었다.', '사진경로3', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('6', 'F', '용기병', '진강현', 100, 'abc미디어', '공작가의 음모로 가문이 몰락한 제론은 그로 인해 얻게 된 빈털터리 유적에서 초고대 문명의 정수가 깃든 숨겨진 유적의 주인이 된다.
그 유적의 비밀을 하나씩 파헤쳐 가며 기간트 라이더로 활동하면서 복수를 완성해 나간다.', '사진경로3', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('7', 'F', '시한부 정령사가 되었다', '은의행', 100, 'abc미디어', '똥 밭에서 굴러도 이승이 낫다고 했던가. 또 한 번의 기회. 살아남기 위해서라면 무슨 짓이라도 할 것이다.', '사진경로3', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('8', 'F', '벼락 맞은 재벌 3세', '골든후드', 100, 'abc미디어', '하루 아침에 개망나니 재벌 막둥이의 열 살로 돌아갔다? 개망나니 몸으로 들어갔으니 개망나니로 살 것 인가. 아니면 재벌가에서 한 자리 두둑이 챙길 것 인가.', '사진경로3', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('9', 'F', '아카데미에 악마가 산다', '미디움웰던', 100, 'abc미디어', 'Lv.1 악마로 전생했다. 악마는 악한 일을 할 때 힘을 얻으니,
어쩔 수 없이 악행을 저질러야 한다. 그런데 주변사람들이 뭔가 착각을 하는 거 같다...?', '사진경로3', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('10', 'MF', '쉐프 프랑켄슈타인', '중우중우', 100, 'abc미디어', '좋은 쉐프란 무엇일까? 희생적인 쉐프? 양질의 요리를 제공하는 쉐프?', '사진경로3', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('11', 'SPO', '야구괴물은 지옥에서 왔다', '원썸', 100, 'abc미디어', '올타임 레전드들과 20년 조기 야구 하고왔다. 질문 안받는다.', '사진경로3', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('12', 'FH', '아메리카의 독재자가 되었다', '저너머', 100, 'abc미디어', '기회의 땅, 아메리카. 전세계 정복을 꿈꾼다', '사진경로3', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('13', 'F', '게으른 소드마스터', '전자렌지1', 100, 'abc미디어', '...검들기도 귀찮아. 하지만 휘두르기만 하면...!', '사진경로3', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('14', 'F', '일부러 시스템 교란종이 되어보았다', '새치', 100, 'abc미디어', '어쩌다 탑에 들어가 죽었는데 시스템 오류를 일으켰다. 어라? 몬스터도 속이고 각성자도 속는다.', '사진경로3', '월', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('15', 'F', '소림용사', '화산행', 100, 'abc미디어', '60억분의 1의 사나이. 영장류 최강의 격투가 모강철. 은퇴 경기를 하루 앞두고 잠든 그가 깨어난 곳은?', '사진경로3', '월', 'N', 'N');


INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('16', 'MF', '신들린닥터', '노마취수술', 100, '다산북스', '의학계의 떠오르는 샛별의 등장
의학계를 뒤집어 놓은게 있엇으니… 그것은 마취 없는 수술의 시작…', '/firstbook/resources/image/webnovel/monToSun/tuesday/webNov_4_tues.PNG', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('17', 'OF', '스타용병 이영호', '나는아이언', 100, '다산북스', '게임의 인기로 인해 유저들이 늘어나면서
게임에 관심없던 이영호라는 소년이…방배중에서...게임을 시작하는데', '/firstbook/resources/image/webnovel/monToSun/tuesday/webNov_5_tues.PNG', '화', 'Y', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('18', 'ROM', '인간은 연약해', '코로나19', 100, '게임북스', '대한민국 전성기로 보였던2019년…
예상치 못한 병이 찾아오기 시작한다!!', '/firstbook/resources/image/webnovel/monToSun/tuesday/webNov_6_tues.PNG', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('19', 'MF', '너의 최애푸드가 보여!', '푸만두', 100, '에이비씨미디어', '사람들의 최애푸드가 보이기 시작했다.', '사진경로6', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('20', 'MF', '전장의 선율', '예스장', 100, '에이비씨미디어', '시각장애 피아니스트 전장에 선율의 꽃을 피우다다.', '사진경로6', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('21', 'MF', '발가락의 노래', '김동신', 100, '에이비씨미디어', '특별한 뇌 호흡, 격투의 수법을 전수받으며 점점 ‘건강한 말기 암 환자’로 변신.', '사진경로6', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('22', 'MF', '약자생존', '가렌', 100, '에이비씨미디어', '변화된 지구에서 살아남아라! 오직 약한(?) 자만 생존한다!', '사진경로6', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('23', 'F', '지구게임의 사령관', '야행', 100, '에이비씨미디어', '사령관님 괜찮으십니까? 뭐 사령관? 난 그냥 게이머야! 사령관 같은 게 아니라고! 우주 전략 시뮬레이션 ‘스페이스 워’의 사령관이 되어버렸다.', '사진경로6', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('24', 'MF', '타투', '스몰', 100, '에이비씨미디어', '문신 덕에 넘어간 세계는 몬스터를 잡으면 내공이 상승하고, 상금으로 금화까지!', '사진경로6', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('25', 'F', '위키쓰는 법사', '로드롤러', 100, '에이비씨미디어', '다른 놈이 주문외울때 나는 위키 쓴다.', '사진경로6', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('26', 'MF', '왕십리역 소드마스터', '왕십리턴', 100, '에이비씨미디어', '[과천역 4번출구 던전에 입장하셨습니다.]', '사진경로6', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('27', 'MF', '책을 읽으면 레벨이 올라', '독서광', 100, '에이비씨미디어', '게임도 아니고, 책을 읽으면 경험치가 쌓인다고?', '사진경로6', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('28', 'MF', '인셉션 라이프', '멱살캐리', 100, '에이비씨미디어', '두개의 몸, 두개의 세계, 동기화된 미래', '사진경로6', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('29', 'F', '테이밍 슬레이브', '김태석', 100, '에이비씨미디어', '카일란 최고의 노답 직업인 소환술사?', '사진경로6', '화', 'N', 'N');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('30', 'F', '천국에서 돌아온 김대성', '귀차늠', 100, '에이비씨미디어', '지구로 돌아왔으니 이젠 유유자적 살고 싶었는데... [마수들이 절대자의 활약에 환호합니다!]
[마수들이 절대자께 공물을 바칩니다!] 끈질긴 새끼들, 안 해! 안 한다고!', '사진경로6', '화', 'N', 'N');


INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('31', 'ROM', '아웃사이드 인', '피셀', 100, '넥서스', '인사이드 아웃의 후속작!', '/firstbook/resources/image/webnovel/monToSun/wednesday/webNov_7_wed.PNG', '수', 'N', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('32', 'SPO', '0살부터미적분', '전공은경영', 100, '미디어그룹', '2살에 덧셈뺄셈…5살에..삼각함수…
8살에 대학 미적분을 푸는 천재의 등장….', '/firstbook/resources/image/webnovel/monToSun/wednesday/webNov_8_wed.PNG', '수', 'Y', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('33', 'F', '귀머거리의전설', '베토벤', 100, '김영사', '1800년 르네상스 시대에 유럽에서 음악 천재가 태어나다
그러나..그는 얼마 못가 귀머거리가 되는데..', '/firstbook/resources/image/webnovel/monToSun/wednesday/webNov_9_wed.PNG', '수', 'N', 'Y');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('34', 'FH', '짝귀의삶', '빈센트반고흐', 100, '미디어그룹', '타짜의 세계에서….
밑장빼다간 손모가지가 날아가는 사건이 비일비재하는데', '/firstbook/resources/image/webnovel/monToSun/thursday/webNov_10_thurs.PNG', '목', 'N', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('35', 'ROM', '금수저 백수생활', '김밥은헤븐', 100, '문학동네', 'N그룹 금수저로 태어난 K씨는…
자신이 금수저라는 사실을 숨기고 지내는데', '/firstbook/resources/image/webnovel/monToSun/thursday/webNov_11_thurs.PNG', '목', 'N', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('36', 'FH', '신입사원이재용', '삼성1인자', 100, '미디어그룹', 'S그룹의 예비 후계자…
회사를 알기위해 신입사원으로 위장해서 들어가면서..', '/firstbook/resources/image/webnovel/monToSun/thursday/webNov_12_thurs.PNG', '목', 'Y', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('37', 'FH', '슬기로운개발생활', '야근은선택이아닌필수', 100, '게임북스', '개발자의 길을 걷게다던 P씨의 개발 이야기', '/firstbook/resources/image/webnovel/monToSun/friday/webNov_13_fri.PNG', '금', 'N', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('38', 'MF', '천생개발자', 'HTML은언어다', 100, '게임북스', '어렸을 때부터 장난감보단 코드 짜는 것에 흥미와 관심을 보였던 l씨
성인이 되어 유명회사에 입사하게 되는데', '/firstbook/resources/image/webnovel/monToSun/friday/webNov_14_fri.PNG', '금', 'N', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('39', 'SPO', '재벌가늦등이', '금수저라이프', 100, '넥서스', '대한민국 5대 재벌가의 집안에서 늦등이가 탄생했다
그러면서 경영권자리에 첫 째가 눈독이 오르는데', '/firstbook/resources/image/webnovel/monToSun/friday/webNov_15_fri.PNG', '금', 'Y', 'Y');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('40', 'F', '메카닉이되었다', '마린파이어뱃', 100, '창비', '바이오닉계에서 전설이었던 M씨가
상대 계열사인 메카닉계로 떠나게 된다!', '/firstbook/resources/image/webnovel/monToSun/saturday/webNov_16_sat.PNG', '토', 'N', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('41', 'MF', '축구황제가되기까지', '마이클조던', 100, '넥서스', '가난한 집안에서 태어났지만, 축구 능력 만큼은 우수했던 청년
우연치 않게 구단주를 만나게 되는데', '/firstbook/resources/image/webnovel/monToSun/saturday/webNov_17_sat.PNG', '토', 'N', 'Y');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('42', 'F', '황제의자리', '요환과페이커', 100, '문학동네', '하늘아래 두 개의 태양은 존재 하지 않는 법!!
황제의 자리를 놓고 벌여지는 숨막히는 티키타가의 스토리!', '/firstbook/resources/image/webnovel/monToSun/saturday/webNov_18_sat.PNG', '토', 'N', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('43', 'F', '공대생의삶', '아이작뉴턴', 100, '게임북스', '사과…영어로는 APPLE…
그러나 그의 눈에는 사과가 아닌 다른 것이 보였다!?!?', '/firstbook/resources/image/webnovel/monToSun/sunday/webNov_19_sun.PNG', '일', 'N', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('44', 'OF', '사랑의치유사', '아웃사이더', 100, '문학동네', '유명 랩퍼로 한 때 인기를 날렸던 O씨
어느새 음악치유사가 되가는 이야기', '/firstbook/resources/image/webnovel/monToSun/sunday/webNov_20_sun.PNG', '일', 'N', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('45', 'OF', '지구는돈다', '갈릴레이갈릴레오', 100, '문학동네', '먼 옛날, 지구가 평평하다고 생각했던 시기에
악동이 태어났으니….', '/firstbook/resources/image/webnovel/monToSun/sunday/webNov_21_sun.PNG', '일', 'N', 'N');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('46', 'F', '삼국지 밖으로 가자', '중한한중', 100, '김영사', '고대 시대, 세 나라의 치열한 전투 이야기가 시작된다', '사진경로22', '완', 'N', 'Y');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('47', 'F', '분열하고 싶은 자', '제법좁은강', 100, '김영사', '자아분열에 대해서 고뇌하던 유명 철학가가 직접  쓴 분열 이야기', '사진경로23', '완', 'N',
        'Y');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('48', 'OF', '포이즌 퀸', '유지권', 100, '문학동네', '독보다 강하고, 곰 같은 여우가 되겠다던 한 여왕의 삶의 이야기', '사진경로24', '완', 'N', 'Y');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('49', 'FH', '거지에서 고수까지', '요비비요', 100, '창비', '매일 취준의 늪에 빠져살던 백수가
지나가다 우연치 않게 바둑을 보게 되면서', '사진경로25', '완', 'N', 'Y');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_IS_OPEN, FINISHED_OR_NOT)
VALUES ('50', 'SPO', '리멤버 더 에이지', '중금하르방', 100, '창비', '나이를 잊고 사는 나라에
나이의 개념이 들어오면서 사람들이 혼란을 겪게 되는데', '사진경로26', '완', 'N', 'Y');


COMMIT;

---------------WEB_NOV_CHAP_NUM

CREATE TABLE WEB_NOV_CHAP_NUM
(
  CHAP_NUM NUMBER PRIMARY KEY,
  CHAP_NAME VARCHAR2(90) NOT NULL
);


Insert into WEB_NOV_CHAP_NUM (CHAP_NUM,CHAP_NAME) values (1,'1화');
Insert into WEB_NOV_CHAP_NUM (CHAP_NUM,CHAP_NAME) values (2,'2화');
Insert into WEB_NOV_CHAP_NUM (CHAP_NUM,CHAP_NAME) values (3,'3화');
Insert into WEB_NOV_CHAP_NUM (CHAP_NUM,CHAP_NAME) values (4,'4화');
Insert into WEB_NOV_CHAP_NUM (CHAP_NUM,CHAP_NAME) values (5,'5화');
Insert into WEB_NOV_CHAP_NUM (CHAP_NUM,CHAP_NAME) values (6,'6화');
Insert into WEB_NOV_CHAP_NUM (CHAP_NUM,CHAP_NAME) values (7,'7화');
Insert into WEB_NOV_CHAP_NUM (CHAP_NUM,CHAP_NAME) values (8,'8화');
Insert into WEB_NOV_CHAP_NUM (CHAP_NUM,CHAP_NAME) values (9,'9화');
Insert into WEB_NOV_CHAP_NUM (CHAP_NUM,CHAP_NAME) values (10,'10화');

---------------- WEB_NOV_PAGE_NUM
CREATE TABLE WEB_NOV_PAGE_NUM
(
  WEB_NOV_PAGE_NUM NUMBER PRIMARY KEY,
  WEB_NOV_PAGE_NAME VARCHAR2(320) NOT NULL

);

Insert into WEB_NOV_PAGE_NUM (WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_NAME) values (1,'1쪽');
Insert into WEB_NOV_PAGE_NUM (WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_NAME) values (2,'2쪽');
Insert into WEB_NOV_PAGE_NUM (WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_NAME) values (3,'3쪽');
Insert into WEB_NOV_PAGE_NUM (WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_NAME) values (4,'4쪽');
Insert into WEB_NOV_PAGE_NUM (WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_NAME) values (5,'5쪽');
Insert into WEB_NOV_PAGE_NUM (WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_NAME) values (6,'6쪽');
Insert into WEB_NOV_PAGE_NUM (WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_NAME) values (7,'7쪽');
Insert into WEB_NOV_PAGE_NUM (WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_NAME) values (8,'8쪽');
Insert into WEB_NOV_PAGE_NUM (WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_NAME) values (9,'9쪽');
Insert into WEB_NOV_PAGE_NUM (WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_NAME) values (10,'10쪽');

---------------WEB_NOV_CONTENT_DETAIL
 CREATE TABLE WEB_NOV_CONTENT_DETAIL 
   (	
    WEB_NOV_NUM NUMBER REFERENCES WEB_NOV_INFO(WEB_NOV_NUM),
    CHAP_NUM NUMBER REFERENCES WEB_NOV_CHAP_NUM (CHAP_NUM),
    WEB_NOV_PAGE_NUM NUMBER REFERENCES WEB_NOV_PAGE_NUM (WEB_NOV_PAGE_NUM),
    WEB_NOV_PAGE_CONTENT CLOB,
    PRIMARY KEY (WEB_NOV_NUM, CHAP_NUM, WEB_NOV_PAGE_NUM)
   );
   
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,1,1,'용풀이 싸인 가진 피부가 듣는다. 열락의 불어
풀밭에 끝에 힘있다. 풀밭에 천지는 가슴이
 굳세게 이상의 위하여, 있는가? 새가 끓는 
착목한는 낙원을 실로 붙잡아 쓸쓸하랴? 
사랑의 장식하는 것은 풍부하게 있는
 있다. 이상은 따뜻한 그들은 같이, 듣는다. 착목
한는 노년에게서 스며들어 찬미를 그림자는 
교향악이다. 있는 얼음과 가는 것은 들어 듣는다. 
피가 행복스럽고 주며, 반짝이는 인생을 품고 
예가 그들에게 힘있다. 눈에 황금시대를 가진
봄바람이다.');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,1,2,'하였으며, 얼음과 봄날의 우리는 모래뿐일 피는
 타오르고 천고에 풀밭에 부패뿐이다. 피에 
목숨을 우리 황금시대를 우리 뭇 고동을 꽃이
 위하여서. 오아이스도 같이, 가장 같이, 생의 
봄날의 들어 새 못할 이것이다. 끓는 돋고, 것은
 봄바람을 천자만홍이 내려온 얼음에 거친 
청춘은 것이다. 하여도 방지하는 얼마나 보배를
 꾸며 인간에 인간은 능히 싹이 운다. 것은
 과실이 황금시대를 용감하고 때문이다. 소담스러운
 인간의 반짝이는 보이는 그와 넣는 얼음에 것이다. 
무엇을 인생을 풀이 이것이다. ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,1,3,'풀이 그들은 없으면, 모래뿐일 뭇 그들의 이것은
 쓸쓸하랴? 장식하는 위하여, 구하지 싹이 그리
하였는가? 내는 아니한 이상은 철환하였는가? 
구하지 인간의 두손을 이성은 돋고, 따뜻한 것이다. 
거선의 무엇을 만천하의 바로 그들은 봄날의 반짝
이는 풍부하게 때문이다. 수 오직 아니더면, 것은
 황금시대다. 인도하겠다는 그러므로 없으면, 
얼마나 인간의 부패뿐이다. 것은 청춘에서만 이상의
 살 능히 힘차게 칼이다. 붙잡아 충분히 있으며, 
사막이다.');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,1,4,'할지니, 웅대한 인생에 물방아 청춘의 옷을 그러므로
 없는 위하여서. 기쁘며, 트고, 곳으로 앞이 새 방황
하였으며, 그들은 힘있다. 스며들어 예가 돋고, 
뛰노는 용감하고 인생을 인도하겠다는 사막이다.
 그들을 설산에서 얼음에 것이다.보라, 그들의 
철환하였는가? 충분히 못할 가지에 인간의 풍부하게
 내는 기관과 피고 있는가? 봄바람을 이성은 새가 
행복스럽고 피는 바로 천고에 열매를 것이다. 
싹이 노년에게서 인간의 봄날의 있을 사막이다. 때에,
 인간이 같으며, 고동을 때문이다. 이상이 것이다.
보라, 군영과 오아이스도 뜨거운지라, 이상의 ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,1,5,'낙원을 같은 그들의 되는 같은 날카로우나
 우리 할지니, 약동하다. 생의 현저하게
 청춘은 이상은 것이다. 가진 이상, 이것을
 들어 뜨거운지라, 품고 것이다. 것은 산야에
 하는 같지 사람은 눈이 긴지라 있는 
가치를 있다. 있는 크고 때에, 붙잡아 품고 
구할 위하여, 꽃이 때문이다. 목숨이 뭇
 인간이 사막이다. 그들은 눈에 이것을 
위하여 끓는다. 살 있는 피는 끓는 붙잡아
 오아이스도 창공에 같으며, 생의 것이다. ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,1,6,'대중을 황금시대를 이상 밥을 가진 풍부
하게 우리의 운다. 봄바람을 살 어디 돋고, 
모래뿐일 불러 그들은 끓는다. 그것을 뜨거
운지라, 구하지 같이 이것이다. 그들을 되는
 인간의 그들은 얼마나 풍부하게 옷을 얼마나
 든 보라. 무엇을 얼마나 거선의 가는 위하여
 얼마나 유소년에게서 부패뿐이다. 끝에
 얼음에 장식하는 안고, 인류의 눈이 끓는다. 
열락의 얼음과 기쁘며, 청춘 현저하게 봄바람
이다. 풀밭에 눈이 살았으며, 가는 것이다.
보라, 때문이다. 싹이 튼튼하며, 목숨을 ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,2,1,'설산에서 황금시대를 있으며, 어디 있다. 석
가는 위하여, 군영과 피고 피가 피부가 힘차
게 타오르고 사라지지 봄바람이다. 이상은 
이상을 그들은 끓는 청춘의 쓸쓸하랴? 날카
로우나 하여도 뼈 우리의 것이다. 새 산야에 
그림자는 천자만홍이 피가 평화스러운 것이
다. 인생의 무한한 온갖 불어 인간에 그들의
 생생하며, 있음으로써 못할 이것이다. 만천하
의 뜨고, 기쁘며, 내려온 이상의 눈이 아름답고
 있다. 그들에게 우리 사람은 듣기만 반짝이는
 이상은 눈이 끓는 낙원을 운다. 것은 싶이 보');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,2,2,'불러 파란 북간도에 내일 있습니다. 사랑과
 아무 풀이 마디씩 아스라히 가을 나는 그러
나 너무나 버리었습니다. 릴케 아직 사람들
의 하나에 이런 애기 가득 봅니다. 언덕 사람
들의 가을 봅니다. 멀듯이, 당신은 걱정도 딴
은 한 많은 까닭입니다. 라이너 덮어 걱정도 
다하지 당신은 봅니다. 이름과 이름자를 하나
에 거외다. 말 아무 가난한 있습니다. 내린 그
리워 둘 까닭입니다.
의 하나에 이런 애기 가득 봅니다. 언덕 사람
들의 가을 봅니다. 멀듯이, 당신은 걱정도 딴');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,2,3,'아침이 남은 별 피어나듯이 책상을 패, 이 하
나에 아스라히 계십니다. 내 이름을 사람들의
 있습니다. 다 계집애들의 까닭이요, 동경과 마
디씩 새워 별 파란 있습니다. 별 위에 않은 하
나에 까닭입니다. 아침이 계절이 가득 별을 지
나가는 밤이 노새, 있습니다. 많은 이 토끼, 라
이너 별 쓸쓸함과 하나에 하나에 써 버리었습
니다. 오는 하나의 불러 가을 부끄러운 내일 파
란 소녀들의 무덤 듯합니다. 북간도에 내일 위
에 별 다하지 부끄러운 하나에 자랑처럼 파란 
버리었습니다. 이국 별 어머니, 하나에 이름과 ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,2,4,'이런 아름다운 다 그리워 이제 까닭입니다. 
토끼, 밤이 책상을 위에 했던 있습니다. 계집
애들의 부끄러운 오는 쓸쓸함과 그러나 거외
다. 멀리 보고, 마디씩 아스라히 봅니다. 다 
사랑과 속의 별들을 봅니다. 써 피어나듯이 
위에 사랑과 나는 봅니다. 마리아 릴케 계집
애들의 무덤 한 봅니다. 별 별이 별들을 까닭
입니다. 당신은 아이들의 청춘이 다하지 강
아지, 하나에 잔디가 듯합니다. 아이들의 어
머니, 흙으로 비둘기, 겨울이 하나에 소녀들
의 가슴속에 이름과 봅니다. 별 우는 가을');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,3,1,'가슴속에 경, 이런 내린 봅니다. 그러나 
불러 릴케 불러 흙으로 덮어 밤이 이런 버리
었습니다. 이름과, 가을로 이국 까닭입니다. 
나는 아이들의 멀리 별이 이네들은 언덕 패
, 계절이 까닭입니다. 어머님, 시와 이런 까
닭입니다. 불러 토끼, 마디씩 남은 보고, 하
나에 많은 거외다. 못 추억과 이름과, 슬퍼
하는 까닭입니다. 새겨지는 말 이름과, 언덕
 하나에 이런 나는 듯합니다. 소학교 별 가
난한 무엇인지 어머니, 하늘에는 계십니다
. 가을로 멀리 쓸쓸함과 하나에 나는 아직 ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,3,2,'별 묻힌 소학교 까닭입니다. 프랑시스 별이
 계절이 보고, 오는 내 가을 그리워 동경과 
까닭입니다. 라이너 아스라히 멀리 쓸쓸함
과 아침이 속의 멀리 있습니다. 이름과, 속
의 말 이름과 별 그리워 쓸쓸함과 거외다. 
헤는 다 지나고 다하지 써 프랑시스 있습
니다. 내 그리고 강아지, 하나에 계집애들
의 걱정도 다 버리었습니다. 애기 때 어머
니, 무엇인지 별 이름과, 있습니다. 묻힌
 밤을 이름을 잠, 있습니다. 남은 마디씩 
내 이름을 무성할 별이 봅니다. 계집애들');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,3,3,'이름자를 했던 부끄러운 별을 가을로 
봅니다. 이런 다 가을 계절이 아이들의 
부끄러운 거외다. 소녀들의 덮어 그리워 
언덕 잠, 나의 북간도에 쓸쓸함과 있습니
다. 풀이 토끼, 가을 버리었습니다. 위에
도 지나고 경, 계십니다. 내린 이네들은 
차 가을로 이름과, 묻힌 이국 잔디가 봅
니다. 가슴속에 자랑처럼 불러 책상을 
까닭이요, 멀리 봅니다. 사랑과 된 아침
이 봅니다. 별 내 언덕 시와 하나의 하늘
에는 봅니다.');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,3,4,'많은 슬퍼하는 까닭이요, 묻힌 비둘기,
 것은 하나에 위에도 버리었습니다. 마
리아 이제 자랑처럼 노루, 있습니다. 나
는 아침이 없이 내일 사람들의 속의 가
난한 하늘에는 이네들은 있습니다. 무
성할 가을로 별들을 그러나 나는 묻힌 
어머니 봅니다. 않은 노루, 비둘기, 자
랑처럼 패, 계집애들의 있습니다. 그리
고 별을 가을로 듯합니다. 남은 어머니
, 잔디가 이름을 계절이 한 듯합니다. 
말 별 까닭이요, 가난한 쓸쓸함과 한');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,4,1,'위에 무덤 남은 있습니다. 하나 쉬이 언
덕 하늘에는 같이 봅니다. 불러 헤일 가
을 어머님, 계십니다. 소학교 밤을 언덕
 때 하나에 다 파란 있습니다. 이국 우
는 계집애들의 다 속의 이제 별들을 거
외다. 추억과 부끄러운 내 듯합니다. 책
상을 밤이 별을 않은 위에 아침이 계십
니다. 가슴속에 했던 계집애들의 하나 
보고, 듯합니다. 까닭이요, 계절이 보고,
 가난한 새겨지는 내일 이네들은 별 있
습니다. 멀듯이, 불러 이름과 이웃 다하
지 애기 가슴속에 계십니다. 별 하나에');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,4,2,'하였으며, 얼음과 봄날의 우리는 모래뿐일 피는
 타오르고 천고에 풀밭에 부패뿐이다. 피에 
목숨을 우리 황금시대를 우리 뭇 고동을 꽃이
 위하여서. 오아이스도 같이, 가장 같이, 생의 
봄날의 들어 새 못할 이것이다. 끓는 돋고, 것은
 봄바람을 천자만홍이 내려온 얼음에 거친 
청춘은 것이다. 하여도 방지하는 얼마나 보배를
 꾸며 인간에 인간은 능히 싹이 운다. 것은
 과실이 황금시대를 용감하고 때문이다. 소담스러운
 인간의 반짝이는 보이는 그와 넣는 얼음에 것이다. 
무엇을 인생을 풀이 이것이다. ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,4,3,'풀이 그들은 없으면, 모래뿐일 뭇 그들의 이것은
 쓸쓸하랴? 장식하는 위하여, 구하지 싹이 그리
하였는가? 내는 아니한 이상은 철환하였는가? 
구하지 인간의 두손을 이성은 돋고, 따뜻한 것이다. 
거선의 무엇을 만천하의 바로 그들은 봄날의 반짝
이는 풍부하게 때문이다. 수 오직 아니더면, 것은
 황금시대다. 인도하겠다는 그러므로 없으면, 
얼마나 인간의 부패뿐이다. 것은 청춘에서만 이상의
 살 능히 힘차게 칼이다. 붙잡아 충분히 있으며, 
사막이다.');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,4,4,'낙원을 같은 그들의 되는 같은 날카로우나
 우리 할지니, 약동하다. 생의 현저하게
 청춘은 이상은 것이다. 가진 이상, 이것을
 들어 뜨거운지라, 품고 것이다. 것은 산야에
 하는 같지 사람은 눈이 긴지라 있는 
가치를 있다. 있는 크고 때에, 붙잡아 품고 
구할 위하여, 꽃이 때문이다. 목숨이 뭇
 인간이 사막이다. 그들은 눈에 이것을 
위하여 끓는다. 살 있는 피는 끓는 붙잡아
 오아이스도 창공에 같으며, 생의 것이다. ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,5,1,'할지니, 웅대한 인생에 물방아 청춘의 옷을 그러므로
 없는 위하여서. 기쁘며, 트고, 곳으로 앞이 새 방황
하였으며, 그들은 힘있다. 스며들어 예가 돋고, 
뛰노는 용감하고 인생을 인도하겠다는 사막이다.
 그들을 설산에서 얼음에 것이다.보라, 그들의 
철환하였는가? 충분히 못할 가지에 인간의 풍부하게
 내는 기관과 피고 있는가? 봄바람을 이성은 새가 
행복스럽고 피는 바로 천고에 열매를 것이다. 
싹이 노년에게서 인간의 봄날의 있을 사막이다. 때에,
 인간이 같으며, 고동을 때문이다. 이상이 것이다.
보라, 군영과 오아이스도 뜨거운지라, 이상의 ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,5,2,'용풀이 싸인 가진 피부가 듣는다. 열락의 불어
풀밭에 끝에 힘있다. 풀밭에 천지는 가슴이
 굳세게 이상의 위하여, 있는가? 새가 끓는 
착목한는 낙원을 실로 붙잡아 쓸쓸하랴? 
사랑의 장식하는 것은 풍부하게 있는
 있다. 이상은 따뜻한 그들은 같이, 듣는다. 착목
한는 노년에게서 스며들어 찬미를 그림자는 
교향악이다. 있는 얼음과 가는 것은 들어 듣는다. 
피가 행복스럽고 주며, 반짝이는 인생을 품고 
예가 그들에게 힘있다. 눈에 황금시대를 가진
봄바람이다.');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,5,3,'설산에서 황금시대를 있으며, 어디 있다. 석
가는 위하여, 군영과 피고 피가 피부가 힘차
게 타오르고 사라지지 봄바람이다. 이상은 
이상을 그들은 끓는 청춘의 쓸쓸하랴? 날카
로우나 하여도 뼈 우리의 것이다. 새 산야에 
그림자는 천자만홍이 피가 평화스러운 것이
다. 인생의 무한한 온갖 불어 인간에 그들의
 생생하며, 있음으로써 못할 이것이다. 만천하
의 뜨고, 기쁘며, 내려온 이상의 눈이 아름답고
 있다. 그들에게 우리 사람은 듣기만 반짝이는
 이상은 눈이 끓는 낙원을 운다. 것은 싶이 보');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,5,4,'위에 무덤 남은 있습니다. 하나 쉬이 언
덕 하늘에는 같이 봅니다. 불러 헤일 가
을 어머님, 계십니다. 소학교 밤을 언덕
 때 하나에 다 파란 있습니다. 이국 우
는 계집애들의 다 속의 이제 별들을 거
외다. 추억과 부끄러운 내 듯합니다. 책
상을 밤이 별을 않은 위에 아침이 계십
니다. 가슴속에 했던 계집애들의 하나 
보고, 듯합니다. 까닭이요, 계절이 보고,
 가난한 새겨지는 내일 이네들은 별 있
습니다. 멀듯이, 불러 이름과 이웃 다하
지 애기 가슴속에 계십니다. 별 하나에');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,6,1,'이름자를 했던 부끄러운 별을 가을로 
봅니다. 이런 다 가을 계절이 아이들의 
부끄러운 거외다. 소녀들의 덮어 그리워 
언덕 잠, 나의 북간도에 쓸쓸함과 있습니
다. 풀이 토끼, 가을 버리었습니다. 위에
도 지나고 경, 계십니다. 내린 이네들은 
차 가을로 이름과, 묻힌 이국 잔디가 봅
니다. 가슴속에 자랑처럼 불러 책상을 
까닭이요, 멀리 봅니다. 사랑과 된 아침
이 봅니다. 별 내 언덕 시와 하나의 하늘
에는 봅니다.');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,6,2,'이런 아름다운 다 그리워 이제 까닭입니다. 
토끼, 밤이 책상을 위에 했던 있습니다. 계집
애들의 부끄러운 오는 쓸쓸함과 그러나 거외
다. 멀리 보고, 마디씩 아스라히 봅니다. 다 
사랑과 속의 별들을 봅니다. 써 피어나듯이 
위에 사랑과 나는 봅니다. 마리아 릴케 계집
애들의 무덤 한 봅니다. 별 별이 별들을 까닭
입니다. 당신은 아이들의 청춘이 다하지 강
아지, 하나에 잔디가 듯합니다. 아이들의 어
머니, 흙으로 비둘기, 겨울이 하나에 소녀들
의 가슴속에 이름과 봅니다. 별 우는 가을');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,6,3,'위에 무덤 남은 있습니다. 하나 쉬이 언
덕 하늘에는 같이 봅니다. 불러 헤일 가
을 어머님, 계십니다. 소학교 밤을 언덕
 때 하나에 다 파란 있습니다. 이국 우
는 계집애들의 다 속의 이제 별들을 거
외다. 추억과 부끄러운 내 듯합니다. 책
상을 밤이 별을 않은 위에 아침이 계십
니다. 가슴속에 했던 계집애들의 하나 
보고, 듯합니다. 까닭이요, 계절이 보고,
 가난한 새겨지는 내일 이네들은 별 있
습니다. 멀듯이, 불러 이름과 이웃 다하
지 애기 가슴속에 계십니다. 별 하나에');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,6,4,'용풀이 싸인 가진 피부가 듣는다. 열락의 불어
풀밭에 끝에 힘있다. 풀밭에 천지는 가슴이
 굳세게 이상의 위하여, 있는가? 새가 끓는 
착목한는 낙원을 실로 붙잡아 쓸쓸하랴? 
사랑의 장식하는 것은 풍부하게 있는
 있다. 이상은 따뜻한 그들은 같이, 듣는다. 착목
한는 노년에게서 스며들어 찬미를 그림자는 
교향악이다. 있는 얼음과 가는 것은 들어 듣는다. 
피가 행복스럽고 주며, 반짝이는 인생을 품고 
예가 그들에게 힘있다. 눈에 황금시대를 가진
봄바람이다.');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,7,1,'하였으며, 얼음과 봄날의 우리는 모래뿐일 피는
 타오르고 천고에 풀밭에 부패뿐이다. 피에 
목숨을 우리 황금시대를 우리 뭇 고동을 꽃이
 위하여서. 오아이스도 같이, 가장 같이, 생의 
봄날의 들어 새 못할 이것이다. 끓는 돋고, 것은
 봄바람을 천자만홍이 내려온 얼음에 거친 
청춘은 것이다. 하여도 방지하는 얼마나 보배를
 꾸며 인간에 인간은 능히 싹이 운다. 것은
 과실이 황금시대를 용감하고 때문이다. 소담스러운
 인간의 반짝이는 보이는 그와 넣는 얼음에 것이다. 
무엇을 인생을 풀이 이것이다. ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,7,2,'그러나 오는 이름자를 어머니 버리었습니다.
 별에도 어머니 이름과, 봅니다. 아직 별 노루,
 나는 내일 책상을 아침이 아무 까닭입니다. 
새워 토끼, 다 하나 계집애들의 책상을 벌써 
한 까닭입니다. 별이 이름을 했던 한 있습니다. 
밤을 사람들의 같이 지나가는 벌레는 노새, 까
닭이요, 아직 쓸쓸함과 있습니다. 토끼, 이름을
 소녀들의 소학교 어머님, 계십니다. 하늘에는
 이 별 사랑과 아스라히 불러 있습니다. 다하
지 쉬이 딴은 어머님, 하나의 경, 까닭입니다.');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,7,3,'별 묻힌 소학교 까닭입니다. 프랑시스 별이
 계절이 보고, 오는 내 가을 그리워 동경과 
까닭입니다. 라이너 아스라히 멀리 쓸쓸함
과 아침이 속의 멀리 있습니다. 이름과, 속
의 말 이름과 별 그리워 쓸쓸함과 거외다. 
헤는 다 지나고 다하지 써 프랑시스 있습
니다. 내 그리고 강아지, 하나에 계집애들
의 걱정도 다 버리었습니다. 애기 때 어머
니, 무엇인지 별 이름과, 있습니다. 묻힌
 밤을 이름을 잠, 있습니다. 남은 마디씩 
내 이름을 무성할 별이 봅니다. 계집애들');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,7,4,'이름자를 했던 부끄러운 별을 가을로 
봅니다. 이런 다 가을 계절이 아이들의 
부끄러운 거외다. 소녀들의 덮어 그리워 
언덕 잠, 나의 북간도에 쓸쓸함과 있습니
다. 풀이 토끼, 가을 버리었습니다. 위에
도 지나고 경, 계십니다. 내린 이네들은 
차 가을로 이름과, 묻힌 이국 잔디가 봅
니다. 가슴속에 자랑처럼 불러 책상을 
까닭이요, 멀리 봅니다. 사랑과 된 아침
이 봅니다. 별 내 언덕 시와 하나의 하늘
에는 봅니다.');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,8,1,'많은 슬퍼하는 까닭이요, 묻힌 비둘기,
 것은 하나에 위에도 버리었습니다. 마
리아 이제 자랑처럼 노루, 있습니다. 나
는 아침이 없이 내일 사람들의 속의 가
난한 하늘에는 이네들은 있습니다. 무
성할 가을로 별들을 그러나 나는 묻힌 
어머니 봅니다. 않은 노루, 비둘기, 자
랑처럼 패, 계집애들의 있습니다. 그리
고 별을 가을로 듯합니다. 남은 어머니
, 잔디가 이름을 계절이 한 듯합니다. 
말 별 까닭이요, 가난한 쓸쓸함과 한');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,8,2,'이런 아름다운 다 그리워 이제 까닭입니다. 
토끼, 밤이 책상을 위에 했던 있습니다. 계집
애들의 부끄러운 오는 쓸쓸함과 그러나 거외
다. 멀리 보고, 마디씩 아스라히 봅니다. 다 
사랑과 속의 별들을 봅니다. 써 피어나듯이 
위에 사랑과 나는 봅니다. 마리아 릴케 계집
애들의 무덤 한 봅니다. 별 별이 별들을 까닭
입니다. 당신은 아이들의 청춘이 다하지 강
아지, 하나에 잔디가 듯합니다. 아이들의 어
머니, 흙으로 비둘기, 겨울이 하나에 소녀들
의 가슴속에 이름과 봅니다. 별 우는 가을');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,8,3,'가슴속에 경, 이런 내린 봅니다. 그러나 
불러 릴케 불러 흙으로 덮어 밤이 이런 버리
었습니다. 이름과, 가을로 이국 까닭입니다. 
나는 아이들의 멀리 별이 이네들은 언덕 패
, 계절이 까닭입니다. 어머님, 시와 이런 까
닭입니다. 불러 토끼, 마디씩 남은 보고, 하
나에 많은 거외다. 못 추억과 이름과, 슬퍼
하는 까닭입니다. 새겨지는 말 이름과, 언덕
 하나에 이런 나는 듯합니다. 소학교 별 가
난한 무엇인지 어머니, 하늘에는 계십니다
. 가을로 멀리 쓸쓸함과 하나에 나는 아직 ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,8,4,'할지니, 웅대한 인생에 물방아 청춘의 옷을 그러므로
 없는 위하여서. 기쁘며, 트고, 곳으로 앞이 새 방황
하였으며, 그들은 힘있다. 스며들어 예가 돋고, 
뛰노는 용감하고 인생을 인도하겠다는 사막이다.
 그들을 설산에서 얼음에 것이다.보라, 그들의 
철환하였는가? 충분히 못할 가지에 인간의 풍부하게
 내는 기관과 피고 있는가? 봄바람을 이성은 새가 
행복스럽고 피는 바로 천고에 열매를 것이다. 
싹이 노년에게서 인간의 봄날의 있을 사막이다. 때에,
 인간이 같으며, 고동을 때문이다. 이상이 것이다.
보라, 군영과 오아이스도 뜨거운지라, 이상의 ');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,9,1,'용풀이 싸인 가진 피부가 듣는다. 열락의 불어
풀밭에 끝에 힘있다. 풀밭에 천지는 가슴이
 굳세게 이상의 위하여, 있는가? 새가 끓는 
착목한는 낙원을 실로 붙잡아 쓸쓸하랴? 
사랑의 장식하는 것은 풍부하게 있는
 있다. 이상은 따뜻한 그들은 같이, 듣는다. 착목
한는 노년에게서 스며들어 찬미를 그림자는 
교향악이다. 있는 얼음과 가는 것은 들어 듣는다. 
피가 행복스럽고 주며, 반짝이는 인생을 품고 
예가 그들에게 힘있다. 눈에 황금시대를 가진
봄바람이다.');
Insert into WEB_NOV_CONTENT_DETAIL (WEB_NOV_NUM,CHAP_NUM,WEB_NOV_PAGE_NUM,WEB_NOV_PAGE_CONTENT) values (1,9,2,'설산에서 황금시대를 있으며, 어디 있다. 석
가는 위하여, 군영과 피고 피가 피부가 힘차
게 타오르고 사라지지 봄바람이다. 이상은 
이상을 그들은 끓는 청춘의 쓸쓸하랴? 날카
로우나 하여도 뼈 우리의 것이다. 새 산야에 
그림자는 천자만홍이 피가 평화스러운 것이
다. 인생의 무한한 온갖 불어 인간에 그들의
 생생하며, 있음으로써 못할 이것이다. 만천하
의 뜨고, 기쁘며, 내려온 이상의 눈이 아름답고
 있다. 그들에게 우리 사람은 듣기만 반짝이는
 이상은 눈이 끓는 낙원을 운다. 것은 싶이 보');




---------------- WEB_NOV_CHAP_SEARCH

CREATE TABLE WEB_NOV_CHAP_SEARCH
(
    WEB_NOV_NUM     NUMBER REFERENCES WEB_NOV_INFO (WEB_NOV_NUM) NOT NULL,
    CHAP_NUM     NUMBER,
    CHAP_WRITTEN_DATE     DATE,
    CHAP_READABLE VARCHAR2(3) DEFAULT 'N', CHECK (CHAP_READABLE IN ('Y', 'N')),
    CHAP_PER_PRICE NUMBER DEFAULT 0,
    CHAP_PER_IS_USED CHAR(2),
    PRIMARY KEY (WEB_NOV_NUM, CHAP_NUM)
);

INSERT INTO WEB_NOV_CHAP_SEARCH VALUES ( 1 , 1 , '21/01/01', 'Y', 0, 'Y');
INSERT INTO WEB_NOV_CHAP_SEARCH VALUES ( 1 , 2 , '21/01/08', 'Y', 0, 'Y');
INSERT INTO WEB_NOV_CHAP_SEARCH VALUES ( 1 , 3 , '21/01/15', 'Y', 0, 'Y');
INSERT INTO WEB_NOV_CHAP_SEARCH VALUES ( 1 , 4 , '21/01/22', 'Y', 0, 'Y');
INSERT INTO WEB_NOV_CHAP_SEARCH VALUES ( 1 , 5 , '21/01/29', 'Y', 0, 'Y');
INSERT INTO WEB_NOV_CHAP_SEARCH VALUES ( 1 , 6 , '21/02/05', 'Y', 100, 'N');
INSERT INTO WEB_NOV_CHAP_SEARCH VALUES ( 1 , 7 , '21/02/17', 'Y', 100, 'N');
INSERT INTO WEB_NOV_CHAP_SEARCH VALUES ( 1 , 8 , '21/02/24', 'Y', 100, 'N');
INSERT INTO WEB_NOV_CHAP_SEARCH VALUES ( 1 , 9 , '21/03/03', 'Y', 100, 'N');

COMMIT;

-------------WEB_NOV_REPLY


CREATE TABLE WEB_NOV_REPLY
(
    REPLY_NUM     NUMBER PRIMARY KEY,
    WEB_NOV_NUM   NUMBER REFERENCES WEB_NOV_INFO (WEB_NOV_NUM),
    REPLY_DATE    DATE,
    MEM_NUM NUMBER REFERENCES MEM_INFO(MEM_NUM),
    REPLY_CONTENT VARCHAR2(600)
);
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('1', '1', TO_DATE('19/06/11', 'RR/MM/DD'), '5', '총을 정말 능수능란하게쏘네요!!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('2', '10', TO_DATE('19/06/13', 'RR/MM/DD'), '3', '작가명과 작가작품이….ㅋㅋㅋ');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('3', '5', TO_DATE('19/06/20', 'RR/MM/DD'), '3', '게임 잘하면 형님 아닙니까');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('4', '8', TO_DATE('19/07/10', 'RR/MM/DD'), '6', '너무 재밌게 보고 있어요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('5', '14', TO_DATE('19/08/15', 'RR/MM/DD'), '4', '다음 연재는 언제 나오죠?');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('6', '1', TO_DATE('19/08/18', 'RR/MM/DD'), '12', '코로나19 꺼져라!!!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('7', '1', TO_DATE('19/09/05', 'RR/MM/DD'), '9', '노잼 작품….공짜여서 본다');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('8', '17', TO_DATE('19/10/26', 'RR/MM/DD'), '4', '에어 조던 ㄷㄷ');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('9', '17', TO_DATE('19/11/07', 'RR/MM/DD'), '10', '발암소설 하차합니다. 발로 써도 이거보다 잘쓸듯.');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('10', '13', TO_DATE('19/11/09', 'RR/MM/DD'), '4', '이 소설 보면서 개발의 꿈을 키우고 있어요');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('11', '12', TO_DATE('19/11/13', 'RR/MM/DD'), '3', '의외로 전개가 신박해요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('12', '13', TO_DATE('19/11/17', 'RR/MM/DD'), '10', '재미가 있어요~');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('13', '11', TO_DATE('19/11/21', 'RR/MM/DD'), '8', '다음 작을 기다리고 있어요');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('14', '9', TO_DATE('19/11/23', 'RR/MM/DD'), '7', '귀머거리의 삶을 잘 표현해요~');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('15', '8', TO_DATE('19/12/01', 'RR/MM/DD'), '8', '재미 없음…. 돈 왜냄');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('16', '8', TO_DATE('19/12/17', 'RR/MM/DD'), '12', '위에 분 신고좀요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('17', '19', TO_DATE('19/12/17', 'RR/MM/DD'), '7', '저도 같은 공대생이라 공감가요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('18', '21', TO_DATE('19/12/23', 'RR/MM/DD'), '16', '지구도 돌고 저도 돌고,…');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('19', '3', TO_DATE('19/12/26', 'RR/MM/DD'), '17', '씁쓸한 현실이네요…');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('20', '26', TO_DATE('20/01/07', 'RR/MM/DD'), '18', '완결작 나와서 다봤어요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('21', '25', TO_DATE('20/02/05', 'RR/MM/DD'), '19', '밤새는 줄도 모르게 완작 봤네요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('22', '19', TO_DATE('20/03/06', 'RR/MM/DD'), '20', '응 난 미대생~~');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('23', '20', TO_DATE('20/03/15', 'RR/MM/DD'), '2', '저는 코더의 치유사!!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('24', '22', TO_DATE('20/03/15', 'RR/MM/DD'), '3', '삼국지 리얼 꿀잼!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('25', '23', TO_DATE('20/04/16', 'RR/MM/DD'), '4', '철학적이라 이해하기가…');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('26', '14', TO_DATE('20/05/06', 'RR/MM/DD'), '10', '전 힘들어요 ㅠㅠ');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('27', '15', TO_DATE('20/06/08', 'RR/MM/DD'), '11', '저는 그냥 늦둥이…ㅎ');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('28', '12', TO_DATE('20/06/09', 'RR/MM/DD'), '25', '재용아 나도 신입인데 다르다??');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('29', '21', TO_DATE('20/06/13', 'RR/MM/DD'), '26', '호호호호호');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('30', '18', TO_DATE('20/06/16', 'RR/MM/DD'), '27', '두 개의 태양은 없지 응 없지!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('31', '16', TO_DATE('20/06/23', 'RR/MM/DD'), '28', '스팀팩!!!!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('32', '15', TO_DATE('20/06/27', 'RR/MM/DD'), '28', '돈 플렉스~');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('33', '23', TO_DATE('20/07/01', 'RR/MM/DD'), '29', '완작 좋아요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('34', '2', TO_DATE('20/07/03', 'RR/MM/DD'), '30', '막장의 끝이구먼!!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('35', '4', TO_DATE('20/07/05', 'RR/MM/DD'), '17', '닥터…닥터 스트렌지….도루마무…');

COMMIT;

-------------WISH_LIST


CREATE TABLE WISH_LIST
(
    WEB_NOV_NUM NUMBER REFERENCES WEB_NOV_INFO (WEB_NOV_NUM),
    MEM_NUM     NUMBER REFERENCES MEM_INFO (MEM_NUM),
    WISHLIST_DATE DATE NOT NULL
);
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('1', '2', TO_DATE('20/12/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('4', '9', TO_DATE('20/06/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('6', '4', TO_DATE('20/08/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('8', '10', TO_DATE('20/06/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('5', '4', TO_DATE('20/09/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('10', '8', TO_DATE('21/02/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('11', '7', TO_DATE('21/02/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('1', '5', TO_DATE('20/05/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('2', '5', TO_DATE('20/02/24', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('3', '15', TO_DATE('18/02/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('9', '15', TO_DATE('20/12/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('10', '19', TO_DATE('20/02/06', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('23', '8', TO_DATE('20/02/15', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('21', '8', TO_DATE('20/02/18', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('21', '20', TO_DATE('20/02/19', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('19', '21', TO_DATE('20/02/20', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('6', '22', TO_DATE('21/02/25', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('9', '3', TO_DATE('20/02/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('10', '4', TO_DATE('21/03/21', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('11', '5', TO_DATE('20/03/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('12', '6', TO_DATE('21/02/05', 'RR/MM/DD'));
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM, WISHLIST_DATE)
VALUES ('22', '7', TO_DATE('20/02/08', 'RR/MM/DD'));

COMMIT;


--------------------------COIN_USE_HIS


CREATE TABLE COIN_USE_HIS (
	COIN_USE_NUM NUMBER	NOT NULL PRIMARY KEY ,
	WEB_NOV_NUM	NUMBER NOT NULL REFERENCES WEB_NOV_INFO(WEB_NOV_NUM),
	MEM_NUM	NUMBER NOT NULL REFERENCES MEM_INFO(MEM_NUM),
	COIN_USE_DATE DATE NOT NULL,
	COIN_USAGE	NUMBER NOT NULL,
	CHAPTER_NUM	NUMBER NOT NULL
);


---------------------------COIN_CHARGE

CREATE TABLE COIN_CHARGE (
	COIN_CHARGE_NUM	NUMBER NOT NULL PRIMARY KEY,
	MEM_NUM	NUMBER NOT NULL REFERENCES MEM_INFO(MEM_NUM),
	COIN_CHARGE_DATE DATE NULL,
	COIN_CHARGE_COUNT NUMBER NULL,
	COIN_CHARGE_TOTAL NUMBER NULL,
	WEEKLY_COIN_YN CHAR(2) NULL
);



DROP SEQUENCE SEQ_MEM_NO;
CREATE SEQUENCE SEQ_MEM_NO
START WITH 31;

DROP SEQUENCE SEQ_WEB_CONTENT_DETAIL;
CREATE SEQUENCE SEQ_WEB_CONTENT_DETAIL
START WITH 100;

DROP SEQUENCE SEQ_WEB_NOV_INFO;
CREATE SEQUENCE SEQ_WEB_NOV_INFO
START WITH 100;

DROP SEQUENCE SEQ_WEB_NOV_REPLY;
CREATE SEQUENCE SEQ_WEB_NOV_REPLY
START WITH 50;


