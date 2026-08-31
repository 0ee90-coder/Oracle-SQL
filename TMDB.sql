INSERT INTO MV 
 (MV_ID
, TTL
, MV_RTNG
, RNNG_TM
, RLS_DT
, SMMR
, MAIN_PSTR_URL
, FB_URL
, X_URL
, INSTA_URL
, TGLN
, ORGNL_TTL
, PLYNG
, ORGNL_LNGG
, BDGT
, BX_OFFC_RVN)
VALUES
 (SEQ_MV_PK.NEXTVAL || '-spider-man-brand-new-day'
, '스파이더맨: 브랜드 뉴 데이'
, '12'
, 145
, TO_DATE('2026/07/29', 'YYYY/MM/DD')
, '4년 전 소중한 사람들을 지키기 위해 모두의 기억에서 사라진 피터 파커. 친절한 이웃 스파이더맨으로서 뉴욕을 지키며 고독한 삶을 살아가던 피터는 어느 날, 예상치 못한 DNA 변이로 인해 통제 불가능한 힘에 사로잡히고 그의 진짜 정체를 알고 있는 적까지 마주하게 된다. 타인의 의식을 조종하는 정체불명의 존재로 인해 모두가 피터를 노리는 적이 될 수 있는 혼란 속에서 피터는 다시 위협에 빠진 MJ와 모두를 지키기 위해 스파이더맨으로 그들 앞에 서게 되는데...'
, 'POSTER-URL'
, 'www.facebook.com/SpiderManMovie'
, 'x.com/SpiderManMovie'
, 'www.instagram.com/spidermanmovie'
, '스파이더맨의 새로운 날을 확인하라!'
, 'Spider-Man: Brand New Day'
, '개봉됨'
, '영어'
, 225000000
, 2219901026)
;

COMMIT;

ROLLBACK;

SELECT *
  FROM MV
;

SELECT SEQ_MV_PK.CURRVAL
  FROM DUAL
;

INSERT INTO  GNR
 (GNR_ID
, NM)
VALUES
 (SEQ_GNR_PK.NEXTVAL || '-science-fiction'
, 'SF')
;

INSERT INTO  GNR
 (GNR_ID
, NM)
VALUES
 (SEQ_GNR_PK.NEXTVAL || '-action'
, '액션')
;

INSERT INTO  GNR
 (GNR_ID
, NM)
VALUES
 (SEQ_GNR_PK.NEXTVAL || '-adventure'
, '모험')
;

SELECT *
  FROM GNR
;

COMMIT;

INSERT INTO MV_GNR
 (MV_GNR_ID
, MV_ID
, GNR_ID)
VALUES
 ('MG-'|| TO_CHAR(SYSDATE, 'YYYYMMDD-')|| LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0')
, '1-spider-man-brand-new-day'
, '1-science-fiction')
;

INSERT INTO MV_GNR
 (MV_GNR_ID
, MV_ID
, GNR_ID)
VALUES
 ('MG-'|| TO_CHAR(SYSDATE, 'YYYYMMDD-')|| LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0')
, '1-spider-man-brand-new-day'
, '2-action')
;

INSERT INTO MV_GNR
 (MV_GNR_ID
, MV_ID
, GNR_ID)
VALUES
 ('MG-'|| TO_CHAR(SYSDATE, 'YYYYMMDD-')|| LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0')
, '1-spider-man-brand-new-day'
, '3-adventure')
;

SELECT *
  FROM MV_GNR
;

COMMIT;

-- 모든 영화의 이름과 장르의 이름을 조회한다.
SELECT M.TTL
     , G.NM
  FROM MV M
 INNER JOIN MV_GNR MG
    ON M.MV_ID = MG.MV_ID 
 INNER JOIN GNR G
    ON G.GNR_ID = MG.GNR_ID
;    


