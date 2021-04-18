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

-----------COMPET_INFO

CREATE TABLE COMPET_INFO
(
    COMPET_NUM              NUMBER PRIMARY KEY,
    MEM_NUM                 NUMBER    NOT NULL,
    COMPET_PAPER_YN         CHAR(2) DEFAULT 'Y' CHECK (COMPET_PAPER_YN IN ('Y', 'N')),
    NOV_TITLE               VARCHAR2(50)   NOT NULL,
    NOV_INFO                VARCHAR2(2000) NOT NULL,
    COMPET_SSN              VARCHAR2(10)   NOT NULL,
    COMPET_NOV_IMG_LOCATION VARCHAR2(200),
    SCORE                   NUMBER  DEFAULT 0,
    COMPET_ACT_YN           CHAR(2) DEFAULT 'Y' CHECK (COMPET_ACT_YN IN ('Y', 'N'))
);

INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('1', '2', 'Y', '무림속 외노자가 너무 강하다', '어느 날 갑자기 무림에 떨어지고 이래저래 5년이 지났다.
올해는 드디어 정규직이 되었다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('2', '3', 'Y', '마왕 삼촌이 돌아왔다', '"삼촌, 삼촌도 헌터야?"
"아니."
"그럼 뭐야?"
"삼촌은... 마왕이야."
', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('3', '4', 'Y', '천재 투수가 장타력을 숨김', '쿠바에서 온 KBO 생태계 교란종', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('4', '5', 'Y', '타임머신으로 인생역전', '내 머릿속에는 최첨단 미래기술이 있다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('5', '6', 'Y', '국가직 소환술사', '몬스터와 악마를 사냥하는 국가직 공무원.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('6', '7', 'Y', '게임속 위병으로 살아가기', '평소 즐겨하던 게임의 위병이 되었다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('7', '8', 'Y', '보석을 먹는 플레이어', '이번 생에는, 진짜 천재가 되어주겠다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('8', '9', 'Y', '투르크의 술탄이 됐다', '술탄이 되는 왕자, 단 한 명만 살아남는 오스만 제국에 떨어졌다.
하렘은 개뿔, 살아 남기 위해 술탄이 돼야 한다.
#오스만 제국 #영지물 #since 1499', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('9', '10', 'Y', '마법사들의 이능마켓', '여기 마켓은 엄청난 물건을 퍼준다.
능력은 덤이고.
<평화나라 아니고 이능마켓> <아카데미>', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('10', '11', 'Y', '이번 생은 재벌3세', '어쩌다 재벌', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('11', '12', 'Y', '천재 조각가의 재능은 끝이 없다', '화려한 천재조각가의 삶.
재능은 끝이 보이지 않는다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('12', '13', 'Y', '천재 베이스', '5년간 활동했던 인디 밴드에서 버림받은 박현우
집으로 돌아가는 길에 테이저건을 맞고 쓰러졌다.
어...? 그런데 재능이 생겨 버렸다.
#천재 #뮤지션 #음악 #엔터 #테이저건', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('13', '14', 'Y', '명왕성 채굴로 우주재벌', '현대 판타지 // 이능력물 // 성장물 // 재벌물 // 우주 개척물', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('14', '15', 'Y', '레벨업하는 해적왕', '배를 얻었다.
모조리 약탈해서 성장한다', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('15', '16', 'Y', '순정만화에서 살아남기', '[Mission]
: 지면을 차지하고 분량을 확보해 완결까지 살아남으시오
만화 속 ''행인1''에 빙의되었다.
근데 그게 첫 화를 끝으로 사라지는 엑스트라다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('16', '17', 'Y', '2살부터 허준', '나는 태어날 때부터 한의사였다', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('17', '18', 'Y', 'K-영화 천재로 회귀했다', '영화사 신입 시절로 회귀해버렸다.
어차피 다 아는 전개.
이젠 내 멋대로 치고 올라간다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('18', '19', 'Y', '아카데미의 정령사', '경지에 이른 정령술은 마법과 구별할 수 없다.
그리고 나는 아카데미의 유일무이한 정령사다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('19', '20', 'Y', '게임속 어쌔신이 되었다', '게임 속 어쌔신이 되었다.
그런데 시점이 엔딩으로부터 20년이나 흐른 후다….', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('20', '21', 'Y', '경이로운 회귀 타자', '회귀는 개소리를 동반한다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('21', '22', 'Y', '멸망한 세계의 창술사', '31세기 디스토피아.
이계에서 온 창술사는 정의와 명예를 외친다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('22', '23', 'Y', '신라, 삼국지를 먹다', '신라가 삼국지 시대 중국을 제패해버리다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('23', '24', 'Y', '망나니의 약혼자가 되었다', '약혼 상대가 귀족 가문의 망나니다.
내 인생 망해버린 건가?', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('24', '25', 'Y', '빙의한 악역이 너무 약함', '소설 속 등장인물이 되었다.
문제는 검 같은 건 손도 댄적 없다는 건데...
어쩌지', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('25', '26', 'Y', '눈떠보니 천재영화감독', '평행세계의 김정훈
재생시간 13,534 시간짜리 DVD를 얻게 되는데...', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('26', '27', 'Y', '빌런의 경영학', '평행세계의 미래와 접촉한 결과가 빌런?
아무렴 어때. 빌런도 제법 뛰어난 빌런이 될 것 같은데.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('27', '28', 'Y', '상태창빨로 세계정복', '멸망하는 세상 속에서 환생했다.
[상태창] ', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('28', '29', 'Y', '흰머리 맥아더', '1911년.
미 육군사관학교에 최초의 한인 생도가 입학했다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('29', '30', 'Y', '빌어먹을 회귀', '마왕의 후손으로 환생했다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('30', '2', 'Y', '서바이벌로 우주 최강', '전역하고 일주일. 이제 민간인 기분좀 내려는데 응? 이계로 강제 납치?
''뭐? 무림인과 마법사 기사들과 서바이벌 게임을 하라고?''
최강운의 우주 정복기.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('31', '3', 'Y', '신입사원 백현수', '회귀해보니 입사 첫날이었다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('32', '4', 'Y', '드루와(격투마스터의 부활)', '대기만성 격투가.
늦깍이 파이터의 옥타곤 도전기!', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('33', '5', 'Y', '엔젤 소드', '어머니의 당부를 잊고 칼을 잡았다.
칼을 휙! 휘둘렀더니,왕자님이 픽! 죽었다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('34', '6', 'Y', '게임속 정령사로 살아가는 법', '평소 즐겨하던 게임의 정령사 캐릭터가 되어버렸다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('35', '7', 'Y', '약먹는 천재저격수', '천재적인 재능을 가졌지만 약 없이는 걷는것조차 힘들다.
세번째 부캐로 만들었던 저격수 캐릭터.
그 캐릭터의 세상 속에 들어오고 말았다', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('36', '8', 'Y', '방랑힐러로 살아가는 법', '신성 제국의 기사 가문인 에이츠 가문.
그 가문에서 천재 힐러로 태어난 한철수의 이야기.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('37', '9', 'Y', '올지능스탯 황제가 되었다', '게임 속 최종 보스.
책략으로 황위를 찬탈한 황제가 되었다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('38', '10', 'Y', '미래에서 재능이 쏟아져', '미래의 물건에서 재능을 가져올 수 있다고?', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('39', '11', 'Y', '신성로마 재벌가의 망나니', '평생을 흙수저로 살아왔던 이명훈
과로에 찌들어 도서관에서 잠깐 감았던 눈을 다시 뜨자 그는 신성로마 최고 재벌가의 장남이 되어 있었다.
다시 한 번 시작된 새로운 삶. 이번에는 원없이 돈을 휘두르며 제대로 살아보련다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('40', '12', 'Y', '아포칼립스 속 마법사', '종말을 앞둔 세계, 엘드윈을 구원한 마법사.
십여 년만에 그리운 고향, 지구로 귀환했다.
그런데 그날 밤.
평화롭던 지구에 종말이 찾아왔다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('41', '13', 'Y', '곤륜파 천재권법가', '사파제일검. 검귀 독고.
곤륜파의 대사형이 되었다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('42', '14', 'Y', '골키퍼가 축구를 너무 잘함', '미친 피지컬과 미친 슈팅력을 가진 골키퍼.
이 골키퍼가 축구를 너무 잘한다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('43', '15', 'Y', '치트키로 월드컵 우승', '성한 곳 하나 없는 몸으로 꿈을 포기하게 된 내게,
온 몸을 치트키 할 수 있는 능력이 주어졌다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('44', '16', 'Y', '역대급 도루왕의 탄생', 'KBO 타격왕, 메이저리그 3번 타자 최강남.
이번엔 메이저리그 도루왕에 도전한다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('45', '17', 'Y', '천재 냥통령이 되었다', '그 녀석이 떠난 뒤, 모든 게 시작됐다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('46', '18', 'Y', '삼국지 : 어부라로 천하통일', '아무도 알아주지 않지만 천하통일의 그릇이라며 뻔뻔함을 지닌 나. 대업에 도전한다!!', '2020Q4', '경로1',
        0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('47', '19', 'Y', '해를 품은 9서클 마도사', '높디높은 밤하늘에 있지 않더라도.
아무도 보지 못하는 곳에 떨어져 있더라도
스스로가 빛나기를 원한다면
그렇다면 그것은 태양이다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('48', '20', 'Y', '회귀했는데 여대생이 되었다', '간신히 회귀해서 복수할 수 있는 기회를 거머쥐었는데.
뭐? 여대생이라고?', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('49', '21', 'Y', '특성카피로 야구도사', '죽을 뻔한 위기를 겪고 나자 선수들의 능력을 카피 할 수 있게 되었다.
세계 최고가 되리라.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('50', '22', 'Y', '엘프가 너무 강함', '게이트의 출현과 대 헌터 시대의 개막.
지구를 멸망시킨 것은 인간도, 오크도, 드래곤도 아닌 엘프였다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('51', '23', 'Y', '공작가의 검술 천재 ', '나도 특별한데, 내가 만든 성검은 더 특별하다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('52', '24', 'Y', '무협 속 거지가 되었다', 'WFC 라이트급 챔피언. 그 꿈을 이루기 직전 나는 뜬금없이 거지소년A로 환생 했다. 이런 X같은 이야기가 또 있을까?',
        '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('53', '25', 'Y', '보물의 목소리가 들려', '박물관 학예사 진호.
시험 탈락 후 벼락을 맞았는데, 돌연 보물의 목소리가 들린다?
[뭘 꼬나보냐?]', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('54', '26', 'Y', '타자 끝, 투수 시작', '비참한 순간에 겪은 회귀.
새로운 삶에서는 투수의 길을 걷는다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('55', '27', 'Y', '범생이가 조상을 수집함', '조상의 힘으로 강해지는 괴작 RPG.
그곳에 처박힌 내 신분은 족보 없는 범생이였다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('56', '28', 'Y', '협상가의 영지', '판타지 세계! 생존을 위해 협상의 기술을 발휘하고, 권력을 탐하다!
중세 판타지 세계를 배경으로 하는 이계진입, 영지 경영, 전쟁 정복물입니다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('57', '29', 'Y', '마도문명 고려에서 부활하다', '마도 신성고려제국의 탄생!
이제 신시대의 대세는 마법이다.
전세계를 포탈로 연결하니, 모든 길이 남경으로 통한다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('58', '30', 'Y', '바이올린의 신', '슈만, 파가니니, 모차르트, 바흐
이 세상 어떤 음악가든, 그의 경험은 내 것이 된다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('59', '2', 'Y', '신들의 킹근갓켓', '제우스 :번개 팝니다 그리스 직거래 가능.
마호메트: 각종 생활 필수품 팝니다.
대천사 미카엘 : 신성 속성 개당 500골드에 부여. 4개이상 할인
"이거 실화인가?"', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('60', '3', 'Y', '사후세계에 어서오세요', '죽음. 그 이후 세계에 대하여.
지구에서의 삶은 첫 번째 페이지.
이제 당신의 책에 기록될 두 번째 이야기를 써내려갑니다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('61', '4', 'Y', '유럽 심시티', '고대 로마시대 유럽에 떨어진 김우진, 어떻게든 로마의 침공을 대비하고 살아남아야한다... ', '2021Q1', '경로1', 0,
        'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('62', '5', 'Y', '초밥 말고 레벨업!', '억울하게 죽임 당한 40대 가장 ‘김초식’의 인생 2회차 Story
이번 삶에서 그는 초밥 말면서 레벨 업 한다!!
십수년을 개처럼 일만했다.
오너의 딸과 결혼한 운좋은 싸가지 밑에서.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('63', '6', 'Y', '내가 김두환이다', '이 나라의 정점에 올라간다.
그리고 대한민국의 초대 대통령이되겠다.
미친놈이 될지라도.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('64', '7', 'Y', '비타민이 신선함', '비타민, 칼슘, 오메가-3, 프로폴리스, 글루코사민......
그 모두가 레벨업 재료다', '2021Q1', '경로1', 0, 'Y');

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


-----------------

DROP TABLE ACCUM_REPORT;

CREATE TABLE ACCUM_REPORT
(
    REPLY_NUM        VARCHAR2(15)     NOT NULL PRIMARY KEY REFERENCES WEB_NOV_REPLY (REPLY_NUM),
    ACCUM_REPORT_NUM NUMBER DEFAULT 0 NOT NULL
);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('1', 2);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('3', 0);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('4', 5);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('7', 10);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('9', 12);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('2', 6);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('5', 0);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('6', 0);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('15', 5);

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


---------QNA

CREATE TABLE QNA (
	POST_NUM NUMBER	NOT NULL PRIMARY KEY,
	MEM_NUM	NUMBER NOT NULL REFERENCES MEM_INFO(MEM_NUM),
	QNA_TITLE VARCHAR2(100) NOT NULL,
	QNA_OPEN_YN	CHAR(2)	DEFAULT 'Y' NOT NULL CHECK(QNA_OPEN_YN IN ('Y', 'N')),
	QNA_ANSWER_YN CHAR(2) DEFAULT 'N' NOT NULL CHECK(QNA_ANSWER_YN IN ('Y', 'N')),
	QNA_DATE DATE NOT NULL,
    QNA_CONTENT VARCHAR2(4000) NOT NULL
);

Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (1,'7','1회 공모전 상금 수령 관련 문의드립니다','Y ','Y ',to_date('20/01/15','RR/MM/DD'),'상금 수령시 제세공과금이 있는지 궁금합니다. 5회 이후의 분량에 대한 수익 분배는 어떻게 되는지도 알고 싶어요.');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (2,'30','질문) 코인 무료로 얻을 수 있는 방법','Y ','Y ',to_date('20/02/03','RR/MM/DD'),'코인을 다 썼어요. 혹시 무료로 코인 얻을 수 있는 방법이 있나요?? 다른데는 기다리면 무료 같은게 있던데 여긴 없나요???');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (3,'20','예약구매 했는데 단행본 배송은 언제부터 시작되나요?','Y ','Y ',to_date('20/03/05','RR/MM/DD'),'전지적 독자시점 단행본을 신청했는데 배송관련한 기능이 아직 준비중이네요. 단행본 출시는 4월로 알고 있는데 언제쯤 받을 수 있을까요.');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (4,'21','아진짜~~사진 억케올림','Y ','Y ',to_date('20/04/02','RR/MM/DD'),'방법~ 알려주^^');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (5,'27','선물함 기능은 없나요??','N ','Y ',to_date('20/05/02','RR/MM/DD'),'카카오페이지와 조아라에는 선물함이 있었는데 여기는 없나보네요? 고객 혜택 서비스가 없나요?');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (6,'12','와 진짜 재밌는데 다봐서 볼께 없네요. 업뎃 언제되죠?_?','Y ','Y ',to_date('20/06/04','RR/MM/DD'),'와 넘 재밌어서 밤새서 다 봐버렸네요. 다른 사이트는 유료라서 기다리고 있는데 혹시 여기 업뎃이 느린 이유가 있어요? 빨리 올려주면 좋겠는데 ');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (7,'6','신고 몇 회 누적되면 블라인드 되나요?','Y ','Y ',to_date('20/07/15','RR/MM/DD'),'신고당할만한 댓글이 아닌데 신고를 5개나 받았습니다. 개수가 누적되면 처리하는 것인지, 운영자분들이 처리하는 것인지 알려주세요.');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (8,'10','공모전 결과가 궁금한데요 차단 좀 풀어주시죠','N ','Y ',to_date('20/11/15','RR/MM/DD'),'제가 뭐 심한 말 한 것도 아니고 팩트만 말했는데 이게 왜 차단? 그리고 공모전 제출한거 업데이트 못해서 떨어지면 책임지실겁니까?');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (9,'9','탈퇴시 제출했던 공모작품은 어떻게 되나요','N ','N ',to_date('20/12/15','RR/MM/DD'),'다른 플랫폼에 독점 계약하게 되면서 해당 사이트는 탈퇴하려 합니다. 이럴 경우 기존에 공모전 제출됐던 작품도 삭제하고 싶은데 절차가 어떻게 되나요.');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (10,'26','배너 디자인 공모전은 없나요???','Y ','Y ',to_date('20/01/01','RR/MM/DD'),'제가 요새 포토샵과 피그마에 푹 빠졌는데 배너 디자인 공모전이 열리면 꼭 참가해보고 싶네요. 계획하고 계신게 있으시다면 일정을 알고 싶습니다.');


CREATE TABLE "QNA_REPLY" (
	"REPLY_NUM" NUMBER NOT NULL PRIMARY KEY,
	"POST_NUM" NUMBER NOT NULL REFERENCES QNA(POST_NUM),
	"REPLY_DATE" DATE NOT NULL,
	"REPLY_ID" VARCHAR2(30) NOT NULL,
	"REPLY_CONTENT" VARCHAR2(700) NOT NULL
);

Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (1,1,to_date('20/01/15','RR/MM/DD'),'manager01','안녕하세요~ sjkim님! 당신의 첫번째 책 FirstBook 관리자입니다. 문의주신 상금은 제세공과금이 별도로 부과되며 별도로 계좌를 공지해드릴 예정입니다. 아울러 상금 수령은 sjkim님이 원하시는 계좌와 신분증 사본을 저희쪽에 보내주시면 서류 검토후 계좌 입금해 드릴 예정입니다. ^^');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (2,1,to_date('20/01/16','RR/MM/DD'),'sjkim','아… 그렇군요! 답변 감사합니다 얼른 보낼께요 ㅎㅎㅎ');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (3,2,to_date('20/02/03','RR/MM/DD'),'manager01','안녕하세요~jspark님! 당신의 첫번째 책 FirstBook 관리자입니다. 아쉽게도 저희 서비스는 별도의 코인 제공이 불가능한 점 양해부탁드립니다. 다만 일주일에 한번씩 위클리 코인 서비스를 운영중에 있으니 아주 잠시, 며칠만 기다려주시면 마이페이지에서 코인을 수령하실 수 있으십니다. 다시한번 저희 서비스를 이용해주셔서 감사드립니다 ^^');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (4,2,to_date('20/02/04','RR/MM/DD'),'jspark','아쉽네요!! 좀만 더 참아보죠 뭐 ㅋㅋㅋ 아 다음편 보고 싶다!!!');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (5,3,to_date('20/03/05','RR/MM/DD'),'manager01','안녕하세요~ coffeecanu님! 당신의 첫번째 책 FirstBook 관리자입니다. 문의하신 단행본 배송은 현재 서비스 준비중에 있습니다! 사이트 상에서 확인하시면 더욱 좋으실텐데 아쉬우시죠 ㅠㅜ 배송이 완료되면 문자나 쪽지등으로 별도의 연락을 드릴 예정입니다. ');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (6,3,to_date('20/03/06','RR/MM/DD'),'coffeecanu','친절한 답변 감사합니다. 커피 한잔 하시고 오늘도 여유로운 하루 되세요.');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (7,4,to_date('20/04/02','RR/MM/DD'),'manager01','안녕하세요~ cjim님! 당신의 첫번째 책 FirstBook 관리자입니다. 게시판 하단에 있는 파일 첨부 기능을 사용하시면 됩니다. 키보드의 CTRL키를 누르고 여러 개를 선택하시면 한번에 여러 사진을 올리실 수도 있습니다.');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (8,4,to_date('20/04/02','RR/MM/DD'),'cjim','이야~고맙다!!!!!~~글만~~~죽어라고~~ 올릴뻔~~키키키~!!! 고맙다…………^^~~~ 사랑한다~~~~………………!!!');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (9,5,to_date('20/05/02','RR/MM/DD'),'manager01','안녕하세요~ neson님! 당신의 첫번째 책 FirstBook 관리자입니다. 안타깝게도 저희는 별도의 선물함 기능은 없습니다만, 통합적으로 코인제도를 운영중에 있습니다! 마이페이지에서 위클리 코인을 기다려서 꼭 눌러주시면 무료로 소설 감상이 가능합니다. ^^');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (10,5,to_date('20/05/03','RR/MM/DD'),'neson','위클리 코인 좋네요~ ㅎㅎ 답변 감사합니당');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (11,6,to_date('20/06/05','RR/MM/DD'),'manager01','안녕하세요~ scyang님! 당신의 첫번째 책 FirstBook 관리자입니다. 저희 서비스를 사랑해주셔서 진심으로 감사드립니다!! FirsBook은 작가님들과 계약한 출판사, 에이전시에서 소설을 받아 업데이트하는 2차 플랫폼인 점을 알려드리고 싶습니다. 문피아나 조아라에 비하면 업데이트가 느리지만 그만큼 양질의 소설을 공급해드리려 노력하고 있으며, 공모전을 통해 신인 작가들 작품도 많이 게시중에 있습니다. 조금만 기다려주시면 금새 새로운 소설들이 업데이트 되니 양해를 부탁드리겠습니다 ^^');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (12,7,to_date('20/07/15','RR/MM/DD'),'manager01','안녕하세요~ jmchun님! 당신의 첫번째 책 FirstBook 관리자입니다. 신고가 많이 누적되어 심려끼쳐드린 점 죄송하게 생각합니다. 신고에 대한 블라인드는 회원들의 재량으로 20회 누적시 이루어지지만, 차단 여부는 관리자 판단하에 이뤄집니다. 0살부터미적분에 달으신 해당 댓글은 차단과 무관한 것으로 판단되니 너무 염려 마시길 바랍니다. 향후 신고제도를 더욱 엄격히 보완하면 이런 불편한 점도 없어지실 겁니다. 조금만 기다려주세요 ^^');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (13,8,to_date('20/11/15','RR/MM/DD'),'manager01','안녕하세요~ shkim님! 당신의 첫번째 책 FirstBook 관리자입니다. 안타깝게도 회원님의 차단 기간(30일) 동안은 별도의 서비스 이용이 불가능하십니다. 공모전 결과나 수상시에 제공되는 상금 등에 대한 부분은 별도로 통지 가능한 부분이라 이 부분 양해 부탁드리겠습니다.');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (14,10,to_date('20/01/02','RR/MM/DD'),'manager01','안녕하세요~ tlkim님! 당신의 첫번째 책 FirstBook 관리자입니다. 마침 배너 디자인 공모전이 계획 중에 있습니다. 2021년 상반기에 시작될 예정이니 조금만 기다려주세면 곧 공지사항이 올라올겁니다. 궁금하신 사항이 해결되셨길 바랍니다.');

------FAQ

CREATE TABLE "FAQ" (
	"POST_NUM"	NUMBER NOT NULL PRIMARY KEY,
	"FAQ_POST_TITLE" VARCHAR2(300) NOT NULL,
	"FAQ_POST_CONTENT" VARCHAR2(1200) NOT NULL
);

Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (1,'구매만 하고 열람하지 않았는데 환불이 가능한가요?','열람하지 않았더라도 코인을 사용해서 구매하는 시점으로부터 환불은 불가능합니다. 단 , 웹소설 구매나 단행본 구매 이전에 코인은 환불이 가능합니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (2,'무료로 소설을 볼 수 있는 방법도 있나요?','네 가능합니다. 마이페이지에서 일주일에 한번 위클리 코인을 모아서 소설을 감상하실 수 있습니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (3,'일괄구매하는 방법이 알고 싶습니다.','일괄구매는 웹소설 페이지에서 가능합니다. 구매를 원하는 화수를 선택한 후 결제를 하시면 최소 1편에서 전편을 일괄 구매하실 수 있습니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (4,'악플을 다는 유저를 신고하고 싶어요. 신고절차는 어떻게 되나요.','댓글상 우측에 위치한 신고버튼을 눌러서 신고가 가능합니다. 누적회수가 20회를 넘어가면 댓글은 블라인드 처리되며 관리자의 검토 후 차단 여부가 결정됩니다. 단 무고한 신고에 대해서는 신고자 또한 처벌이 되니 유의하시기 바랍니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (5,'작품과 작가 등록은 어떻게 하나요?','FirstBook은 이미 계약한 작가들의 작품이 올라오는 2차플랫폼이며, 이외 신인 작가들의 작품은 공모전에서 보실 수 있습니다. 작가들이 곧바로 업로드하는 기능은 아직 제공되고 있지 않으며, 공모전의 경우도 저희쪽에서 서류 검토 후 전달해주신 파일을 업로드하는 형태로 이루어집니다. 작가 등록은 별도로 있지 않으며 회원 가입으로 가능하십니다. ');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (6,'코인을 선물하고 싶어요. ','아직까지 코인 선물 기능은 지원되고 있지 않습니다만 향후 추가 검토중인 기능 중 하나입니다. 감사합니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (7,'작가분과 얘기하고 싶은 게 있는데 쪽지 기능은 없나요? ','쪽지 기능은 저희 서비스에서 아직 제공하고 있지 않습니다. 향후 추가 검토중인 기능이니 조금만 기다려주시기 바랍니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (8,'구매 내역을 확인하고 싶은데 어떻게 하면될까요?','구매내역은 마이페이지 좌측 상단의 결제 내역에서 보실 수 있습니다. 또한 구매하신 소설은 마이페이지의 ''내 서재''에서 찾아보실 수 있습니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (9,'공모전에 출품하고 싶습니다. 일정은 어디서 확인하나요? ','공모전은 페이지 상단 공모전 버튼을 클릭하여 확인해보실 수 있으며, 공모전 일정은 공모전 페이지와 공지사항에서 알려드릴 예정입니다. 2020년 10월 4분기 이후로 매년분기마다 공모전이 진행되고 있습니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (10,'탈퇴는 어떻게 하나요?','회원 탈퇴는 마이페이지에서 가능합니다. 탈퇴시 보유한 코인은 자동 환불되지 않으니 환불 이후 탈퇴하시는 것을 권고드립니다. 또한 보유한 서재 또한 초기화되니 탈퇴에 앞서 신중하게 판단하시기 바랍니다.');

----

CREATE TABLE NOTICE (
	NOTICE_NUM NUMBER NOT NULL,
	NOTICE_DATE DATE NOT NULL,
	NOTICE_NAME VARCHAR2(100) NOT NULL,
	NOTICE_VIEW_COUNT NUMBER NOT NULL,
	NOTICE_CONTENT VARCHAR2(2000) NULL
    );

Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (1,to_date('19/06/01','RR/MM/DD'),'FirstBook 서비스 오픈!',5417,'오랜 준비끝에 신인과 작가, 독자를 위한 웹소설 플랫폼 First Book 서비스를 오픈합니다. \n저희 서비스는 타 플랫폼에서 하지 못한 상생을 추구하기 위해 낮은 수수료를 적용하고, 출판사와 작가에게 수익이 분배되는 코인 제도를 운영할 것입니다. 독자분들을 위해 일주일에 한번씩 위클리 코인도 제공할 예정입니다. \n또한 활발한 공모전 개최로 신인들의 등용문 역할을 할 예정입니다. 공모전은 2회의 테스트 기간을 거쳐 매해 분기별 진행을 목표로 하고 있습니다. 신인분들의 많은 참여와 관심 부탁드립니다.');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (2,to_date('19/07/05','RR/MM/DD'),'퍼북 독자님들 위클리 코인 받아가세용~~',9752,'공짜로 소설 보는 방법, 아직도 모르셨다구요?? \n 이런이런 지금 당장 마이페이지의 위클리 코인을 확인해주세요! 위클리 코인이 활성화 돼 있지 않나요? 가입시점으로부터 일주일마다 활성화된다구요~~\n 꼭꼭 챙겨서 독자님들 지갑 잘 보존하세용 ');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (3,to_date('19/08/05','RR/MM/DD'),'인기 작품들의 단행본 예약구매가 진행중입니다',4827,'너혼자만 레벨업, 3인칭 작가시점 등의 유명 웹소설이 단행본으로 발매됩니다. \n 저희 퍼북에서는 이 단행본들을 무료 배송에 10% 할인가로 판매 예정입니다. 많은 독자님들의 관심 바랍니다 ^^');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (4,to_date('19/10/01','RR/MM/DD'),'제1회 시범 공모전)) 출품작 모집',6384,'안녕하세요 신인 루키 작가님들! \n 넘치는 재능을 뽐낼 곳을 찾고 계시다구요? \n 퍼북 공모전에 작품을 출품하세요! \n 저희는 유명 웹툰, 드라마, 영화제작사와의 협조로 MSOU 또한 준비중에 있다구요. \n 10월 15일까지 출품작과 서류를 받고 있으니 꼭 확인해서 저희에게 보내주세요! \n 면밀히 검토하여 뽑은 16개의 소설이 토너먼트로 독자님들의 선택을 받게됩니다. \n 독자님들께는 소중하고 깨끗한 한표 부탁드릴께요~~~');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (5,to_date('19/10/16','RR/MM/DD'),'제1회 시범 공모전)) 16강 대진 발표',8396,'1회 시범 공모전 16강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (6,to_date('19/11/01','RR/MM/DD'),'제1회 시범 공모전)) 8강 대진 발표',4156,'1회 시범 공모전 8강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (7,to_date('19/11/15','RR/MM/DD'),'제1회 시범 공모전)) 4강 대진 발표',3462,'1회 시범 공모전 4강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (8,to_date('19/12/01','RR/MM/DD'),'제1회 시범 공모전)) 준결승! 대진 발표',5035,'1회 시범 공모전 준결승입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (9,to_date('19/12/15','RR/MM/DD'),'제1회 시범 공모전)) 결승!!!! 대진 발표',6461,'1회 시범 공모전 결승입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (10,to_date('20/01/15','RR/MM/DD'),'제1회 시범 공모전)) 대망의 결승 결과 발표',3788,'1회 시범 공모전 결승 결과 발표입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (11,to_date('20/07/01','RR/MM/DD'),'제2회 시범 공모전)) 출품작 모집',5872,'안녕하세요 신인 루키 작가님들! \n 넘치는 재능을 뽐낼 곳을 찾고 계시다구요? \n 퍼북 공모전에 작품을 출품하세요! \n 저희는 유명 웹툰, 드라마, 영화제작사와의 협조로 MSOU 또한 준비중에 있다구요. \n 7월 15일까지 출품작과 서류를 받고 있으니 꼭 확인해서 저희에게 보내주세요! \n 면밀히 검토하여 뽑은 16개의 소설이 토너먼트로 독자님들의 선택을 받게됩니다. \n 독자님들께는 소중하고 깨끗한 한표 부탁드릴께요~~~');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (12,to_date('20/07/15','RR/MM/DD'),'제2회 시범 공모전)) 16강 대진 발표',7362,'2회 시범 공모전 16강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (13,to_date('20/08/01','RR/MM/DD'),'제2회 시범 공모전)) 8강 대진 발표',5485,'2회 시범 공모전 8강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (14,to_date('20/08/15','RR/MM/DD'),'제2회 시범 공모전)) 4강 대진 발표',4765,'2회 시범 공모전 4강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (15,to_date('20/09/01','RR/MM/DD'),'제2회 시범 공모전)) 준결승! 대진 발표',3683,'2회 시범 공모전 준결승입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (16,to_date('20/09/15','RR/MM/DD'),'제2회 시범 공모전)) 결승!!!! 대진 발표',5398,'2회 시범 공모전 결승입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (17,to_date('20/09/30','RR/MM/DD'),'제2회 시범 공모전)) 대망의 결승 결과 발표',6362,'2회 시범 공모전 결승 결과 발표입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (18,to_date('20/10/01','RR/MM/DD'),'제3회 분기별 공모전)) 출품작 모집',4286,'안녕하세요 신인 루키 작가님들! \n 넘치는 재능을 뽐낼 곳을 찾고 계시다구요? \n 퍼북 공모전에 작품을 출품하세요! \n 저희는 유명 웹툰, 드라마, 영화제작사와의 협조로 MSOU 또한 준비중에 있다구요. \n 7월 15일까지 출품작과 서류를 받고 있으니 꼭 확인해서 저희에게 보내주세요! \n 면밀히 검토하여 뽑은 16개의 소설이 토너먼트로 독자님들의 선택을 받게됩니다. \n 독자님들께는 소중하고 깨끗한 한표 부탁드릴께요~~~');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (19,to_date('20/10/15','RR/MM/DD'),'제3회 분기별 공모전)) 16강 대진 발표',3942,'3회 분기별 공모전 16강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (20,to_date('20/10/31','RR/MM/DD'),'제3회 분기별 공모전)) 8강 대진 발표',5976,'3회 분기별 공모전 8강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (21,to_date('20/11/01','RR/MM/DD'),'제3회 분기별 공모전)) 4강 대진 발표',6398,'3회 분기별 공모전 4강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (22,to_date('20/11/15','RR/MM/DD'),'제3회 분기별 공모전)) 준결승! 대진 발표',4783,'3회 분기별 공모전 준결승입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (23,to_date('20/11/30','RR/MM/DD'),'제3회 분기별 공모전)) 결승!!!! 대진 발표',5962,'3회 분기별 공모전 결승입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (24,to_date('20/12/01','RR/MM/DD'),'제3회 분기별 공모전)) 대망의 결승 결과 발표',6329,'2회 시범 공모전 결승 결과 발표입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (25,to_date('20/12/15','RR/MM/DD'),'제4회 분기별 공모전)) 출품작 모집',4852,'안녕하세요 신인 루키 작가님들! \n 넘치는 재능을 뽐낼 곳을 찾고 계시다구요? \n 퍼북 공모전에 작품을 출품하세요! \n 저희는 유명 웹툰, 드라마, 영화제작사와의 협조로 MSOU 또한 준비중에 있다구요. \n 7월 15일까지 출품작과 서류를 받고 있으니 꼭 확인해서 저희에게 보내주세요! \n 면밀히 검토하여 뽑은 16개의 소설이 토너먼트로 독자님들의 선택을 받게됩니다. \n 독자님들께는 소중하고 깨끗한 한표 부탁드릴께요~~~');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (26,to_date('20/12/31','RR/MM/DD'),'제4회 분기별 공모전)) 16강 대진 발표`',5285,'2회 시범 공모전 16강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (27,to_date('21/01/01','RR/MM/DD'),'제4회 분기별 공모전)) 8강 대진 발표',6035,'2회 시범 공모전 8강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (28,to_date('21/01/15','RR/MM/DD'),'제4회 분기별 공모전)) 4강 대진 발표',5647,'2회 시범 공모전 4강입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (29,to_date('21/01/30','RR/MM/DD'),'제4회 분기별 공모전)) 준결승! 대진 발표',4721,'2회 시범 공모전 준결승입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (30,to_date('21/02/01','RR/MM/DD'),'제4회 분기별 공모전)) 결승!!!! 대진 발표',3461,'2회 시범 공모전 결승입니다!! 자세한 사항은 대진표를 참고해주세요!');
Insert into NOTICE (NOTICE_NUM,NOTICE_DATE,NOTICE_NAME,NOTICE_VIEW_COUNT,NOTICE_CONTENT) values (31,to_date('21/02/15','RR/MM/DD'),'제4회 분기별 공모전)) 대망의 결승 결과 발표',1652,'2회 시범 공모전 결승 결과 발표입니다!! 자세한 사항은 대진표를 참고해주세요!');


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