INSERT INTO MV(MV_ID, TTL, MV_RTNG, RNNG_TM, RLS_DT, SMMR, MAIN_PSTR_URL, FB_URL, X_URL, INSTA_URL, TGLN, ORGNL_TTL, PLYNG, ORGNL_LNGG, BDGT, BX_OFFC_RVN) VALUES (SEQ_MV_PK.NEXTVAL|| '-insidious-out-of-the-further' ,'인시디어스: 그들이 넘어왔다','15', 106,TO_DATE('2026-08-20','YYYY/MM/DD'),'사후세계의 악령들로부터 딸과 일상을 지키기 위해 사투를 벌이는 이야기','POSTER_URL', 'www.facebook.com/InsidiousMovie','x.com/InsidiousMovie','www.instagram.com/insidiousmovie/','악의 문이 열렸다','Insidious: Out of the Further','개봉됨','영어',18000000,62207464);
INSERT INTO MV(MV_ID, TTL, MV_RTNG, RNNG_TM, RLS_DT, SMMR, MAIN_PSTR_URL, FB_URL, X_URL, INSTA_URL, TGLN, ORGNL_TTL, PLYNG, ORGNL_LNGG, BDGT, BX_OFFC_RVN) VALUES (SEQ_MV_PK.NEXTVAL|| '-spider-man-no-way-home' ,'스파이더맨: 노 웨이 홈','12', 148,TO_DATE('2021-12-15','YYYY/MM/DD'),'미스테리오의 계략으로 세상에 정체가 탄로난 스파이더맨 피터 파커는 하루 아침에 평범한 일상을 잃게 된다. 문제를 해결하기 위해 닥터 스트레인지를 찾아가 도움을 청하지만 뜻하지 않게 멀티버스가 열리면서 각기 다른 차원의 불청객들이 나타난다. 닥터 옥토퍼스를 비롯해 스파이더맨에게 깊은 원한을 가진 숙적들의 강력한 공격에 피터 파커는 사상 최악의 위기를 맞게 되는데…','POSTER_URL', 'www.facebook.com/SpiderManMovie','x.com/spidermanmovie','www.instagram.com/spidermanmovie/','무너진 세계, 차원을 뛰어넘는 위협','Spider-Man: No Way Home','개봉됨','영어',200000000,1921426073);
INSERT INTO MV(MV_ID, TTL, MV_RTNG, RNNG_TM, RLS_DT, SMMR, MAIN_PSTR_URL, FB_URL, X_URL, INSTA_URL, TGLN, ORGNL_TTL, PLYNG, ORGNL_LNGG, BDGT, BX_OFFC_RVN) VALUES (SEQ_MV_PK.NEXTVAL, '헌트','15', 131,TO_DATE('2022-08-10','YYYY/MM/DD'),'북한 고위 관리가 망명을 요청한 이후, 안기부 해외팀 차장 박평호와 국내팀 차장 김정도는 동림으로 알려진 안기부 내 스파이, 남파간첩 총책임자를 밝혀내는 임무를 맡는다. 이윽고 동림이 국가 안보를 위태롭게 할 1급 비밀 정보를 누설하기 시작하고 안기부의 해외팀과 국내팀은 서로를 조사하기에 이른다. 당장 스파이를 밝혀내지 못하면 자신이 혐의를 받을 수 있는 일촉즉발의 상황에서 평호와 정도는 서서히 진실을 찾아내고, 마침내 대한민국 1호 암살 작전이라는 거대한 사건과 직면하게 되는데...','POSTER_URL', 'www.facebook.com/huntofficialmovie','x.com/huntthemovie','www.instagram.com/huntthemovie/','조직 내 침투한 스파이를 색출하라',NULL,'개봉됨','한국어',17000000,25994);
INSERT INTO MV(MV_ID, TTL, MV_RTNG, RNNG_TM, RLS_DT, SMMR, MAIN_PSTR_URL, FB_URL, X_URL, INSTA_URL, TGLN, ORGNL_TTL, PLYNG, ORGNL_LNGG, BDGT, BX_OFFC_RVN) VALUES (SEQ_MV_PK.NEXTVAL|| '-the-odyssey' ,'오디세이','15', 173,TO_DATE('2026-08-05','YYYY/MM/DD'),'10년간 이어진 트로이 전쟁을 승리로 이끈 영웅 ''오디세우스''는 왕의 부재를 틈타 침탈과 권력 다툼이 벌어진 왕국에서 그를 기다리고 있는 아내 ''페넬로페''와 아들 ''텔레마코스''에게 돌아가기 위한 여정에 나선다. 그러나 신들의 분노를 산 그의 귀환 앞에는 거대한 폭풍과 괴물들, 그리고 거스를 수 없는 운명의 시련이 기다리고 있는데…','POSTER_URL', 'www.facebook.com/OdysseyMovie','x.com/odysseymovie','www.instagram.com/theodysseymovie/','신에 맞서다','The Odyssey','개봉됨','영어',250000000,1446194550);
INSERT INTO MV(MV_ID, TTL, MV_RTNG, RNNG_TM, RLS_DT, SMMR, MAIN_PSTR_URL, FB_URL, X_URL, INSTA_URL, TGLN, ORGNL_TTL, PLYNG, ORGNL_LNGG, BDGT, BX_OFFC_RVN) VALUES (SEQ_MV_PK.NEXTVAL, '군체','15', 123,TO_DATE('2026-05-21','YYYY/MM/DD'),'서울 도심의 초고층 빌딩에서 정체불명의 집단 감염사태가 발생한다. 건물은 순식간에 봉쇄되고, 그 안에 있던 사람들은 그대로 고립된다. 처음에는 짐승처럼 기어다니던 감염자들은 점점 진화하며 두 발로 걷기 시작하고, 사람을 식별하며 무리를 지어 생존자들을 공격한다. 생명공학자 권세정과 생존자들은 자신의 몸에 백신을 주입했다고 신고한 서영철을 찾아 구조대가 기다리는 옥상으로 향한다. 하지만 올라갈수록 상황은 점점 더 예측할 수 없게 변해가고, 서영철은 감염자들을 앞세워 생존자들 앞을 막아서는데...','POSTER_URL', NULL,NULL,NULL,'새로운 진화의 시작',NULL,'개봉됨','한국어',NULL,NULL);
INSERT INTO MV(MV_ID, TTL, MV_RTNG, RNNG_TM, RLS_DT, SMMR, MAIN_PSTR_URL, FB_URL, X_URL, INSTA_URL, TGLN, ORGNL_TTL, PLYNG, ORGNL_LNGG, BDGT, BX_OFFC_RVN) VALUES (SEQ_MV_PK.NEXTVAL|| '-project-hail-mary' ,'프로젝트 헤일메리','12', 157,TO_DATE('2026-03-18','YYYY/MM/DD'),'눈을 떠보니 아득한 우주의 한가운데에서 깨어난 중학교 과학교사 그레이스는 희미한 기억 속에서 자신이 죽어가는 태양으로부터 지구와 인류를 살릴 마지막 희망으로 이곳에 왔다는 사실을 알게 된다. 잃어버린 기억으로 인해 모든 것이 혼란스러운 상황에서 그레이스는 우연히 우주 한복판에서 같은 목적으로 온 뜻밖의 존재 로키를 만나게 되고 그레이스와 로키는 각 두 행성의 운명을 건 마지막 미션을 수행하러 떠나게 되는데…','POSTER_URL', 'www.facebook.com/ProjectHailMary','x.com/projecthailmary','www.instagram.com/projecthailmary/','두 세계의 운명을 건 단 하나의 미션','Project Hail Mary','개봉됨','영어',200000000,684234722);
INSERT INTO MV(MV_ID, TTL, MV_RTNG, RNNG_TM, RLS_DT, SMMR, MAIN_PSTR_URL, FB_URL, X_URL, INSTA_URL, TGLN, ORGNL_TTL, PLYNG, ORGNL_LNGG, BDGT, BX_OFFC_RVN) VALUES (SEQ_MV_PK.NEXTVAL|| '-titanic' ,'타이타닉','15', 194,TO_DATE('1999-03-13','YYYY/MM/DD'),'"내 인생의 가장 큰 행운은 당신을 만난 거야" 우연한 기회로 티켓을 구해 타이타닉호에 올라탄 자유로운 영혼을 가진 화가 ‘잭’(레오나르도 디카프리오)은 막강한 재력의 약혼자와 함께 1등실에 승선한 ‘로즈’(케이트 윈슬렛)에게 한눈에 반한다. 진실한 사랑을 꿈꾸던 ‘로즈’ 또한 생애 처음 황홀한 감정에 휩싸이고, 둘은 운명 같은 사랑에 빠지는데… 가장 차가운 곳에서 피어난 뜨거운 사랑! 영원히 가라앉지 않는 세기의 사랑이 펼쳐진다!','POSTER_URL', 'www.facebook.com/TitanicMovie','x.com/TitanicMovie','www.instagram.com/titanicmovie/','차가운 바닷물 속에 잠든 러브 스토리','Titanic','개봉됨','영어',200000000,2264162353);
INSERT INTO MV(MV_ID, TTL, MV_RTNG, RNNG_TM, RLS_DT, SMMR, MAIN_PSTR_URL, FB_URL, X_URL, INSTA_URL, TGLN, ORGNL_TTL, PLYNG, ORGNL_LNGG, BDGT, BX_OFFC_RVN) VALUES (SEQ_MV_PK.NEXTVAL|| '-harry-potter-and-the-philosopher-s-stone' ,'해리 포터와 마법사의 돌 ','ALL', 152,TO_DATE('2001-12-14','YYYY/MM/DD'),'해리 포터는 위압적인 버논 숙부와 냉담한 이모 페투니아, 욕심 많고 버릇없는 사촌 더즐리 밑에서 갖은 구박을 견디며 계단 밑 벽장에서 생활한다. 이모네 식구들 역시 해리와의 동거가 불편하기는 마찬가지. 이모 페투니아에겐 해리가 이상한 언니 부부에 관한 기억을 떠올리게 만드는 달갑지 않은 존재다. 11살 생일이 며칠 앞으로 다가왔지만 한번도 생일파티를 치르거나 제대로 된 생일선물을 받아 본 적이 없는 해리로서는 특별히 신날 것도 기대 할 것도 없다. 11살 생일을 며칠 앞둔 어느 날 해리에게 초록색 잉크로 쓰여진 한 통의 편지가 배달된다. 그 편지의 내용은 다름 아닌 해리의 11살 생일을 맞이하여 호그와트에서 보낸 입학 초대장이었다. 그리고 해리의 생일을 축하하러 온 거인 해그리드는 해리가 모르고 있었던 해리의 진정한 정체를 알려주는데...','POSTER_URL', 'www.facebook.com/harrypottermovie','x.com/HarryPotterFilm','www.instagram.com/harrypotterfilm/','마법이 시작된다','Harry Potter and the Philosopher''s Stone','개봉됨','영어',125000000,1029374615);
INSERT INTO MV(MV_ID, TTL, MV_RTNG, RNNG_TM, RLS_DT, SMMR, MAIN_PSTR_URL, FB_URL, X_URL, INSTA_URL, TGLN, ORGNL_TTL, PLYNG, ORGNL_LNGG, BDGT, BX_OFFC_RVN) VALUES (SEQ_MV_PK.NEXTVAL|| '-the-lord-of-the-rings-the-return-of-the-king' ,'반지의 제왕: 왕의 귀환','12', 199,TO_DATE('2003-12-17','YYYY/MM/DD'),'사우론이 인간들의 마지막 요새인 곤도르를 향해 야욕을 드러내고 있는 한편, 아라곤은 쇠락해가고 있는 곤도르의 재건을 위해 왕위 계승을 신중하게 결정지어야만 하는 상황. 이제 중간대륙의 미래는 그의 어깨에 달려있는 것. 사우론이 이끄는 어둠의 군대와의 마지막 전투를 위해 간달프는 곤도르에 흩어져 있던 병사들을 모으고, 로한의 왕 세오덴에게 도움을 받기도 하지만 사우론의 군대에 비하면 열세를 면치 못한다. 그러나 그들은 중간대륙을 사우론의 야욕으로부터 지키려는 사명감과, 마지막 반지 운반자에게 임무를 끝낼 기회를 주기 위해 어둠의 군대를 향해 돌진하게 되는데...','POSTER_URL', NULL,NULL,NULL,'곤도르의 진정한 왕이 돌아왔다','The Lord of the Rings: The Return of the King','개봉됨','영어',94000000,1118888979);


SELECT *
  FROM MV
 ORDER BY MV_ID ASC
;




INSERT INTO GNR(GNR_ID, NM) VALUES (SEQ_GNR_PK.NEXTVAL|| '-horror','공포');
INSERT INTO GNR(GNR_ID, NM) VALUES (SEQ_GNR_PK.NEXTVAL|| '-thriller','스릴러');
INSERT INTO GNR(GNR_ID, NM) VALUES (SEQ_GNR_PK.NEXTVAL|| '-mystery','미스터리');
INSERT INTO GNR(GNR_ID, NM) VALUES (SEQ_GNR_PK.NEXTVAL|| '-drama','드라마');
INSERT INTO GNR(GNR_ID, NM) VALUES (SEQ_GNR_PK.NEXTVAL|| '-fantasy','판타지');
INSERT INTO GNR(GNR_ID, NM) VALUES (SEQ_GNR_PK.NEXTVAL|| '-romance','로맨스');

SELECT *
  FROM GNR
 ORDER BY GNR_ID ASC
;

INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-'||TO_CHAR(SYSDATE, 'YYYYMMDD-')||LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '1-science-fiction', '1-spider-man-brand-new-day');

INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-new-york-city','new york city');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-secret-identity','secret identify');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-hero','hero');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-haunted-house','haunted house');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-supernatural','supernatural');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-cult','cult');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-loss-of-loved-one','loss of loved one');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-showdown','showdown');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-spy','spy');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-assassin','assassin');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-intelligence','intelligence');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-greek-mythology','greek mythology');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-trojan-war','trojan war');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-ship','ship');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-zombie','zombie');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-coma','coma');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-based-on-novel-or-book','based on novel or book');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-sun','sun');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-elves','elves');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-dwarf','dwarf');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-soulmates','soulmates');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-atlantic-ocean','atlantic-ocean');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-evacuation','evacuation');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-london-england','london-england');
INSERT INTO KWRD(KWRD_ID, KWRD_NM) VALUES(SEQ_KWRD_PK.NEXTVAL||'-witch','witch');

SELECT *
  FROM KWRD
;

INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '1-spider-man-brand-new-day','1-science-fiction');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '15-spider-man-no-way-home','1-science-fiction');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '1-spider-man-brand-new-day','2-action');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '15-spider-man-no-way-home','2-action');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '1-spider-man-brand-new-day','3-adventure');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '15-spider-man-no-way-home','3-adventure');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '14-insidious-out-of-the-further','10-horror');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '14-insidious-out-of-the-further','11-thriller');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '16','2-action');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '16','12-mystery');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '16','13-drama');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '17-the-odyssey','3-adventure');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '17-the-odyssey','2-action');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '17-the-odyssey','14-fantasy');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '18','2-action');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '18','10-horror');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '18','1-science-fiction');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '19-project-hail-mary','1-science-fiction');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '19-project-hail-mary','3-adventure');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '22-the-lord-of-the-rings-the-return-of-the-king','3-adventure');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '22-the-lord-of-the-rings-the-return-of-the-king','14-fantasy');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '22-the-lord-of-the-rings-the-return-of-the-king','2-action');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '20-titanic','13-drama');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '20-titanic','15-romance');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '21-harry-potter-and-the-philosopher-s-stone','3-adventure');
INSERT INTO MV_GNR(MV_GNR_ID,MV_ID,GNR_ID) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_MV_GNR_PK.NEXTVAL, 6, '0'), '21-harry-potter-and-the-philosopher-s-stone','14-fantasy');

SELECT *
  FROM MV_GNR
;

INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '1-spider-man-brand-new-day','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '1-spider-man-brand-new-day','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '1-spider-man-brand-new-day','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '14-insidious-out-of-the-further','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '14-insidious-out-of-the-further','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '14-insidious-out-of-the-further','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '15-spider-man-no-way-home','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '15-spider-man-no-way-home','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '16','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '16','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '17-the-odyssey','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '17-the-odyssey','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '18','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '18','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '19-project-hail-mary','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '19-project-hail-mary','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '22-the-lord-of-the-rings-the-return-of-the-king','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '22-the-lord-of-the-rings-the-return-of-the-king','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '20-titanic','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '20-titanic','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '21-harry-potter-and-the-philosopher-s-stone','VD_URL');
INSERT INTO VD(VD_ID,MV_ID,VD_URL) VALUES('MG-' || TO_CHAR(SYSDATE, 'YYYYMMDD-') || LPAD(SEQ_VD_PK.NEXTVAL, 6, '0'), '21-harry-potter-and-the-philosopher-s-stone','VD_URL');

SELECT *
  FROM VD
;

ROLLBACK;

-- 스파이더맨 브랜드 뉴 데이의 관람등급을 ALL 로 변경한다.
UPDATE MV
   SET MV_RTNG = 'ALL'
 WHERE MV_ID = '1-spider-man-brand-new-day'  
;

-- 스파이더맨 브랜드 뉴 데이의 관람등급을 ALL로 상영시간을 300분으로 변경한다.
UPDATE MV
   SET MV_RTNG = 'ALL'
     , RNNG_TM = 300
 WHERE MV_ID = '1-spider-man-brand-new-day'
;

-- 스파이더맨 브랜드 뉴 데이의 관람등급을 ALL로 상영시간을 300분으로 제목은 NULL로 변경한다.
UPDATE MV
   SET MV_RTNG = 'ALL'
     , RNNG_TM = 300
     , TTL = NULL
 WHERE MV_ID = '1-spider-man-brand-new-day'
;

-- 스파이더맨 브랜드 뉴 데이의 관람등급을 ALL로 상영시간을 300분으로 제목은 'ACACACACACACACACACACACACACACACAACACACACACACAC'로 변경한다.
UPDATE MV
   SET MV_RTNG = 'ALL'
     , RNNG_TM = 300
     , TTL = 'ACACACACACACACACACACACACACACACAACACACACACACAC'
 WHERE MV_ID = '1-spider-man-brand-new-day'
;

-- SF, 액션, 모험
-- 스파이더맨 브랜드 뉴 데이의 장르를 SF, 액션, 공포 로 변경한다.
UPDATE MV_GNR
   SET GNR_ID = '10-horror'
 WHERE MV_ID = '1-spider-man-brand-new-day'
   AND GNR_ID = '3-adventure'
;

SELECT *
  FROM MV_GNR
 WHERE MV_ID = '1-spider-man-brand-new-day'
;
SELECT *
  FROM MV
;

ROLLBACK;

-- DELETE
DELETE 
  FROM TABLE_NAME
 WHERE CONDITION
;

-- 스파이더맨 브랜드 뉴 데이의 장르를 삭제한다.
DELETE
  FROM MV_GNR 
 WHERE MV_ID = '1-spider-man-brand-new-day'  
;

ALTER TABLE TMDB.MV ADD DEL_YN CHAR(1 CHAR) DEFAULT 'N' NOT NULL;
COMMENT ON COLUMN TMDB.MV.DEL_YN IS 'N: 삭제 안됨, Y: 삭제 완료';

-- 
UPDATE MV
   SET DEL_TN = 'Y'
 WHERE MV_ID = '1-spider-man-brand-new-day'
;


SELECT *
  FROM MV
 WHERE DEL_YN = 'N'

SELECT *
  FROM MV-GNR
;

