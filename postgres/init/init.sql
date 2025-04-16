-- Create the table for the kkbox information
CREATE TABLE "public"."kkbox_info" (
    "track_id" varchar(50) NOT NULL,
    "track_name" varchar(255) NOT NULL,
    "artist_id" varchar(50) NOT NULL,
    "artist_name" varchar(255) NOT NULL,
    "album_id" varchar(50) NOT NULL,
    "album_name" varchar(255) NOT NULL,
    "release_date" varchar(50),
    "tags" jsonb,
    PRIMARY KEY ("track_id")
);

-- Create the table for the ytmusic information
CREATE TABLE "public"."ytmusic_info" (
    "video_id" varchar(50) NOT NULL,
    "track_name" varchar(255) NOT NULL,
    "artist_ids" jsonb NOT NULL,
    "artist_names" jsonb NOT NULL,
    "author" varchar(255) NOT NULL,
    "album_id" varchar(50) NOT NULL,
    "album_name" varchar(255) NOT NULL,
    "release_year" varchar(50),
    "tags" jsonb,
    "lyrics_id" varchar(50),
    "lyrics" text,
    PRIMARY KEY ("video_id")
);

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS tag_id_seq;

-- Create the table for the tag
CREATE TABLE "public"."tag" (
    "id" int4 NOT NULL DEFAULT nextval('tag_id_seq'::regclass),
    "tag_name" varchar(50) NOT NULL,
    "deprecated" bool NOT NULL DEFAULT false,
    PRIMARY KEY ("id")
);

-- kkbox data init
INSERT INTO "public"."kkbox_info" ("track_id", "track_name", "artist_id", "artist_name", "album_id", "album_name", "release_date", "tags") VALUES
('0kaIfL04qf_Dg_hdFj', '大城小愛', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'TZDhD6uPIu_YeocBWr', '蓋世英雄 (Heroes of Earth)', '20051230', NULL),
('0kZ2XJ04qf_Dgvrl3l', '聽不到', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '1-2m2sbXCvM0feKXkf', '戀愛的力量', '20031122', NULL),
('0lak-7uHs1XUcsPk7s', '存在', '9-woBH8QpgvpPFuwXy', '汪峰', 'CqxKb6ABmpvC8FnGP2', '生無所求', '20180223', NULL),
('0lo2q_q3s1XUdNPHWE', '因為愛', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', '0tUY8mRsK_vh-zkTUF', '韋禮安首張同名全創作專輯', '20100604', NULL),
('0nyZ705sHT59ZyCkaH', 'LAST DANCE', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', 'WsnCSIaDjmG2BT7RNv', '愛情的盡頭', '19960600', NULL),
('0oCs6fGHhv4OQHTaiN', '做事人', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', '4qFpin3VwYJTTma7UE', '電火王', '20180822', NULL),
('0pp0TYF1MinpWHxuUo', '如果可以 (Red Scarf) - 電影"月老"主題曲', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', 'Cl3qhY1BhWIkDjoAwA', '如果可以 (Red Scarf) - 電影"月老"主題曲', '20211105', NULL),
('0qkYKglakH9Q88BJyP', '倫敦的愛情  ', '4kf5MixqN3_1In52_l', '藍又時 (Shadya Lan)', 'HYJDJzkAU1EtVwskd7', '二號創作專輯 倫敦的愛情', '20100507', NULL),
('0qubHqr6kH9Q8lGfGy', '在你身邊 - 電視劇<愛的生存之道>片頭曲', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', '4qqAP231wYJTRLft62', '有所畏', '20140325', NULL),
('0sBhyNMCDz1b9y8E49', '是不是這樣的夜晚你才會這樣的想起我 (Shi Bu Shi Zhe Yang De Ye Wan Ni Cai Hui Zhe Yang De Xiang Qi Wo)', 'LXnxccxRSEf7Qrgj3J', '吳宗憲 (Jacky Wu)', 'GoZNHntNzZWl_hHzNR', '吳盡的愛 (Endless Love)', '20000617', NULL),
('0sE2UQMCDz1b_RXSyc', '聽媽媽的話', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '4m3pcRFE2kVG7k3-ep', '依然范特西 (Still Fantasy)', '20060905', NULL),
('0sIn4NMCDz1b-VIR2L', '一首簡單的歌', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'Km6wUP5qmUrTlD-hN-', '心中的日月', '20041231', NULL),
('0spfnZKiDz1b-tiiVz', '怨偶 Feat. 艾怡良 Eve Ai (Tough Love Feat. Eve Ai)', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', 'Cnuy6qRl4d6Z2oA89h', '廢物 (Loser)', '20190605', NULL),
('0sQeseMCDz1b9dEz52', '阿飛的小蝴蝶', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', 'GkqX6dGex3YZLAsbLs', '王妃', '20090717', NULL),
('0t-ggbnwKUfrA-1oEq', '屋頂 (Wu Ding)', 'LXnxccxRSEf7Qrgj3J', '吳宗憲 (Jacky Wu)', 'GoZNHntNzZWl_hHzNR', '吳盡的愛 (Endless Love)', '20000617', NULL),
('0tjI8xnwKUfrDCmjoK', 'Come back to me - 三立偶像劇<真愛黑白配>片頭曲', 'PX1LARGILmWjgk723m', '畢書盡 (Bii)', 'DXqIG7MfYpMkjJUOwR', 'COME BACK TO Bii', '20130516', NULL),
('1_a9_Euk_TKl68sVwq', '知足', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', '4keFDOYXF4KmWVieWj', '知足 just my pride 最真傑作選', '20050826', NULL),
('1aB00UwX0t4ry9Se2w', '明明就', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '9YMqiF0HpTG8IZrErD', '十二新作', '20121228', NULL),
('1-d9ynVXWDhieTa31Q', '倔強', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', 'H_lzXD4H2kp-8k-uPJ', '任意門 (My Other Self)', '20100401', NULL),
('1-_jldbXWDhie2q40X', '傘下 - 電視劇《歡喜來逗陣》片尾曲', 'Wov16OPmMb0q5Ifcga', '張宇 (Phil Chang)', 'CrKUP595yWtohoLp9R', '張宇戲劇主題曲精選 (2008-2011)', '20220430', NULL),
('1__q49nE_TKl7ssckd', '你要不要吃哈密瓜 (How much do you know about the melon)', '9ZHTY_i6Jj_jI2Evam', '告五人 (AccuseFive)', 'GkXypJHOx3YZKdLHHb', '迷霧之子 (Let go)', '20171006', NULL),
('1-rus8VXWDhiczEISc', '不，完美 - 八大戲劇『加油!金順』片頭曲', 'KqxZtUJYQwYgl4Jy7l', '李玖哲 (Nicky Lee)', 'Gka9-eGex3YZLRdWrn', '不，完美', '20080822', NULL),
('1-Wh1MV3WDhieftr1D', '愛要怎麼說出口 (How Could I Tell You That I Love You)', '4rEnL_ak_yCH8DgDfp', '趙傳', '8oSZfgKQ3_AF7l6oWe', '一顆滾石的25年 (A Rolling Stone)', '20140606', NULL),
('1X3TPVZ19YZDxLEkQQ', '改變自己 (Gai Bian Zi Ji)', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'KsUH7GNedkIB9WsynW', '改變自己 (Change Me)', '20070628', NULL),
('1-y0wxVXWDhifq1N6S', '非你莫屬', '4rZFD_ak_yCH-F1Uws', 'TANK 呂建忠', '0kosU9zgc5pS4oIDLD', '延長比賽 Keep Fighting', '20070119', NULL),
('1ZDhnGzMmUN-5ZTD9C', '撐腰', '4tvrYujJ8jt7Fpy1oq', '羅志祥 (Show Lo)', 'OnC0RrGOrs6SqP-mNi', '潮男正傳', '20081226', NULL),
('1ZgFnu68mUN-4omHWC', '不吃早餐才是一件很嘻哈的事', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', '9-pivLhimwqbJTMFMG', '貧民百萬歌星 2009-2012 Best Singles Collection', '20120713', '[2]'),
('1-zikRVXWDhiertlaG', '仰望', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '8nm6YsfEHSCv16FEtt', '仰望 楊丞琳 慶功典藏版 (Longing for ... (Special Edition))', '20110926', NULL),
('1Zrgu568mUN-5jQh19', '三個心願', '8sG0oWl8zbMOm2IwTD', '飛兒樂團 (F.I.R.)', '0oux7B00u_GpBCZWEa', '愛‧歌姬', '20070928', NULL),
('1_ZvXfuk_TKl5LpA0S', '暖暖', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '-kgIh-LxzpOHQwfNvH', '親親', '20061004', NULL),
('__25XNmJVATFd2HdOv', '不顧一切的愛', '8qHLhzjl89Yankefi7', '李聖傑 (Sam Lee)', 'GmaJkTPkte5pDzPwS4', '絕對痴心．手放開', '20041126', NULL),
('4k1ijdwvWkaL9ZUdcq', '你不是真正的快樂', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'Gmw-QSPkte5pB-EIY5', '後 青春期的詩', '20081023', NULL),
('4k1Ox1y_WkaL_QvmQy', '派對動物 (Party Animal)', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'XXgRQh5qEjhjB70Jha', '自傳 (history of Tomorrow)', '20160820', NULL),
('4k9_zJwvWkaL8jUVn9', '不會消失的夜晚', 'SptsQOYIHt6I_hu-Wu', '信樂團 (Shin Band)', 'L-uFEDxVKwYNqjMWVP', '挑信', '20041203', NULL),
('4kAHF6-fWkaL8j2MjI', '最後一堂課 (Graduation) - 《媽，別鬧了！》影集片尾曲', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', 'SmKi3_sSgNqlRgIQ3d', '最後一堂課 (Graduation) - 《媽，別鬧了！》影集片尾曲', '20220722', NULL),
('4kDRXS0_WkaL8WHzsm', '青春住了誰', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '9Zom8Lg3_BzuMshN-d', '青春住了誰', '20170915', NULL),
('4kJ-bbwvWkaL_TdkXS', '如果我變成回憶', '4rZFD_ak_yCH-F1Uws', 'TANK 呂建忠', 'Kq_4OazKOnJP6hPaOt', '第三回合', '20090529', NULL),
('4kmMfewvWkaL813wLa', '時光機', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '5aqrTZwYczZYRthb7q', '魔杰座', '20081015', NULL),
('4kn83YwvWkaL9Dqo1b', '再見王子', '5YNsuSMRDF8kojj_QJ', '棉花糖 (katncandix2)', 'X_PptxcUyKgAmlCeno', '再見王子', '20100514', NULL),
('4kogHSwvWkaL-DVJzA', '忘了你忘了我 (Forget About You/Forget About Me)', 'OtTyughrlH1BMW_ev5', '王傑 (Dave Wang)', 'StOWgEOOyDQXzhCsXl', '王傑超級精選集一番傑作 - 一番傑作', '19960401', NULL),
('4kysbewvWkaL-Z84nk', '我還想她', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', '5ZOjcwHymfP8P4Ko3l', 'JJ陸', '20081020', NULL),
('4lFk72nq9Z5EZISxPL', '分享', 'PZZWTTZg4cM7s0_48c', '伍思凱 (Sky Wu)', 'X_coBzcUyKgAmZSlbU', '分享伍思凱', '20000222', NULL),
('4lrCrunq9Z5EY9FXiM', '中國話', 'LXmR8cxRSEf7TtNJrW', 'S.H.E', 'Gtvwg3i-PnecdypqEg', 'PLAY', '20070511', NULL),
('4lwWD3nq9Z5EbqrPRZ', '最熟悉的陌生人 (The Most Familiar Stranger)', 'CmUb4SnT1F5sNiD_9N', '蕭亞軒 (Elva Hsiao)', 'XZk6K1XCigL04nw1ii', '蕭亞軒--', '20140801', NULL),
('4lyOTMnq9Z5EbINpes', 'Letting Go', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', 'LZAiYIgu2Z7b1YKEC7', '說到愛', '20111118', NULL),
('4m2mXe6nf387ol9dH-', '我做的是愛不是夢', '4pCYG3uv_-WY5d9QYt', '周湯豪 (NICKTHEREAL)', 'PXwkC2NnQ7mrzjuGsF', '我做的是愛不是夢', '20220826', NULL),
('4m59yJ13f387oieAg2', '獨唱情歌', '4rZFD_ak_yCH-F1Uws', 'TANK 呂建忠', '8pMNtA4svmYiMsBkIE', 'Fighting! 生存之道', '20060224', NULL),
('4mbT9y13f387q9DEj2', '勢在必行', 'PX1LARGILmWjgk723m', '畢書盡 (Bii)', 'DXqIG7MfYpMkjJUOwR', 'COME BACK TO Bii', '20130516', NULL),
('4mGFmQ13f387qfrdLz', '無底洞 (Deep)', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', 'Skcm6H7qdNq4UXM_Zl', '陌生人', '20030605', NULL),
('4mh46W13f387pVn_52', '第一天 (First Day)', '9aNGsD_q8L4InIWGpJ', '孫燕姿 (Yanzi Sun)', 'HYxB-qmgU1EtUVxG1Q', '完美的一天', '20051007', NULL),
('4mmtaU13f387pdJ0BU', '傷心太平洋', '8lxO5tOuEe4fR14NR7', '任賢齊 (Richie Jen)', 'L-KgsDxVKwYNoSEbZa', '愛像太平洋', '19980828', NULL),
('4mUeyL13f387rRk_vj', '最近', '8qHLhzjl89Yankefi7', '李聖傑 (Sam Lee)', 'GqGNgQrAKRoy9S3PIB', '關於妳的歌', '20060616', NULL),
('4nb7Wl043TYuoUbhoN', '以後別做朋友 (The Distance of Love)', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', '5YIFbMpHsLpPwsjFwJ', '學著愛 (My Way to Love)', '20141219', NULL),
('4nhh-A0I3TYuoy4QGT', 'Lydia (Lydia)', '8sG0oWl8zbMOm2IwTD', '飛兒樂團 (F.I.R.)', 'P-KiK-ljmaj9r9u9pF', '飛兒樂團', '20040423', NULL),
('4nlIfO0I3TYuqwBewD', '嗨嗨人生', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', '9-pivLhimwqbJTMFMG', '貧民百萬歌星 2009-2012 Best Singles Collection', '20120713', NULL),
('4nRQar0I3TYuqgQKgJ', '亞特蘭提斯', '8sG0oWl8zbMOm2IwTD', '飛兒樂團 (F.I.R.)', 'L-qlQBxVKwYNpIWqZr', '亞特蘭提斯', '20110401', NULL),
('4nucbm943TYuqgaVvN', '愛瘋頭', '4tvrYujJ8jt7Fpy1oq', '羅志祥 (Show Lo)', 'PYSK9rrGqns_S6FPWs', '羅生門', '20100115', NULL),
('4nz5-f0I3TYupqxTIL', '關於妳的歌', '8qHLhzjl89Yankefi7', '李聖傑 (Sam Lee)', 'GqGNgQrAKRoy9S3PIB', '關於妳的歌', '20060616', NULL),
('4oe7Z0q6tWt5mJB_bA', '當', '8t-sfOpHItW_g3GiAp', '動力火車 (Power Station)', 'CmlH894WAc3pxS6KkN', '就是紅光輝全紀錄', '20040402', NULL),
('4ogoDRiatWt5nZ6rlT', '好久不見', 'GsaswAHedyFlIrklmy', '5566', '5Y3mpgoHsLpPx6xdVz', '好久不見', '20050817', NULL),
('4okhm9qKtWt5mort9J', '愛不需要裝乖 (feat. 王詩安) (Love Doesn''t Need To Pretend)', '4nnlQg-K2KLL4Qwdrg', '謝和弦 (R-chord)', 'Klvd1Z4JBqJm-OWIbM', '不需要裝乖 (The Crazy Ones)', '20150605', NULL),
('4olW86q6tWt5kOPjHt', 'MC來了', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', '9-pivLhimwqbJTMFMG', '貧民百萬歌星 2009-2012 Best Singles Collection', '20120713', NULL),
('4p4TN4CBiO7N5PPzZ6', '年少有為', 'D-0uSsbo3KbdjIQkWA', '李榮浩', '-twPXM5TwV9ULzYAtw', '年少有為', '20180719', NULL),
('4piU7FHBiO7N5H8nfD', '失戀無罪', 'Osbh3TUzyafhBl0WD5', 'A-Lin', '8qLeKjvVOgKcvWTzxG', '失戀無罪', '20060210', NULL),
('4pJ7zZHBiO7N5aKzJE', 'Get High (Get High)', '8sG0oWl8zbMOm2IwTD', '飛兒樂團 (F.I.R.)', 'X-ghKG5J0SAEnsNo8D', '飛行部落', '20060728', NULL),
('4pqnPGHBiO7N6EFu0M', '一了百了', 'SptsQOYIHt6I_hu-Wu', '信樂團 (Shin Band)', 'TX_F_L9oOtk92gOUXH', '同名專輯', '20020500', NULL),
('4pzs0QBhiO7N6u1GjQ', '改變 Feat. 張震嶽 ayal komod (Change Feat. ayal komod)', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', 'Cnuy6qRl4d6Z2oA89h', '廢物 (Loser)', '20190605', NULL),
('4q454J58WUFouSxesk', '老子有錢', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', '9-pivLhimwqbJTMFMG', '貧民百萬歌星 2009-2012 Best Singles Collection', '20120713', NULL),
('4q9Sxp58WUFovIgq-k', '慢慢等 - 全新編曲', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', '0tUY8mRsK_vh-zkTUF', '韋禮安首張同名全創作專輯', '20100604', NULL),
('4qj9V958WUFovPT72s', '只能想念你', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', '8krrgzp-GTiCKqcbBE', '漁人碼頭夏日狂想曲新歌演唱會 (2nd Version) - 2nd Version', '20110630', NULL),
('4qVA9d58WUFos8EaNs', '精舞門 - OT：James Dean', '4tvrYujJ8jt7Fpy1oq', '羅志祥 (Show Lo)', '4n-Of9OkzvZw0187lR', 'SPESHOW', '20061117', NULL),
('4qycBS58WUFov7srHL', '情歌', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '1XcOyGUXDReMEBb3rp', '靜茹＆情歌- 別再為他流淚', '20090116', NULL),
('4qzKFB58WUFovfwNq9', '記得', 'Ok6kf9NM0d0grGYNbl', 'aMEI (張惠妹)', 'GqcNkRrAKRoy_jX-6m', '真實', '20011018', NULL),
('4r1Vbe5ASSJLoPCWOv', '我很快樂 (I''m Happy)', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', 'GorGHisNzZWl-b5pPY', '小時候的我們 (When We Were Young)', '20200107', NULL),
('4r62yn-gSSJLoY-kQV', '慶祝 (Qing Zhu (OT: Love Song))', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', 'PYFcuRqWqns_Ss3eRO', '遇上愛 (Meeting Love)', '20100401', NULL),
('4rg-Sy-gSSJLpvJuuQ', '突然好想你', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'Gmw-QSPkte5pB-EIY5', '後 青春期的詩', '20081023', NULL),
('4rKMBR2QSSJLqS0zmV', '痴心絕對', '8qHLhzjl89Yankefi7', '李聖傑 (Sam Lee)', '-mLgK-19LXM75Xwzge', '痴心絕對', '20200909', NULL),
('4rs3in-gSSJLoR6_O1', '口袋的天空', '4tkLYujJ8jt7EXGlr6', '張韶涵 (Angela Chang)', 'H-P4nQ5ZibEcVLz7WC', '潘朵拉', '20060106', NULL),
('4sBfxnsjOGRFgvdX8c', '缺氧', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', 'H_lzXD4H2kp-8k-uPJ', '任意門 (My Other Self)', '20070904', NULL),
('4sbvLrsjOGRFiwlL0q', '再出發', '8lxO5tOuEe4fR14NR7', '任賢齊 (Richie Jen)', 'Ksdd_HNedkIB_UbfLv', '情義', '20040325', NULL),
('4sgTN8qTOGRFgCN9LN', 'All These Girls', '4pCYG3uv_-WY5d9QYt', '周湯豪 (NICKTHEREAL)', 'PavDxuKhDe7LXcxCwo', 'WHAT A LIFE', '20190725', '[]'),
('4sMQvaoDOGRFgwCY4J', '細粒的目睭', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', '8ru1u2Q7LZoqMvnaKG', 'Sound Check', '20180112', NULL),
('4svzrRsjOGRFh11J2A', '我們都傻 - 電視劇<醉後決定愛上你>插曲', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '8nm6YsfEHSCv16FEtt', '仰望 楊丞琳 慶功典藏版 (Longing for ... (Special Edition))', '20110926', NULL),
('4tIxwJeoLX0lHi3-dx', '給我你的愛', '4rZFD_ak_yCH-F1Uws', 'TANK 呂建忠', '8pMNtA4svmYiMsBkIE', 'Fighting! 生存之道', '20060224', NULL),
('4tK-kJeoLX0lGEcMBO', '零 (Ling) - Album Version', 'DZfoygBozZZ2RIglWd', '柯有倫 (Alan Kuo)', 'Kqya2bzKOnJP7xm9wr', '柯有綸首張創作專輯 (Alan Kuo Debut Album) - 首張創作專輯', '20050812', NULL),
('4tnJYJeoLX0lEkz7W5', '理想情人 (Li Xiang Qing Ren)', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '1XzPqHUXDReMHzLRBU', '曖昧 (Rainie Yang - My Intuition)', '20050909', NULL),
('4tqVACeYLX0lENiOAI', '第三人稱', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', 'HZQ3xJBCAsSpIm8dGS', '呸', '20141115', NULL),
('4tstELeoLX0lGNc5wG', '第一次', 'Ko1QpI8xAz3AmpcIhX', '光良 (Michael Wong)', '8ofybeKQ3_AF4nVrVZ', '第1次個人創作專輯', '20010510', NULL),
('5-0ZssB-i4L5pRaKcf', '好心分手', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'XYncTyKPROdecVy1Rk', '力宏二十 二十周年唯一精選 (Leehom XX...Best & More)', '20150724', NULL),
('5-5SJlHui4L5qkOZXI', '不搖滾 (feat. 房東的貓) (Rock No More (feat. 房東的貓))', 'LXuGMcxRSEf7QJAneA', '八三夭 (831)', 'KldZ_g45BqJm__J-8R', '不搖滾 (feat. 房東的貓) (Rock No More (feat. 房東的貓))', '20191025', NULL),
('5a2wS_KjyKyO7FQHuI', '孤單心事', 'PayfBgTCBoelAQXFFL', 'Various Artists', 'Ol4_bJxJCCud-f3-Qs', '終極一班電視原聲帶', '20051228', NULL),
('5aMVmbKjyKyO4OTV0x', '於是長大了以後', '4nnlQg-K2KLL4Qwdrg', '謝和弦 (R-chord)', 'PXzJyLPXQ7mrza2zp8', '於是長大了以後', '20110527', NULL),
('5aTEykKjyKyO4MBoGE', '愛的主旋律 - Mixed', 'PayfBgTCBoelAQXFFL', 'Various Artists', 'DYXL-WgtI9ARXpq6fR', 'K歌情人雅座', '20070213', NULL),
('5aVsn1KjyKyO6PvEEt', '想幸福的人', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '9ZaVK5gn_BzuNh3Q5p', '想幸福的人 (Wishing for happiness)', '20120817', NULL),
('5_DAFKxzMf04hZqXk4', '因為你 所以我 (Because Of You)', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', '0le7fKde-BNMwoAst3', '因為你 所以我 (Because Of You)', '20201225', NULL),
('5_DRlj6TMf04ilLr0b', '第一個想到你 (Think Of You First) - 電視劇<後菜鳥的燦爛時代>片尾曲', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', 'Ck1yWJlzW4Ta2INkl8', '硬戳 (It All Started From An Intro)', '20160816', NULL),
('5_JFsPwDMf04g1FOlm', 'Da Da Da', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', 'DZ7Pdxp_1aDjEcgZaG', 'Red Cyndi', '20080201', NULL),
('5_KsxL4DMf04hrfi-1', '海闊天空', 'SptsQOYIHt6I_hu-Wu', '信樂團 (Shin Band)', '5a7djYwYczZYQ06xUZ', '海闊天空', '20040227', NULL),
('5-l2obA-i4L5qsXfQy', '夢醒時分', '4ty4YujJ8jt7FGY_58', '陳淑樺 (Sarah Chen)', 'CqJ4sGARmpvC9YWrGY', '愛的進行式', '19940127', NULL),
('5-Not0Fui4L5oU6VIR', 'I Am The Man', '4pCYG3uv_-WY5d9QYt', '周湯豪 (NICKTHEREAL)', 'Go6L2-ttzZWl-lqSsy', 'I Am The Man', '20180903', NULL),
('5-OgEHA-i4L5rKPtfI', '我會好好過', 'KqxZtUJYQwYgl4Jy7l', '李玖哲 (Nicky Lee)', 'Sn4DIy6u_eOqNDtu_V', 'Baby 是我', '20060428', NULL),
('5_T8w44jMf04huohtW', '都對也都錯', 'Ok6kf9NM0d0grGYNbl', 'aMEI (張惠妹)', '__08qRnU8IHVrazr6H', '偏執面', '20140702', NULL),
('5Xi6uPA_ELRufiYRaR', '馬德里不思議 (A Wonder In Madrid)', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', 'P_mklbeeKjgS4rgukq', '舞孃 (Dancing Diva)', '20150205', NULL),
('5X-pjXAPELRuexjy9Q', '趁早 (As Early As Possible) - 2005 Version', 'Wov16OPmMb0q5Ifcga', '張宇 (Phil Chang)', '-t4hev5zwV9ULopEtc', '男人的好　新歌精選影音全記錄', '20050308', NULL),
('5Y0kMs13hYuu1wh9SI', '飄移', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '0oYr7A00u_GpDyirL3', '11月的蕭邦', '20051101', NULL),
('5YorYv1HhYuu0k8uCk', '一千個太陽', '5aLyvKCxN9BcKq3Ukw', '四個朋友(林正/鄭宇伶/劉佳銘/蘭馨)', '_XV2boDm4bYZubeIjM', 'FUN 青春', '20141118', NULL),
('5Z4pQWbxsZjzvlfQcz', '我終於失去了妳', '4rEnL_ak_yCH8DgDfp', '趙傳', 'KqAfybzKOnJP6r4uNt', '我終於失去了你', '19890604', NULL),
('5ZVNwiLRsZjzsEqzaA', '戀人', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', 'CrDyiP8ZyWtohvf8G7', '戀人群像物語', '20221124', NULL),
('_-7cNvq-B8cu3QwS4x', '遇見 (Encounter)', '9aNGsD_q8L4InIWGpJ', '孫燕姿 (Yanzi Sun)', 'CrlsnZ_ZyWtogWvsR9', 'The Moment', '20110930', NULL),
('8khO9OAIsZ01PcaC93', '風箏', 'HYGdBp2oa-MNV4C8IJ', '2012高中原創畢業歌合輯', '1-o6qqbXCvM0fiM4Js', '風箏-2012高中原創畢業歌合輯', '20120920', NULL),
('8kjSdHAIsZ01NiLKRv', '嘿嘿 Taxi', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', '9-pivLhimwqbJTMFMG', '貧民百萬歌星 2009-2012 Best Singles Collection', '20120713', NULL),
('8kPLfDJosZ01MVE5pW', '醜人多作怪 (Mischief) - 《新斗羅大陸》手遊半週年主題曲', '9ZHTY_i6Jj_jI2Evam', '告五人 (AccuseFive)', '5XEkfe7RTkffIns_eH', '運氣來得若有似無 (Easy Come, Easy Go)', '20201231', NULL),
('8kpycqA4sZ01MyefK1', '聽見下雨的聲音', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'GptWH1zjWop21-Mg1X', '哎呦，不錯哦', '20141226', NULL),
('8ksxgPAIsZ01NP79xD', '我恨我愛你', 'Ok6kf9NM0d0grGYNbl', 'aMEI (張惠妹)', 'GqcNkRrAKRoy_jX-6m', '真實', '20011018', NULL),
('8kxSIJAIsZ01PE-5I6', '雙棲動物', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', 'PXzJOIPXQ7mrzb66YY', '雙棲動物', '20050105', NULL),
('8lhP1ixHvIvolKs9zd', '來自天堂的魔鬼 (Away)', 'WsiS7mTku7eU0Z8S7R', 'G.E.M.鄧紫棋', 'XXTXiV5qEjhjBnio6j', '新的心跳', '20151106', NULL),
('8lhZsVwnvIvokjxG-d', '如果這都不算愛', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', 'LaIsPdUcR5JlnS39yC', '詩情搖滾', '20091218', NULL),
('8lWZMfwnvIvolqsC0J', 'C大調', '4tkLYujJ8jt7EXGlr6', '張韶涵 (Angela Chang)', 'L_akc94eYWLlSrClHK', '夢裡花', '20070112', NULL),
('8mCKWZLAJRsakE6uPz', '被馴服的象', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', '4o0ZF2pRVgY_atH071', '天使與魔鬼的對話', '20130924', NULL),
('8mNs-8LQJRsalyar4S', '爺爺泡的茶', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '9aYlm72DUhQp9CzKOt', '八度空間 (The Eight Dimensions)', '20020719', NULL),
('8nRznx61Mjx8TQOjQF', '失憶的金魚', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '0mlS8r77qw4Imc-9zV', '雙丞戲', '20140101', NULL),
('8nVQzy6FMjx8ROFnAo', '牛仔很忙', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'TaJf8uNz9CYeF4qjlh', '我很忙', '20071101', NULL),
('8o7tbcsAlULSBGnT4q', '烏克麗麗', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '9YMqiF0HpTG8IZrErD', '十二新作', '20121228', NULL),
('8oCyG6sAlULSDd2DtD', '用心良苦', 'Wov16OPmMb0q5Ifcga', '張宇 (Phil Chang)', 'PXESiIPXQ7mryy8Nem', '奇蹟', '20000501', NULL),
('8oJVGssAlULSDb0zvU', '會痛的石頭', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', 'GkqX6dGex3YZLAsbLs', '王妃', '20090717', NULL),
('8oLTwXsglULSDo-kgx', '喜歡你', 'WsiS7mTku7eU0Z8S7R', 'G.E.M.鄧紫棋', '-rs4kFbZ1XBjJ941n0', '喜歡你', '20140926', NULL),
('8oxpq-sAlULSB5jmJ9', '花田錯', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'TZDhD6uPIu_YeocBWr', '蓋世英雄 (Heroes of Earth)', '20051230', NULL),
('8oysqF8AlULSD2fXbi', '在未來的你跟我說聲嗨 (Hi!) - Audi 引領進化主題曲', '9ZHTY_i6Jj_jI2Evam', '告五人 (AccuseFive)', 'CtwF-58XoP3rNN3WEM', '在未來的你跟我說聲嗨 (Hi!)', '20221018', NULL),
('8pbhjub72c2emiVGBQ', '我是一隻小小鳥 (A Tiny Bird)', '4rEnL_ak_yCH8DgDfp', '趙傳', '8oSZfgKQ3_AF7l6oWe', '一顆滾石的25年 (A Rolling Stone)', '20140606', NULL),
('8pH3eRbr2c2en9QoLq', '我還想念你 - 三立、東森偶像劇<聽見幸福>片頭曲', 'PX1LARGILmWjgk723m', '畢書盡 (Bii)', 'KrFvAOykQPhDAqkpx9', 'Action Bii', '20141219', NULL),
('8puBubbb2c2elmbQM4', '欠一個勇敢', '5YNsuSMRDF8kojj_QJ', '棉花糖 (katncandix2)', 'HYjTOrmgU1EtUaHYF6', '小飛行', '20090501', NULL),
('8qcuYDO8YrrZNcmJpT', '不想懂得', '4tkLYujJ8jt7EXGlr6', '張韶涵 (Angela Chang)', 'WpPyaKNLeutVFPnfmp', 'Ang5.0', '20071214', NULL),
('8qG8x5O8YrrZOAHA2L', '夢想啟動', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '9YMqiF0HpTG8IZrErD', '十二新作', '20121228', NULL),
('8qOPnmMMYrrZN-n7Fp', '蝸牛', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'PYKGG3qGqns_SStooZ', '范特西 - EP', '20011231', NULL),
('8r7DXYZE59bDTlLavb', '你的愛', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'OsbINeA4qcVQZEXjY1', '你的愛。', '20150123', NULL),
('8rLPDRZ059bDRECd4c', '還是會', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', 'WqQusk5oG8C8lUn1Zi', '有人在等', '20120803', NULL),
('8rMBSOZ059bDTWnG-U', '我愛他 - <下一站，幸福>片頭曲', '9_w6azeJGTMFKInhqn', '丁噹 (Della)', 'KpaUiypPaopkB4l-kX', '夜貓', '20090929', NULL),
('8ryOOgdU59bDRxTMhU', '偉大的渺小 (Little Big Us)', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'CoRIWo6O1JHryBFRnj', '偉大的渺小 (Message In A Bottle)', '20171229', NULL),
('8scXcsz9V0Zqno_sZe', '你不知道的事', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'PZXQoKMo_n53UC779E', '十八般武藝', '20100813', NULL),
('8sDcRI7NV0ZqmdmEpm', '妥協 (Compromise)', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', '8trVI8N8ZgqWd7a4WC', '花蝴蝶', '20090327', NULL),
('8sfmNa7NV0Zqk_J-3l', '手放開', '8qHLhzjl89Yankefi7', '李聖傑 (Sam Lee)', 'GmaJkTPkte5pDzPwS4', '絕對痴心．手放開', '20041126', NULL),
('8sIWFa7NV0Zqk06_mO', 'One Night In 北京', 'SptsQOYIHt6I_hu-Wu', '信樂團 (Shin Band)', 'L-uFEDxVKwYNqjMWVP', '挑信', '20041203', NULL),
('8sTsBb7NV0ZqlAhiJz', '髮如雪', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '0oYr7A00u_GpDyirL3', '11月的蕭邦', '20051101', NULL),
('8t27CTfjsnPsF8kPv1', '樹枝孤鳥', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', 'SldEkn3NTiaK0b5zzo', '樹枝孤鳥', '19980100', NULL),
('8td8KBfjsnPsG3L-Dw', '說好的幸福呢', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '5aqrTZwYczZYRthb7q', '魔杰座', '20081015', NULL),
('8tFYm6fjsnPsFp3X8a', '給我一個理由忘記 - 八大電視台<我的女友是九尾狐>片尾曲', 'Osbh3TUzyafhBl0WD5', 'A-Lin', '8oL-jcKQ3_AF7l3Hx5', '寂寞不痛', '20101224', NULL),
('8t-LWSfjsnPsHjzceL', '開始懂了 (Realize)', '9aNGsD_q8L4InIWGpJ', '孫燕姿 (Yanzi Sun)', 'GpAx2lzjWop21gc7ZE', '我要的幸福', '20001207', NULL),
('9-1ZojHPF6qQ0U1-go', '守候', 'GsaswAHedyFlIrklmy', '5566', 'TYEg2LxPOR7QjsYrpP', '5566 2nd album (摯愛專輯)', '20040129', NULL),
('9aNPlJSt1jmuJBYeKS', '不搭 - <奇皇后>片尾曲', 'D-0uSsbo3KbdjIQkWA', '李榮浩', '0pmo-2i688Op4O2gpL', '李榮浩', '20141128', NULL),
('9aOclQSd1jmuKZk827', '一場遊戲一場夢', 'OtTyughrlH1BMW_ev5', '王傑 (Dave Wang)', 'StOWgEOOyDQXzhCsXl', '王傑超級精選集一番傑作 - 一番傑作', '19960401', NULL),
('9-GAmEPvF6qQ1Ussfm', '美麗新世界', 'LXmR8cxRSEf7TtNJrW', 'S.H.E', 'WsyQ2IaDjmG2CA8McE', '美麗新世界', '20020805', NULL),
('9-Gl4RJfF6qQ0WU7dr', '兩秒終 (2 Seconds)', '4pCYG3uv_-WY5d9QYt', '周湯豪 (NICKTHEREAL)', 'PavDxuKhDe7LXcxCwo', 'WHAT A LIFE', '20190725', NULL),
('9X4P_ygy3wYrAl6bSS', '匿名的好友 (Ni Ming De Hao You) - 八大燦爛的遺產片頭曲', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', 'GkKGOdGex3YZIGADwa', '雨愛 繽紛慶功版 (Rainie & Love ...?)', '20120606', NULL),
('9XHvr4gy3wYrDeBKHR', '城裡的月光', '4rZFD_ak_yCH-F1Uws', 'TANK 呂建忠', '0kosU9zgc5pS4oIDLD', '延長比賽 Keep Fighting', '20070119', NULL),
('9XIJzSiS3wYrA6QwcS', '說走就走', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '8n1L7efEHSCv3MUBwW', '周杰倫的床邊故事', '20160624', NULL),
('9XJtaxuS3wYrBP-pGf', '除了說唱我什麼都不會', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', 'GoE6Z8vtzZWl9-VgyA', '姚中二', '20220623', NULL),
('9XLcf7gy3wYrBQ4isw', '想太多', 'KqxZtUJYQwYgl4Jy7l', '李玖哲 (Nicky Lee)', '1YTJa0HuV_hOAnRDY_', '想太多', '20071012', NULL),
('9Xvc7xgy3wYrC7caqg', '拋物線', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', '4kbI7MYXF4KmWCoiOg', '若你碰到他', '20090819', NULL),
('9XYIyFhS3wYrAoJqo7', '再見 (Goodbye)', 'WsiS7mTku7eU0Z8S7R', 'G.E.M.鄧紫棋', 'XXTXiV5qEjhjBnio6j', '新的心跳', '20151106', NULL),
('9YtMGsEetUrZ3VfNFs', '從未到過的地方 (A Place I’ve Never Been)', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', '-ml57O0tLXM75IaFBh', '第十個王心凌', '20140101', NULL),
('9YTTFDE-tUrZ2HRxjO', '零度的親吻 (Frozen Kiss)', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'KqrlOQzKOnJP44-WFr', '因你 而在 (Stories Untold)', '20130312', NULL),
('9ZHoTUgOs_ZpFVdv_9', '輕熟女27-Acoustic Version / 我只在乎你', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', '9-pivLhimwqbJTMFMG', '貧民百萬歌星 2009-2012 Best Singles Collection', '20120713', NULL),
('9ZTP-agOs_ZpHuteMB', '我要飛 - 黑松沙士年度廣告歌曲', '8sG0oWl8zbMOm2IwTD', '飛兒樂團 (F.I.R.)', 'WpzmGLNLeutVGGpldi', '我要飛-尋夢之途全紀錄', '20040430', NULL),
('_-B2bLvOB8cu3WOE66', '另一個天堂 (feat. 張靚穎)', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', '9Xr5TZk3C0_tmURDqI', '王力宏全新創作大碟 心．跳', '20081225', NULL),
('Ck2sR-vqnNz6_Mm0pQ', '曹操', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', '5aoP7YwYczZYTKIme3', '曹操', '20060217', NULL),
('Ck6eJ9vqnNz6-oNsXR', '可愛女人', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'SpNSmp0aS-4BcMhBrv', '杰倫', '20001223', NULL),
('CkEvR6vqnNz69cZilA', '勇氣', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '1Xh6mHUXDReMFXj-VN', '勇氣', '20000802', NULL),
('CkJ4hGvqnNz6-9iNQU', '療傷燒肉粽', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'GmxeMXPkte5pAo989E', '驚嘆號', '20111111', NULL),
('Ck_MVmvqnNz69M5Fkx', '陽光宅男', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'TaJf8uNz9CYeF4qjlh', '我很忙', '20071101', NULL),
('Ck_tasoanNz6-ylzwP', '愛的天靈靈', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', '-oWoxx0M2jy1w_5blk', 'Magic Cyndi', '20070401', NULL),
('Cl6IBBqIFKtg2hkWuB', '有一種悲傷 (A Kind of Sorrow) - 電影《比悲傷更悲傷的故事》主題曲', 'Osbh3TUzyafhBl0WD5', 'A-Lin', 'OtS1j6YhEqbM8XuF5D', '有一種悲傷 (A Kind of Sorrow) - 電影《比悲傷更悲傷的故事》主題曲', '20181012', NULL),
('ClJLP8vYFKtg3GbGHd', '雨天', '9aNGsD_q8L4InIWGpJ', '孫燕姿 (Yanzi Sun)', '9ahBWz2DUhQp9VBjgc', 'My Story 2006 新歌+精選', '20070515', NULL),
('Cm4e-F1VtBWGpvrRqg', '分手需要練習的', 'Osbh3TUzyafhBl0WD5', 'A-Lin', 'D_E2CyHKsaFcM2HKdr', '以前，以後', '20091228', NULL),
('CmjL6T1VtBWGom_Uce', '綠光 (Green Light)', '9aNGsD_q8L4InIWGpJ', '孫燕姿 (Yanzi Sun)', 'OtuRiXYBEqbM_oVdCH', '風箏', '20010709', NULL),
('CmJweQ1VtBWGqvLPeY', 'Super Star', 'LXmR8cxRSEf7TtNJrW', 'S.H.E', 'Sm2PIWuygNqlSB8-X3', 'Super Star', '20030822', NULL),
('CmM8Ws1VtBWGqR2gTI', '當我們一起走過 - Album Version', 'DaVqiPBJ8qnEtzTaSU', '蘇打綠 (Sodagreen)', 'HXndOEPMRr3eOKtjom', '你在煩惱什麼', '20111111', NULL),
('CmtaWX1VtBWGoTx-kx', '星晴', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'SpNSmp0aS-4BcMhBrv', '杰倫', '20001223', NULL),
('CnAJeCypUCArpgccHL', '可惜不是你', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', 'Cn5ZH-RV4d6Z1QRVTm', '絲路', '20050916', NULL),
('CnEEi6ypUCArp1CwSQ', '水手怕水', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'GmxeMXPkte5pAo989E', '驚嘆號', '20111111', NULL),
('CnKgiVypUCArpQGBFV', '一顆心的距離', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'GrFQ3dwZSVBLbkw-vy', 'Faces Of FanFan新歌+精選', '20080722', NULL),
('CnR1378ZUCArr2aDgU', '聽說聽說', '4kf5MixqN3_1In52_l', '藍又時 (Shadya Lan)', 'PYR91Io2qns_Rlg-YG', '聽說 藍又時', '20161206', NULL),
('CnTB-AypUCArosFMgU', '倒帶 (Dao Dai)', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', '0sP4vqr_ljsmcVDY2t', '城堡 (Cheng Bao (Castle))', '20150603', NULL),
('CnxeSO2JUCArr5erXN', '連名帶姓', 'Ok6kf9NM0d0grGYNbl', 'aMEI (張惠妹)', 'KrujSUy0QPhDDUo5a-', '偷故事的人', '20171212', NULL),
('Co6qdWf9HOVZieIDc1', '地球上最浪漫的一首歌', 'P-VZanmft87W1rnXL5', '黃鴻升 (Alien Huang)', 'KmMskN5qmUrTk0zN0r', '愛&英雄 (LOVE HERO)', '20091218', NULL),
('Co-s1Ef9HOVZj64ZWP', '死了都要愛', 'SptsQOYIHt6I_hu-Wu', '信樂團 (Shin Band)', 'TX_F_L9oOtk92gOUXH', '同名專輯', '20020500', NULL),
('CpbBdjXvXVWGssQflJ', '我要快樂', 'Ok6kf9NM0d0grGYNbl', 'aMEI (張惠妹)', '-tgSD65zwV9UJQ45XI', '我要快樂 - Deluxe Version', '20060217', NULL),
('CpBHTLS_XVWGttIJ3v', '接不接受', 'D_sJF4kl50EDPO2yQ9', '河智昊', '-tdwqb5TwV9ULYYl6I', '在今天睡去, 昨天醒來', '20180918', NULL),
('CpggboXPXVWGsj_Aup', '愛如潮水 (Ai Ru Chao Shui) - OT: 愛你的餘溫', 'LZ5XE3V1w4lbhvgqpN', '張信哲 (Jeff Chang)', '8s0yeK6TI8uiqdCcmx', '永恆金曲 影音典藏精選 (Ultimate Jeff Chang)', '20140704', NULL),
('Cp_LAmQvXVWGuZmxa4', '我要你愛', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', 'CpuKuLWUaw7YB6O0RV', '我要你愛', '20190823', NULL),
('CqBfM8MCUh-7-VLOOe', '爛泥', 'StHnkq8RxUXeTrn7ij', '草東沒有派對 (No Party For Cao Dong)', '4kwp0eZHF4KmUKUOIs', '醜奴兒', '20160219', NULL),
('CqjZv6FiUh-79YvyHC', '帶我走 (Dai Wo Zou)', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '0kPjs9zgc5pS6x_blh', '半熟宣言 (Rainie''s Proclamation - Not Yet A Woman)', '20120520', NULL),
('Cqp9PvFiUh-7-pfvSr', '曖昧 (Ai Mei)', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '1XzPqHUXDReMHzLRBU', '曖昧 (Rainie Yang - My Intuition)', '20050909', NULL),
('CquZbvFiUh-78uX-fB', '千年之戀', '8sG0oWl8zbMOm2IwTD', '飛兒樂團 (F.I.R.)', '4mNXUQFE2kVG4RNmYe', '無限', '20050406', NULL),
('CrKbmDQRa7_3OJhANC', '心電心', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', 'LYppBKiiCNxEs7xjzD', '心電心 (H2H)', '20091204', NULL),
('CrNFy_QRa7_3OFJ6JF', '我很想愛他', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', '9-syfMhimwqbKS-WBs', '她說', '20101208', NULL),
('Crowl_Uha7_3NjszKt', '不愛我就拉倒 (If You Don’t Love Me, It’s Fine)', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'Clpx463hhWIkBWm9U1', '不愛我就拉倒 (If You Don’t Love Me, It’s Fine)', '20180515', NULL),
('CrWhEzSha7_3OqrV9x', 'My Boo', '4pCYG3uv_-WY5d9QYt', '周湯豪 (NICKTHEREAL)', 'CsURod2P0h_Rltb6IM', '真 (REAL)', '20161015', NULL),
('Cs8BLDz93ZiY3ZxDZP', '三暝三日 (San Ming San Ri)', 'LXnxccxRSEf7Qrgj3J', '吳宗憲 (Jacky Wu)', 'GoZNHntNzZWl_hHzNR', '吳盡的愛 (Endless Love)', '20000617', NULL),
('CsDARCz93ZiY0QBtXN', '我愛台妹', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', 'CnvKr-RV4d6Z3UvEbM', 'Wake Up', '20060119', NULL),
('CsfWv_xt3ZiY0dnT9M', '如果我們不曾相遇 (What If We Had Never Met)', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'XXgRQh5qEjhjB70Jha', '自傳 (history of Tomorrow)', '20160820', NULL),
('CsPUglzN3ZiY1R0uYZ', '多遠都要在一起 (Long Distance)', 'WsiS7mTku7eU0Z8S7R', 'G.E.M.鄧紫棋', 'XXTXiV5qEjhjBnio6j', '新的心跳', '20151106', NULL),
('CsV9cxz93ZiY2ZlaWr', '黑暗騎士 (The Dark Knight) - feat. 五月天', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'KqrlOQzKOnJP44-WFr', '因你 而在 (Stories Untold)', '20130312', NULL),
('CsxWrjxN3ZiY31XE95', '需要你的美', '4pCYG3uv_-WY5d9QYt', '周湯豪 (NICKTHEREAL)', 'CsURod2P0h_Rltb6IM', '真 (REAL)', '20161015', NULL),
('CsydB6z93ZiY3p3iVd', '星空【幾米繪本電影「星空」同名主題曲】', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'H-BNLU5ZibEcXZoNMQ', '第二人生 Now Here 明日版', '20111217', NULL),
('CtdOw4aFUSEGZFvowG', '世界第一等', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', 'L--UgDxVKwYNqP8KXP', '愛你伍佰年', '20040527', NULL),
('CtmFHATlUSEGaiX_ZB', '愛人錯過 (Somewhere in time)', '9ZHTY_i6Jj_jI2Evam', '告五人 (AccuseFive)', 'D-ikiKoNdbwdO3z11_', '我肯定在幾百年前就說過愛你 (Somewhere in time, I love you)', '20190614', NULL),
('CtPo7sd1USEGYaVDjy', '睫毛彎彎', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', '8pz24E5svmYiPLxG3y', 'Cyndi With U', '20051201', NULL),
('Da3CvhZZK9m6Gqg0KE', '戀人未滿', 'LXmR8cxRSEf7TtNJrW', 'S.H.E', '5_owig1aO3eqKsfQid', '女生宿舍', '20010911', NULL),
('DaF0XmZZK9m6HJ6Pt6', '如果有一天', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '1Xh6mHUXDReMFXj-VN', '勇氣', '20000802', NULL),
('D-_bCjCmldMik0Hokj', '慢冷', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '5-IfKzVZFSVSBpZfjE', '我好嗎? - 太陽如常升起', '20190516', NULL),
('D-cKSnOmldMikLJ9Ee', '我很好騙 (Love Me True)', '8t-sfOpHItW_g3GiAp', '動力火車 (Power Station)', '0kkoeLyAc5pS58gMp6', '都是因為愛 (Because Of Love)', '20210423', NULL),
('D_E8s8qKOtw-aje9B6', '心中的日月', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'Km6wUP5qmUrTlD-hN-', '心中的日月', '20041231', NULL),
('D_gdclqKOtw-bZpZsi', '青花瓷', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'TaJf8uNz9CYeF4qjlh', '我很忙', '20071101', NULL),
('D_Gw7ot6Otw-aoqtRv', '月光', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', 'D_hRD0GKsaFcPpcckJ', '愛你', '20040301', NULL),
('D-RIRUJGldMimSlnIv', '想知道你在想什麼 (What''s on Your Mind) - 《我吃了那男孩一整年的早餐》電影主題曲', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', 'LZFcwji-2Z7b2UCWRY', '想知道你在想什麼 (What''s on Your Mind) - 《我吃了那男孩一整年的早餐》電影主題曲', '20220128', NULL),
('D-u2RJIWldMinTOO2c', 'NEED YOU', '4pCYG3uv_-WY5d9QYt', '周湯豪 (NICKTHEREAL)', 'DazHbJHenP601hYQK9', 'NEED YOU', '20211105', NULL),
('DX1jaPMCg_DL9azLBm', 'GET REAL', '4pCYG3uv_-WY5d9QYt', '周湯豪 (NICKTHEREAL)', 'GoK1TNuNzZWl-HL1E-', 'GET REAL', '20221111', NULL),
('DX5XjZcSg_DL_WzzRG', '快樂崇拜', '4tkLYujJ8jt7EXGlr6', '張韶涵 (Angela Chang)', 'HZmQ4FBCAsSpLyN82z', '歐若拉/Aurora', '20041203', NULL),
('DXdTjZcSg_DL8AzhjB', '七里香', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'HZrRUFBCAsSpLkhfRr', '七里香 (Common Jasmine Orange)', '20040803', NULL),
('DXNb7acSg_DL_m4_77', '熱帶雨林', 'LXmR8cxRSEf7TtNJrW', 'S.H.E', 'OqLhcsfFHgkGh0l3hN', '青春株式會社', '20020129', NULL),
('DXNh_acSg_DL_NSmQp', '怎樣 ?', '9Z-SA3i6Jj_jJ9mo0v', '戴佩妮 (Penny Tai)', 'Om1szog4P4HnD2Uig3', '怎樣 (So Penny)', '20140801', NULL),
('DYbpFU6Lri5YQldtJT', '怎麼了 (What''s Wrong)', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', 'OknfDhkqH9M2simtrp', '終於了解自由 (Freedom)', '20190110', NULL),
('DYd77a_7ri5YRMFOvC', '夠愛', 'D-uuGjbo3KbdgVBTB1', '東城衞 (D.C.W)', '5aQFTawYczZYTYQQZ0', '東城衞 (同名迷你專輯)', '20100723', NULL),
('DYiw_m_7ri5YQ0YNrq', '花蝴蝶 (Butterfly)', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', '8trVI8N8ZgqWd7a4WC', '花蝴蝶', '20090327', NULL),
('DYPrtU9Lri5YRBq2W3', '帥到分手', '4pCYG3uv_-WY5d9QYt', '周湯豪 (NICKTHEREAL)', 'CsURod2P0h_Rltb6IM', '真 (REAL)', '20161015', NULL),
('DYUwfs7bri5YSoTpTf', '如果雨之後 (The Chaos After You)', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', 'Gt54njiuPnecfxt74e', '如果雨之後 (The Chaos After You)', '20171215', NULL),
('D-Ywo_EGldMimahSYF', '遺失的美好', '4tkLYujJ8jt7EXGlr6', '張韶涵 (Angela Chang)', '8okiDeKQ3_AF75TjFm', 'Over The Rainbow', '20040106', NULL),
('DYZsy_4bri5YR53KAi', '差不多姑娘 (Miss Similar)', 'WsiS7mTku7eU0Z8S7R', 'G.E.M.鄧紫棋', 'TXF63J8oOtk90xeoIj', '摩天動物園 (City Zoo)', '20191226', NULL),
('DZ0JY5x6M7EsrsuND8', '乾杯', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'H-BNLU5ZibEcXZoNMQ', '第二人生 Now Here 明日版', '20111217', NULL),
('DZulY7x6M7EsrEiZ9h', '不是男人', 'LXuGMcxRSEf7QJAneA', '八三夭 (831)', 'Ck7CralzW4Ta20SWul', '最後的8/31', '20120528', NULL),
('GkJJdu7-nSw3TynofY', '花又開好了', 'LXmR8cxRSEf7TtNJrW', 'S.H.E', 'HXI1GHPMRr3eO7xId2', '花又開好了', '20121116', NULL),
('GkjLk07-nSw3SbS9Ne', '天高地厚', 'SptsQOYIHt6I_hu-Wu', '信樂團 (Shin Band)', 'CnLBP-RV4d6Z0QtuT1', '天高地厚', '20030400', NULL),
('GkPj4o7-nSw3R3wcWC', '你是我心內的一首歌 (Ni Shi Wo Xin Nei De Yi Shou Ge)', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'KsUH7GNedkIB9WsynW', '改變自己 (Change Me)', '20070628', NULL),
('GkQJt9-unSw3QVoBN_', '小老婆', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', '4qFpin3VwYJTTma7UE', '電火王', '20180822', NULL),
('GlIztITpylVNHYrj2O', '達爾文', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', 'TaI_wuNz9CYeHzgRKn', 'Goodbye & Hello', '20071019', NULL),
('GlsT21RJylVNGUAByN', '如果再見 (If We Meet Again) - 電影<極樂宿舍>主題曲/韓劇<龍八夷>片尾曲/韓劇<我女婿的女人>片尾曲/韓劇<請回答1988>片尾曲', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', 'Ck1yWJlzW4Ta2INkl8', '硬戳 (It All Started From An Intro)', '20160816', NULL),
('GltmscW5ylVNFC3cSw', '擋一根', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', '4qFpin3VwYJTTma7UE', '電火王', '20180822', NULL),
('GlzqhnTpylVNHAm_y9', '學不會', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'XZ6fWxXCigL04ZfaeN', '學不會', '20111230', NULL),
('GlzQx-TpylVNHIu15W', '轉身之後 - 台視、三立偶像劇<鍾無艷>片尾曲', 'PX1LARGILmWjgk723m', '畢書盡 (Bii)', '4l4sXzRx6lesfuEvcy', 'Bii Story', '20101011', NULL),
('GmB2wBWj7q4F6akrWg', '假如', 'SptsQOYIHt6I_hu-Wu', '信樂團 (Shin Band)', 'L-uFEDxVKwYNqjMWVP', '挑信', '20041203', NULL),
('GmBU8YWj7q4F62QZmb', '會呼吸的痛', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '5XleEU6BTkffIgjHkb', '崇拜', '20071109', NULL),
('GmfNs4Wj7q4F6mppVU', 'Mine Mine', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'GmxeMXPkte5pAo989E', '驚嘆號', '20111111', NULL),
('GmyYIEWj7q4F6JWq3y', '曲終人散', 'Wov16OPmMb0q5Ifcga', '張宇 (Phil Chang)', 'PXESiIPXQ7mryy8Nem', '奇蹟', '20000501', NULL),
('Gnc4HxnGJNIVIxiU7I', '對摺 - 國語', '8lxO5tOuEe4fR14NR7', '任賢齊 (Richie Jen)', '5_hG6k1aO3eqLQMOfk', '不信邪', '20111202', NULL),
('Gnd6zskWJNIVITqscD', '光年之外 - 電影<Passengers>中國區主題曲', 'WsiS7mTku7eU0Z8S7R', 'G.E.M.鄧紫棋', 'KrzfsGy0QPhDANRoIN', '光年之外 - 電影<Passengers>中國區主題曲', '20161230', NULL),
('Gne0Ucg2JNIVIXwfg4', '彩虹的微笑 - 微笑pasta主題曲', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', 'HYjpbungU1EtWqvT-S', '微笑pasta 電視原聲帶', '20060701', NULL),
('GnGabenGJNIVKYCghR', '一個像夏天 一個像秋天', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'GrFQ3dwZSVBLbkw-vy', 'Faces Of FanFan新歌+精選', '20080722', NULL),
('GnhkWTnGJNIVL2hdp0', '心還是熱的', 'LXmR8cxRSEf7TtNJrW', 'S.H.E', 'HXI1GHPMRr3eO7xId2', '花又開好了', '20121116', NULL),
('GnjU8jv2JNIVLJGvk5', '勁歌. 金曲2 (情歌王)', 'TYVuxWJpHjUVwCsphT', '古巨基 (Leo Ku)', 'DXKvaeNPYpMki_bjJn', '我還是你的 (情歌王)', '20080630', NULL),
('Gn_PXJnGJNIVLPR-s2', '我行我素', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', 'CnvKr-RV4d6Z3UvEbM', 'Wake Up', '20060119', NULL),
('GnxLUBn2JNIVJWcHgd', '女孩 (Girl) - 2015 韋禮安<放開那女孩 Free That Girl>小巨蛋演唱會求愛主題曲/衛視中文台戲劇<長不大的爸爸>片頭曲', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', 'Ck1yWJlzW4Ta2INkl8', '硬戳 (It All Started From An Intro)', '20160816', NULL),
('GnX-rGnWJNIVJA0HQN', '悄悄告訴你 - <被偷走的那五年>電影主題曲', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'L_s50k4eYWLlRPh3lE', '悄悄告訴你', '20130709', NULL),
('GodLX6SgV7_Ofgz3Jx', '錯的人', 'CmUb4SnT1F5sNiD_9N', '蕭亞軒 (Elva Hsiao)', '1YwHS3HuV_hOCIEGmr', '蕭灑小姐', '20100921', NULL),
('GooUHjSgV7_Od1oVy9', '倉頡', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'H-BNLU5ZibEcXZoNMQ', '第二人生 Now Here 明日版', '20111217', NULL),
('Gorj78VAV7_Ocpr73f', '李白', 'D-0uSsbo3KbdjIQkWA', '李榮浩', 'KpCIlNp_aopkDxJHvu', '模特', '20130916', NULL),
('GoRZ4WVwV7_OdZlzN4', '刪拾', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', 'LXVzwX4DKFATtdxw3b', '刪拾', '20191122', NULL),
('GoUrfhTgV7_Ocr8DOG', '心跳', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'XYncTyKPROdecVy1Rk', '力宏二十 二十周年唯一精選 (Leehom XX...Best & More)', '20150724', NULL),
('Gpm4Nyn--IKc0WOF3K', '你們要快樂', '8qHLhzjl89Yankefi7', '李聖傑 (Sam Lee)', 'GmaJkTPkte5pDzPwS4', '絕對痴心．手放開', '20041126', NULL),
('GpoCBxn--IKc1Rhbfy', '輸了你贏了世界又如何', 'XYofO1U8w9TEagMdN9', '優客李林 (Ukulele)', 'GmBj4TPkte5pDozKjf', '捍衛愛情', '20140801', NULL),
('GpOr9Dje-IKc1hqVJ8', '捲菸', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', '8ru1u2Q7LZoqMvnaKG', 'Sound Check', '20180112', NULL),
('GpuKY5n--IKc0cH__h', '少年維特的煩惱', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '9ZaVK5gn_BzuNh3Q5p', '想幸福的人 (Wishing for happiness)', '20120817', NULL),
('GqF39RC_Hxj7OoasVL', '你，好不好？ (How Have You Been?) - TVBS連續劇【遺憾拼圖】片尾曲', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', 'Wp55uMNbeutVGyU1ka', '愛，教會我們的事 (What Love Has Taught Us)', '20160805', NULL),
('Gqm939APHxj7Or_Fwi', '跳進來', 'Ok6kf9NM0d0grGYNbl', 'aMEI (張惠妹)', '__08qRnU8IHVrazr6H', '偏執面', '20140702', NULL),
('GqSEemFfHxj7NA28Rg', '洋蔥', '4m9cOK6fNyolaPwjqv', '楊宗緯 (Aska Yang)', '4pJJfqvc3PHEZJflMV', '鴿子', '20080111', NULL),
('GqunaYAvHxj7OIbG8G', '沒有如果', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '1XcOyGUXDReMEBb3rp', '靜茹＆情歌- 別再為他流淚', '20090116', NULL),
('GrhN1wXCk9ZkzdSSkH', '假裝 (Pretending)', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', 'P_mklbeeKjgS4rgukq', '舞孃 (Dancing Diva)', '20150205', NULL),
('GrYfZ_XCk9ZkzWsWN4', '第幾個100天', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'Kmb84N5qmUrTlnpTr7', '100天', '20091215', NULL),
('GsbCUlREZ-QUZihFSq', '入陣曲', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'GkrKC_Gex3YZLUwhz3', '五月天 | 步步 | 自選作品輯 the Best of 1999-2013', '20131230', NULL),
('GsCx-LRUZ-QUY28TB2', '我是一隻魚', '8lxO5tOuEe4fR14NR7', '任賢齊 (Richie Jen)', 'L-KgsDxVKwYNoSEbZa', '愛像太平洋', '19980828', NULL),
('Gt6B4KMu-2a5-iZMd-', '愛你一萬年', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', 'L--UgDxVKwYNqP8KXP', '愛你伍佰年', '20040527', NULL),
('GtaKgNMu-2a58ogTht', '到不了', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'WrxkO78fkjE3n_AK8E', '范范的世界', '20001101', NULL),
('Gtm54-Mu-2a58X7UDE', '最好的結局【中天[閣樓上的王子]片頭曲】', 'LXuGMcxRSEf7QJAneA', '八三夭 (831)', 'Ck7CralzW4Ta20SWul', '最後的8/31', '20120528', NULL),
('GtneEVMu-2a59Mrn5-', 'BEAUTIFUL LOVE (Beautiful Love)', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', '8t67k8N8ZgqWcIfO8w', 'T-TIME新歌精選', '20060602', NULL),
('GtqTsSMu-2a5-EQIPt', '私奔到月球', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'L_42494eYWLlRF52Ne', '離開地球表面', '20070720', NULL),
('Gtx4JsM--2a5-r0KLe', '你就不要想起我', 'Xa_WYdZHejH-lBzV-F', '田馥甄 (Hebe)', 'Wkit_HBjIvVnnOvuLM', '渺小', '20131129', NULL),
('_--H1rq-B8cu2qyog4', '單身情歌 (Dan Shen Qing Ge)', 'L-yRmEZCGWw2rLnt2J', '林志炫 (Terry Lin)', 'Knna7e1ZbvUVIhmSIf', '單身情歌．超炫精選 (Bachlor''s Love Song)', '19990627', NULL),
('HaD0JXFVE8K3bhshej', '傻瓜', '9Z2jw3i6Jj_jJnNz4s', '温嵐 (Landy Wen)', '-rqHhAbZ1XBjJqRNhE', '熱浪', '20070803', NULL),
('HaRj1ZFVE8K3bVQCuG', '王子的新衣', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', '8rF5VsQrLZoqMRMYIz', '同名專輯', '20080616', NULL),
('HaWwFQFVE8K3ak0-NS', '我們的紀念日', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'CrZOrY_ZyWtoia85Ad', '我們的紀念日', '20060609', NULL),
('HaXvGbClE8K3Ye4GGn', '愛你', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', 'D_hRD0GKsaFcPpcckJ', '愛你', '20040301', NULL),
('H-BGwXjaCJ6qxZ9AQg', '那一夜', 'WsiS7mTku7eU0Z8S7R', 'G.E.M.鄧紫棋', 'CtIQwp-HoP3rOM24UO', '毒蘋果', '20181109', NULL),
('H_-MmLwo6JmyyZ0Kfp', '像是一顆星星', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '-pUL6Y3wReHVRpKs04', '像是一顆星星', '20200818', NULL),
('H_NFfd4Y6Jmyz8SqQk', '新不了情', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', 'Wovm6qRXYBvu81c7my', '愛的時刻 自選輯', '20091120', NULL),
('H_poTN4Y6JmyxUVb6X', 'Forever Love', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'Km6wUP5qmUrTlD-hN-', '心中的日月', '20041231', NULL),
('HX3kPlaYaXJ8ZAJBSs', '關鍵詞 (The Key)', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', '4s1xcwsyxHs9DGR8s3', '"和自己對話" 實驗專輯 ("From M.E. To Myself" Experimental Debut Album)', '20151218', NULL),
('HXAbR8boaXJ8asfjGN', '豆漿油條', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'CqessGARmpvC_IiqMa', '第二天堂', '20040604', NULL),
('HXCql8boaXJ8a8Ck7A', '挪威的森林', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', 'L--UgDxVKwYNqP8KXP', '愛你伍佰年', '20040527', NULL),
('HXfhNMZIaXJ8azEgMq', '不該', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '8n1L7efEHSCv3MUBwW', '周杰倫的床邊故事', '20160624', NULL),
('HXGBh5boaXJ8ZklHsK', '心太軟', '8lxO5tOuEe4fR14NR7', '任賢齊 (Richie Jen)', 'SlsUIn3NTiaK0pZhlB', '心太軟', '19961224', NULL),
('HXnVtlboaXJ8YZxOdr', '空白格', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', 'TaI_wuNz9CYeHzgRKn', 'Goodbye & Hello', '20071019', NULL),
('HXuM18boaXJ8YPDcLA', '彩虹', '8t-sfOpHItW_g3GiAp', '動力火車 (Power Station)', 'CmlH894WAc3pxS6KkN', '就是紅光輝全紀錄', '20040402', NULL),
('HYcRVRI4zKb7fk0WhE', '東區東區', 'LXuGMcxRSEf7QJAneA', '八三夭 (831)', 'Ck7CralzW4Ta20SWul', '最後的8/31', '20120528', NULL),
('HYifVmI4zKb7ekJ0f_', '愛我別走', 'On2HjY4Ue0DkOmUMZS', '張震嶽 (Ayal Komod)', 'PaGXgSKRDe7LVoPOz6', '秘密基地', '19981200', NULL),
('HYRA39EIzKb7fY-EtW', '罪愛1995', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', 'Cm6jx66WAc3pzgNviA', '多色寶山大王', '20211008', NULL),
('HYwcNlI4zKb7dc98bR', 'Fly Away (Fly Away)', '8sG0oWl8zbMOm2IwTD', '飛兒樂團 (F.I.R.)', 'P-KiK-ljmaj9r9u9pF', '飛兒樂團', '20040423', NULL),
('HZ1IgfJiEYKfmc8Edf', '最後的831', 'LXuGMcxRSEf7QJAneA', '八三夭 (831)', 'Ck7CralzW4Ta20SWul', '最後的8/31', '20120528', NULL),
('HZ5PUgJSEYKflWFTjq', '我怎麼哭了', 'LXuGMcxRSEf7QJAneA', '八三夭 (831)', 'GqbeBcrAKRoy9mbEkS', '大逃殺', '20141128', NULL),
('HZ8jX2JSEYKflh8eOy', '演員', 'Ko-HFI8xAz3AnbBKmO', '薛之謙 (Joker Xue)', 'D_DZTTHKsaFcMJLl1v', '紳士', '20150609', NULL),
('HZAPZFJSEYKfkTKwTf', '日不落 (Sun will never set)', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', '-oYpps1M2jy1xG8M3h', '特務J (Agent J)', '20150205', NULL),
('HZbHIaJiEYKfmY4NFC', '離開', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', '9-pivLhimwqbJTMFMG', '貧民百萬歌星 2009-2012 Best Singles Collection', '20120713', '[2]'),
('HZGGGGFiEYKflH1QpP', '哥哥呀哥哥 - Bonus Track', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', 'Cm6jx66WAc3pzgNviA', '多色寶山大王', '20211008', NULL),
('HZW__DHSEYKflq_6sT', '切歌', '8qHLhzjl89Yankefi7', '李聖傑 (Sam Lee)', 'WnGD4rBXUikGhzSMDC', '原諒我沒有說', '20091219', NULL),
('-k65MntTMveSYmS2L7', '一光年', 'GsaswAHedyFlIrklmy', '5566', '_XQVZGCm4bYZvuwpbV', 'C''est Si Bon 最棒冠軍精選', '20040928', NULL),
('-kErT5gjMveSaj0gHu', '米兒', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', '4qFpin3VwYJTTma7UE', '電火王', '20180822', NULL),
('Kk1xkGkz5hrtDv5a5k', 'Love U U', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'XZ6fWxXCigL04ZfaeN', '學不會', '20111230', NULL),
('KkPiHkiT5hrtBncrpv', '失眠是一種病 Feat. J.Sheon (I Can''t Fucking Sleep Feat. J.Sheon)', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', 'Cnuy6qRl4d6Z2oA89h', '廢物 (Loser)', '20190605', NULL),
('KkVrwAmT5hrtCTiWcG', '愛情廢柴', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '8n1L7efEHSCv3MUBwW', '周杰倫的床邊故事', '20160624', NULL),
('KlhoaSF4BZNAChnyts', '句號 (Full Stop)', 'WsiS7mTku7eU0Z8S7R', 'G.E.M.鄧紫棋', 'DaaoCgFunP601xH1MQ', '句號 (Full Stop)', '20191122', NULL),
('KlHQAeCYBZNAAQlJX9', '逆光 (Back Lighting)', '9aNGsD_q8L4InIWGpJ', '孫燕姿 (Yanzi Sun)', 'Omt9q9g4P4HnBwwCDw', '逆光 (Against the Light)', '20070502', NULL),
('KljjlKCoBZNAAaSZVK', '善男信女', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', 'GkqX6dGex3YZLAsbLs', '王妃', '20090717', NULL),
('Km-0GdB4R1boN_R5Is', '月牙灣 (Crescent Bay)', '8sG0oWl8zbMOm2IwTD', '飛兒樂團 (F.I.R.)', '0oux7B00u_GpBCZWEa', '愛‧歌姬', '20070928', NULL),
('Km0KSEB4R1boO58Rwf', '童話', 'Ko1QpI8xAz3AmpcIhX', '光良 (Michael Wong)', 'CoXANx6e1JHrxt2X90', '童話', '20050121', NULL),
('Km3U-5FYR1boOnw8u-', '黑夜問白天 (53 Dawns)', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'CoRIWo6O1JHryBFRnj', '偉大的渺小 (Message In A Bottle)', '20171229', NULL),
('Kmd7anBIR1boMEddRR', '聽爸爸的話', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'GptWH1zjWop21-Mg1X', '哎呦，不錯哦', '20141226', NULL),
('KmG64kDIR1boM_A-2U', '角頭', '4pCYG3uv_-WY5d9QYt', '周湯豪 (NICKTHEREAL)', 'CsURod2P0h_Rltb6IM', '真 (REAL)', '20161015', NULL),
('KmKGSeB4R1boP6LiOi', '小情歌', 'DaVqiPBJ8qnEtzTaSU', '蘇打綠 (Sodagreen)', 'GsqhwW7zG1L3HDKV_B', '小宇宙', '20061020', NULL),
('KmRcqVA4R1boMm59pU', '新的心跳 (Heartbeat)', 'WsiS7mTku7eU0Z8S7R', 'G.E.M.鄧紫棋', 'XXTXiV5qEjhjBnio6j', '新的心跳', '20151106', NULL),
('KmsMCHB4R1boPwV_A4', '我是真的愛上你', 'OtTyughrlH1BMW_ev5', '王傑 (Dave Wang)', '8ouF7eKQ3_AF67zj8s', '不孤單', '20040218', NULL),
('Kmz30pN4R1boOZ68Do', '金光閃閃 - 中華奧會/台灣啤酒2020東京奧運中華隊應援曲', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', 'Cm6jx66WAc3pzgNviA', '多色寶山大王', '20211008', NULL),
('Kn9Aw92cKmKv6tCogT', '告白氣球', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '8n1L7efEHSCv3MUBwW', '周杰倫的床邊故事', '20160624', NULL),
('Knb5vH9cKmKv6gIqv0', '在這座城市遺失了你 (Where I Lost Us) - 戲劇《他們創業的那些鳥事》插曲', '9ZHTY_i6Jj_jI2Evam', '告五人 (AccuseFive)', '5XEkfe7RTkffIns_eH', '運氣來得若有似無 (Easy Come, Easy Go)', '20201231', NULL),
('KngNUO08KmKv7t0i75', '對面的女孩看過來', '8lxO5tOuEe4fR14NR7', '任賢齊 (Richie Jen)', 'L-KgsDxVKwYNoSEbZa', '愛像太平洋', '19980828', NULL),
('KniMeF3MKmKv60FxJX', '永不失聯的愛 [原創概念版] (Unbreakable Love (demo)) - 原創概念版', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', 'Co-kT56O1JHrxdJyPS', '永不失聯的愛 [原創概念版] (Unbreakable Love (demo)) - 原創概念版', '20170524', NULL),
('Kog1MKehP2VFs6RuKR', '歐若拉', '4tkLYujJ8jt7EXGlr6', '張韶涵 (Angela Chang)', 'HZmQ4FBCAsSpLyN82z', '歐若拉/Aurora', '20041203', NULL),
('KoGG07aBP2VFsuV2kx', '懶趴火', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', '8ru1u2Q7LZoqMvnaKG', 'Sound Check', '20180112', NULL),
('KohLskehP2VFtq8X05', '馬戲團公約', '5YNsuSMRDF8kojj_QJ', '棉花糖 (katncandix2)', 'X_PptxcUyKgAmlCeno', '再見王子', '20100514', NULL),
('Ko-I4DeRP2VFvUlmbz', '將軍令 - 電影「黃飛鴻」主題曲', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'DZVARno_1aDjGw299g', '將軍令', '20141112', NULL),
('KoKBHZZRP2VFvAqb1X', 'Honey', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', 'Kmmi9L4qmUrTm4Fnjd', 'Honey', '20050201', NULL),
('KoUkMXehP2VFv2qMLi', '菊花台', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '4m3pcRFE2kVG7k3-ep', '依然范特西 (Still Fantasy)', '20060905', NULL),
('Kpd4DjI0sGgkqFeEKB', '阿姨', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', 'CsPlnn0P0h_RlrGAJj', '阿姨', '20220420', NULL),
('Kpdo9-FEsGgkr170pI', '我們小時候', '4rZFD_ak_yCH-F1Uws', 'TANK 呂建忠', '8pMNtA4svmYiMsBkIE', 'Fighting! 生存之道', '20060224', NULL),
('KplgZ6FEsGgkr2J3Gl', '忠孝東路走九遍', '8t-sfOpHItW_g3GiAp', '動力火車 (Power Station)', 'OourVUaYhoFhEQC34f', '忠孝東路走九遍', '20010200', NULL),
('KpvGOgE0sGgkpTBtas', '很久很久以後 (Some Time After) - 緯來<我的鬼神君>片頭曲、東森<上流愛情>片尾曲、八大<雙面夏娃>片尾曲', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'OplJcZMAB1A88jnRoV', '范范的感恩節 (Fanfan''s time to give thanks)', '20160109', NULL),
('KpzeGXL0sGgkrtpaCy', '你那麼愛她', '8qHLhzjl89Yankefi7', '李聖傑 (Sam Lee)', 'OqQWjYdlHgkGhv81aB', '音樂十年李聖傑, 唯一精選', '20090120', NULL),
('KqdflbiB3UapH3V2om', '分手快樂', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '8khm83p-GTiCJAeS72', 'Sunrise 我喜歡', '20020207', NULL),
('KqnIQMiR3UapHZG9tl', '步步 - 戲劇<步步驚情>主題曲', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'GkrKC_Gex3YZLUwhz3', '五月天 | 步步 | 自選作品輯 the Best of 1999-2013', '20131230', NULL),
('KqnLVPiB3UapHyajO6', '殘酷月光', '4maQaK6fNyolbxCHib', '林宥嘉 (Yoga Lin)', 'D_fNixHKsaFcPb1bOx', '神秘嘉賓', '20080603', NULL),
('-kQvqPlzMveSaSwUW0', '還是要幸福', 'Xa_WYdZHejH-lBzV-F', '田馥甄 (Hebe)', '9_FUAY1NrjpYYIl2Mg', 'My Love', '20110902', NULL),
('Kr5trIRH6Il0BnGza-', '我們的愛', '8sG0oWl8zbMOm2IwTD', '飛兒樂團 (F.I.R.)', 'P-KiK-ljmaj9r9u9pF', '飛兒樂團', '20040423', NULL),
('KrafcaYn6Il0DW1LfF', '大風吹', 'StHnkq8RxUXeTrn7ij', '草東沒有派對 (No Party For Cao Dong)', '4kwp0eZHF4KmUKUOIs', '醜奴兒', '20160219', NULL),
('KrC1ZbZn6Il0B4awpu', '傳說', 'GsaswAHedyFlIrklmy', '5566', '_XQVZGCm4bYZvuwpbV', 'C''est Si Bon 最棒冠軍精選', '20040928', NULL),
('Kr_m_fRH6Il0CkMRCx', '魔術先生', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '5aqrTZwYczZYRthb7q', '魔杰座', '20081015', NULL),
('KrU29oU36Il0DvUzen', '終於了解自由 (Freedom)', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', 'OknfDhkqH9M2simtrp', '終於了解自由 (Freedom)', '20190110', NULL),
('Krwq1tZn6Il0Dx6qdJ', '白色花漾', 'GsaswAHedyFlIrklmy', '5566', '5Y3mpgoHsLpPx6xdVz', '好久不見', '20050817', NULL),
('KscDSA1XfpSTS267Z6', '大眠', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', '4mTkqJFk2kVG6o_J3-', 'CYNDILOVES2SING 愛。心凌', '20181207', NULL),
('Ks-L9hw3fpSTTfF9uQ', '過火', 'LZ5XE3V1w4lbhvgqpN', '張信哲 (Jeff Chang)', '0tMKQkRsK_vh_755Ql', '寬容', '19950609', NULL),
('KsNxNkw3fpSTS3_hs4', '擱淺', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'HZrRUFBCAsSpLkhfRr', '七里香 (Common Jasmine Orange)', '20040803', NULL),
('KstMhJw3fpSTTsc6iO', '戀愛達人', '4tvrYujJ8jt7Fpy1oq', '羅志祥 (Show Lo)', '8l4iQizOIXErRlQSPK', 'All For You超精選', '20110121', NULL),
('Ksto1lw3fpSTS4Yt_2', '一路向北', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '0oYr7A00u_GpDyirL3', '11月的蕭邦', '20051101', NULL),
('Kt0XIKF1IXgP2PndLO', '寂寞邊界', 'CnI-u5i5Ft4y7Z7LFz', '張棟樑 (Nicholas Teo)', '8poApG4svmYiPAdkDx', 'From Now On 新歌＋精选', '20080219', NULL),
('Kt4-EhF1IXgP1KUw34', '公公偏頭痛', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '9YMqiF0HpTG8IZrErD', '十二新作', '20121228', NULL),
('Kt56FuF1IXgP1LOrfZ', '愛笑的眼睛', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', '9-syfMhimwqbKS-WBs', '她說', '20101208', NULL),
('KtejhgP1IXgP0A8jpw', '馬克吐溫', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', 'WnL5H4CXUikGjCPlSh', '馬克吐溫', '20210124', NULL),
('KtL-8vNlIXgP2-DRWJ', '猴籠', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', 'Ot1FQLZBEqbM_0qMgl', '猴籠', '20200609', NULL),
('KtQXI4GVIXgP0Z-PNl', '凡人歌 (Song of Ordinary People)', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', '4raeFYjAFoOyYLWjhD', '凡人歌 (Song of Ordinary People)', '20170320', NULL),
('KtRsZVF1IXgP3eKZVu', '蘭亭序', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '5aqrTZwYczZYRthb7q', '魔杰座', '20081015', NULL),
('L_5CGkv5_NyBr7W_mT', '山海', 'StHnkq8RxUXeTrn7ij', '草東沒有派對 (No Party For Cao Dong)', '4kwp0eZHF4KmUKUOIs', '醜奴兒', '20160219', NULL),
('-l6jkbHPSD43mshRqP', '袖手旁觀 (Without doing anything)', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', 'Wq-YqS5oG8C8nDsy4N', 'Reminiscence', '20151231', NULL),
('L_9NJCmZ_NyBoq15hd', '最親愛的你', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'On-cyUHers6SrrQlG4', '愛,在一起 Together', '20120530', NULL),
('La9YcyrJzEPTi_AbWU', '那年夏天寧靜的海', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', '-oWoxx0M2jy1w_5blk', 'Magic Cyndi', '20070401', NULL),
('LaE0jvsJzEPTgYLNx6', '喜劇之王', 'D-0uSsbo3KbdjIQkWA', '李榮浩', '0pmo-2i688Op4O2gpL', '李榮浩', '20141128', NULL),
('-laiyiG_SD43lhDG7T', '我很醜,可是我很溫柔 - 溫柔版', '4rEnL_ak_yCH8DgDfp', '趙傳', 'DXBbi1MfYpMkhb7YSf', '我很醜，可是我很溫柔', '19881229', NULL),
('L-bRws7hXlYLtCNsBV', '黑色幽默', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'SpNSmp0aS-4BcMhBrv', '杰倫', '20001223', NULL),
('L-I5k07BXlYLuhbN_1', '面具', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', '4qqAP231wYJTRLft62', '有所畏', '20140325', NULL),
('L_JCl2mZ_NyBqH7x54', '被動', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', 'L--UgDxVKwYNqP8KXP', '愛你伍佰年', '20040527', NULL),
('L-KIcu7hXlYLv6xePG', '痛哭的人', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', 'L--UgDxVKwYNqP8KXP', '愛你伍佰年', '20040527', NULL),
('L-KiM37hXlYLsA37Lq', '崇拜', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '5XleEU6BTkffIgjHkb', '崇拜', '20071109', NULL),
('L_kxG4mp_NyBoKPwrb', '笑青春', '5aLyvKCxN9BcKq3Ukw', '四個朋友(林正/鄭宇伶/劉佳銘/蘭馨)', '8sZsOp6TI8uipBL8Aq', '第二章', '20150508', NULL),
('LXazth3RU4Yl5cqBU8', 'In Your Eyes', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', 'GkKGOdGex3YZIGADwa', '雨愛 繽紛慶功版 (Rainie & Love ...?)', '20120606', NULL),
('LXLAV03RU4Yl4Ksejk', '說愛你 (Shuo Ai Ni)', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', '8tEDI9N8ZgqWdtV34m', '看我72變 (Magic)', '20120520', NULL),
('LXqKgm3RU4Yl54McAn', 'Marry Me (Marry me)', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', 'L-COQExVKwYNpiH-Fh', '以愛之名 (It''s All About Love) - Special Edition', '20121130', NULL),
('LXSUdi3RU4Yl5eZlUy', '無眠 - Album Version', 'DaVqiPBJ8qnEtzTaSU', '蘇打綠 (Sodagreen)', '0ppAX5i688Op7l-kIr', '夏/狂熱', '20090911', NULL),
('LXziD_khU4Yl5sPvBy', '另一端 (The Other Side)', 'D-0uSsbo3KbdjIQkWA', '李榮浩', 'Wok0G6VXYBvu9M0IFI', '另一端 (The Other Side)', '20240510', NULL),
('LY1Tn5c0B5NirTDecC', '燕尾蝶', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', 'HatY8-qP_dvJIt7EvL', '燕尾蝶', '20040910', NULL),
('LYpfhZb0B5NirivW5F', '說好不哭 (With 五月天阿信) (Won’t Cry (With Mayday Ashin))', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'Ckm7xtlDW4Ta3CaoyG', '說好不哭 (Won''t Cry)', '20190916', NULL),
('LYxVRqUUB5Nir2rHCy', '存在', 'GsaswAHedyFlIrklmy', '5566', '_XQVZGCm4bYZvuwpbV', 'C''est Si Bon 最棒冠軍精選', '20040928', NULL),
('LZ2c4cV8MFHaiyqhd3', 'Play我呸', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', 'HZQ3xJBCAsSpIm8dGS', '呸', '20141115', NULL),
('LZAvDcVcMFHagr4PIO', '諾亞方舟【2012世界巡迴演唱會「諾亞方舟」主題曲】', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'H-BNLU5ZibEcXZoNMQ', '第二人生 Now Here 明日版', '20111217', NULL),
('L-Zm9y7hXlYLvSOssn', '100個太陽月亮', '5YNsuSMRDF8kojj_QJ', '棉花糖 (katncandix2)', 'DZOnkuo_1aDjFIhZau', '不被瞭解的怪人', '20121114', NULL),
('LZXeP6VcMFHajVvC-h', '黑白配', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'CrZOrY_ZyWtoia85Ad', '我們的紀念日', '20060609', NULL),
('LZY__PVcMFHajlcMKy', '最重要的決定', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'T-TGPFmQZiJJXfJBZa', 'Love & FanFan', '20110318', NULL),
('-nFKvFIYz-JygJmGVf', '世界末日', 'Wn66e15iTvH9-mVshy', '咻比嘟嘩 (S.B.D.W)', 'P-wxC1ljmaj9r5V85d', '世界末日 (The End Of The World)', '20150602', NULL),
('_-npwLq-B8cu3v2Fm1', '愛你沒差', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '9YMqiF0HpTG8IZrErD', '十二新作', '20121228', NULL),
('-nWd8mLIz-Jyifwbc6', '春天裡', '9-woBH8QpgvpPFuwXy', '汪峰', '8n4ZNkfUHSCv2O-MD8', '信仰在空中飄揚 (Believe Flies In The Wind)', '20090728', NULL),
('-oeFMV8-e7WVJPTp3l', '披星戴月的想你 (miss you day and night)', '9ZHTY_i6Jj_jI2Evam', '告五人 (AccuseFive)', 'LXN00s5jKFATvcE753', '披星戴月的想你 (miss you day and night)', '20181030', NULL),
('Ok-1VQenwySdIgZqwu', '放手一搏', 'GsaswAHedyFlIrklmy', '5566', '0qe0icYgW0hFmupORF', '格鬥天王電視原聲帶', '20050121', NULL),
('Ok7rHoWHwySdKyoH1X', '退後', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '4m3pcRFE2kVG7k3-ep', '依然范特西 (Still Fantasy)', '20060905', NULL),
('OkAmzsUHwySdLQyF43', '不將就 (Can''t Bear It) - 電影<何以笙簫默>片尾曲', 'D-0uSsbo3KbdjIQkWA', '李榮浩', 'TYEwupwPOR7QgCbc1c', '有理想', '20160122', NULL),
('OkdS0hQnwySdL1rJ-Q', '厭世吉娃娃 (Giwawa ! The Hater)', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', 'Cnuy6qRl4d6Z2oA89h', '廢物 (Loser)', '20190605', NULL),
('OkdsrOWHwySdKmmdqH', '魔鬼中的天使', 'Xa_WYdZHejH-lBzV-F', '田馥甄 (Hebe)', '9_FUAY1NrjpYYIl2Mg', 'My Love', '20110902', NULL),
('OkLjvwWXwySdIgm2JX', '史詩 (An Epic)', 'KnECoRl82J54gSwkat', '蛋堡 (Soft Lipa)', 'Ooj9tcaYhoFhG70PAY', '你所不知道的杜振熙之內部整修 (Secrets of Tu Cheng Hsi: Renovate)', '20130731', NULL),
('OkzY3jWHwySdK3sSC4', '啟程', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'GrFQ3dwZSVBLbkw-vy', 'Faces Of FanFan新歌+精選', '20080722', NULL),
('Ol2auxv4S497aXSHBs', '毒藥 (Addiction)', 'Okn41XNM0d0goNRbqH', '蕭秉治Xiao Bing Chih', 'Or_-c87OLG7iPjhnXE', '毒藥 (Addiction)', '20220419', NULL),
('OlJ8azjoS497b5mvYl', '不為誰而作的歌 (Twilight)', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', '4s1xcwsyxHs9DGR8s3', '"和自己對話" 實驗專輯 ("From M.E. To Myself" Experimental Debut Album)', '20151218', NULL),
('Olm99MiIS497bKGilK', '遠走高飛', '8qHLhzjl89Yankefi7', '李聖傑 (Sam Lee)', 'GmaJkTPkte5pDzPwS4', '絕對痴心．手放開', '20041126', NULL),
('OluVNMiIS497Y4E07n', '你的微笑', '8sG0oWl8zbMOm2IwTD', '飛兒樂團 (F.I.R.)', 'P-KiK-ljmaj9r9u9pF', '飛兒樂團', '20040423', NULL),
('OlzkFtrIS497Z24eBa', '花的嫁紗', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', '5_VM6c0KO3eqKAkyRj', 'My! Cyndi!', '20200920', NULL),
('Om7Z-qaNTsIBeXhb_l', '一事無成的偉大 (The Great Nobody)', 'LXuGMcxRSEf7QJAneA', '八三夭 (831)', '-ojKUs1s2jy1zQuWOw', '一事無成的偉大 (The Great Nobody)', '20180523', NULL),
('OmAuBBe9TsIBdPcVHD', '親愛的那不是愛情', '4tkLYujJ8jt7EXGlr6', '張韶涵 (Angela Chang)', 'WpPyaKNLeutVFPnfmp', 'Ang5.0', '20071214', NULL),
('OmJ2FhcNTsIBcZ3Edv', '年輪說', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '8kQ6AjpuGTiCLBGy89', '年輪說 - 年輪說', '20160930', NULL),
('OmlBDxZtTsIBeCK2Qj', '想見你想見你想見你 (Miss You 3000) - 電視劇<想見你>片尾曲', 'LXuGMcxRSEf7QJAneA', '八三夭 (831)', '5_8ndF1qO3eqK0_bia', '想見你想見你想見你 (Miss You 3000) - 電視劇<想見你>片尾曲', '20191111', NULL),
('OmSw1Se9TsIBfreSmB', '黃昏', 'GlXWVK8JxUb995K9mU', '周傳雄 (Steve Chou)', 'CsfwIC2f0h_Rn9LZbV', 'Transfer (Steve Chou Transfer)', '20150603', NULL),
('OnTW2M1bo9axPYKM09', '醉赤壁 - 赤壁Online電玩主題曲', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', '5ZOjcwHymfP8P4Ko3l', 'JJ陸', '20081020', NULL),
('OnvEW-1bo9axMgRHb9', '牽心萬苦', '4nnlQg-K2KLL4Qwdrg', '謝和弦 (R-chord)', 'PXzJyLPXQ7mrza2zp8', '於是長大了以後', '20110527', NULL),
('OoM-Xi5q32AqaG4SpU', '當我想你的時候（LIVE)', '9-woBH8QpgvpPFuwXy', '汪峰', 'KtWUaWUdUD8fXY1g_M', '生無所求2011演唱會', '20180223', NULL),
('OoNI3m-K32Aqb913wj', '愛在身邊 (Unbreakable Love) - 愛在你聲邊 主題曲', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', '-nKatIEYNWEdbbT0oE', '愛在身邊 (Unbreakable Love) - 愛在你聲邊 主題曲', '20170106', NULL),
('OorrA43q32AqYaESkm', '離開你以後 (Leaving You) - 電影《你的婚禮》插曲', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', 'HXiIKRO8Rr3eM8CoYq', '離開你以後 (Leaving You) - 電影《你的婚禮》插曲', '20210525', NULL),
('OoUOew0q32AqYQu_Ry', '愛不單行', '4tvrYujJ8jt7Fpy1oq', '羅志祥 (Show Lo)', 'PYSK9rrGqns_S6FPWs', '羅生門', '20100115', NULL),
('OoUqHP9a32AqaVoViI', '蒲公英的約定', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'TaJf8uNz9CYeF4qjlh', '我很忙', '20071101', NULL),
('Op7VqoPgzUmSYEj2kj', '寧夏', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', 'HatY8-qP_dvJIt7EvL', '燕尾蝶', '20040910', NULL),
('OpHItfPgzUmSbbCJCX', '十萬毫升淚水 - 電影<愛在午夜希臘時>中文宣傳曲', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', '4o0ZF2pRVgY_atH071', '天使與魔鬼的對話', '20130924', NULL),
('OpktbkPgzUmSb1WDej', '心醉心碎', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', 'WqQusk5oG8C8lUn1Zi', '有人在等', '20120803', NULL),
('OpVmLOGQzUmSanE8gD', '愛的主場秀', '4tvrYujJ8jt7Fpy1oq', '羅志祥 (Show Lo)', 'PYSK9rrGqns_S6FPWs', '羅生門', '20100115', NULL),
('Oq0SZk7_MMmVeRCGuQ', '說了再見', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'TZM474uPIu_YedvwVp', '跨時代', '20100518', NULL),
('OqICu_7_MMmVeAcA6C', '我不是他', '5aLyvKCxN9BcKq3Ukw', '四個朋友(林正/鄭宇伶/劉佳銘/蘭馨)', '4oQe9upRVgY_a2A7AZ', '四個朋友', '20130621', NULL),
('OqQTI27vMMmVcyax2F', '不醉不會', 'Xa_WYdZHejH-lBzV-F', '田馥甄 (Hebe)', 'Wkit_HBjIvVnnOvuLM', '渺小', '20131129', NULL),
('OqrENx7_MMmVeQkLh1', '火山 - Album Version', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', 'D-jbFYpddbwdPp6wGU', '單程車票', '20110101', NULL),
('OqtX9n7PMMmVeETd4V', '算什麼男人', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'GptWH1zjWop21-Mg1X', '哎呦，不錯哦', '20141226', NULL),
('Oq-vFc7_MMmVeETQUS', '猜不透', '9_w6azeJGTMFKInhqn', '丁噹 (Della)', 'OrpTfA5eLG7iN_Aoys', '我愛上的', '20080708', NULL),
('Or0b-XT1f78HWIHS9M', '你的情歌 (Your Love Song) - 電影<你的情歌>主題曲', '4rZFD_ak_yCH-F1Uws', 'TANK 呂建忠', '_a0LXnquDpNo4_2uIY', '你的情歌', '20200117', NULL),
('Or7g-CYVf78HUYCF89', '心悶', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', 'Cm6jx66WAc3pzgNviA', '多色寶山大王', '20211008', NULL),
('OrE_0tUVf78HWGNZ07', '三年二班', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'Gp7hOlzjWop20h4mMz', '葉惠美', '20030731', NULL),
('OroVcrUVf78HUSmaVj', '半島鐵盒', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '9aYlm72DUhQp9CzKOt', '八度空間 (The Eight Dimensions)', '20020719', NULL),
('OsMmIIpE8UtszMX09U', '狂想曲', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', '8krrgzp-GTiCKqcbBE', '漁人碼頭夏日狂想曲新歌演唱會 (2nd Version) - 2nd Version', '20110630', NULL),
('Osqmenhk8Utsx-oPQh', '無所謂', 'GsaswAHedyFlIrklmy', '5566', '0q1sKfYgW0hFmPrjHL', 'MVP情人電視原聲帶', '20020904', '[3]'),
('OsvOY3pE8Utswg9R2z', '牽掛', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', '9aTJm72DUhQp_Zskob', '浪人情歌', '19941216', NULL),
('OswUkipE8UtswZ3NVm', '雨愛 (Yu Ai) - 海派甜心片尾曲', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', 'GkKGOdGex3YZIGADwa', '雨愛 繽紛慶功版 (Rainie & Love ...?)', '20120606', NULL),
('OsyIyJpU8UtsyiUl7K', '克卜勒 (Kepler)', '9aNGsD_q8L4InIWGpJ', '孫燕姿 (Yanzi Sun)', '4o3LBRpRVgY_Yxi_aJ', '克卜勒', '20140101', NULL),
('Otlkf7zt3DzwZYOxkO', '紅色高跟鞋', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', '4kbI7MYXF4KmWCoiOg', '若你碰到他', '20090819', NULL),
('OtOhVIxd3DzwYuEmRm', '妳是我的菜', '4pCYG3uv_-WY5d9QYt', '周湯豪 (NICKTHEREAL)', 'CsURod2P0h_Rltb6IM', '真 (REAL)', '20161015', NULL),
('OtyVn4zt3DzwY1Vil_', '背對背擁抱', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'Kmb84N5qmUrTlnpTr7', '100天', '20091215', NULL),
('Pa4Amx0aWKr83DWb6u', '讓我為你唱情歌', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', '-qbs6ZvkB5ro-zennk', '欲望反光', '20180622', NULL),
('PaKeL2xaWKr82jkBun', '自由', 'On2HjY4Ue0DkOmUMZS', '張震嶽 (Ayal Komod)', 'XYcgKcKPROdeeNOAxp', '阿嶽正傳', '20040624', NULL),
('Pao_m9xaWKr808SFYu', '大藝術家 (The Great Artist)', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', 'Kmy8gJ5qmUrTmfxx9-', 'MUSE IN LIVE (MUSE IN LIVE) - Deluxe Version', '20120912', NULL),
('Paz8PyxaWKr82o2PlV', '安靜', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'T_GZb7mb5SlJ9BVnzE', '范特西 (Jay''s Fantasy)', '20010920', NULL),
('P_C0blNaadNrjI-V10', '十七 (17)', 'LXmR8cxRSEf7TtNJrW', 'S.H.E', 'P-OYHqlDmaj9pXCd2r', '十七', '20180830', NULL),
('P_c_y1B6adNriKJkm6', '緩緩', 'Ok6kf9NM0d0grGYNbl', 'aMEI (張惠妹)', 'Okl8SAlaH9M2s97GAv', '緩緩', '20201230', NULL),
('P-F-41F2hnTeOaANZI', '簡單愛', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'T_GZb7mb5SlJ9BVnzE', '范特西 (Jay''s Fantasy)', '20010920', NULL),
('P_FSSyIKadNrhBfz7U', '浪人情歌', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', '9aTJm72DUhQp_Zskob', '浪人情歌', '19941216', NULL),
('P_hMKkIKadNrhmNb2f', '1到10＝我和你', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'KoboX1oK1IXU_2j00k', 'F ONE', '20090715', NULL),
('-pjhhh6RzoZVpwtKkD', '彩虹', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'TaJf8uNz9CYeF4qjlh', '我很忙', '20071101', NULL),
('P-LE8ABWhnTeMu04uD', 'Only Scott Knows', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', '8ru1u2Q7LZoqMvnaKG', 'Sound Check', '20180112', '[1]'),
('P_N3TPG6adNrhvHxAo', '秘密', '4kf5MixqN3_1In52_l', '藍又時 (Shadya Lan)', 'Oq_5D1dlHgkGjFYpkj', '一號創作專輯 秘密', '20090313', NULL),
('P_SplAIKadNrhx8eWc', '我好想你 (I Miss You So)', 'DaVqiPBJ8qnEtzTaSU', '蘇打綠 (Sodagreen)', 'TXO13c9oOtk914X1zF', '秋:故事 (Autumn : Stories)', '20130918', NULL),
('P-vK8hF2hnTePWzS9V', '說謊', '4maQaK6fNyolbxCHib', '林宥嘉 (Yoga Lin)', '0nlT5My3tCwovNvSvc', '感官/世界', '20091030', NULL),
('PX7TuBXL8IwsAmZoiG', '我不難過 (Not Upsetting)', '9aNGsD_q8L4InIWGpJ', '孫燕姿 (Yanzi Sun)', 'OmPCTog4P4HnBvQsEx', '未完成', '20030107', NULL),
('PXCsqTXL8IwsCc4nIr', '愛情之所以為愛情', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '1XcOyGUXDReMEBb3rp', '靜茹＆情歌- 別再為他流淚', '20090116', NULL),
('PXe52DXL8IwsBYHmDo', '味道', 'WowUWOPmMb0q4dE7-8', '辛曉琪 (Winnie Hsin)', 'HaQsg-qP_dvJIiicjT', '味道', '19941229', NULL),
('PXibuuS78IwsCY4FCY', '怪美的 (Ugly Beauty)', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', '9_C5241trjpYa_1BLb', 'Ugly Beauty', '20181226', NULL),
('PXOd2FTL8IwsAMMcBB', '在沒有你以後 (feat. 張智成)', '4nnlQg-K2KLL4Qwdrg', '謝和弦 (R-chord)', 'Wlbng7bw7wx8pP2yiX', '在沒有你以後 (feat. 張智成)', '20170621', NULL),
('PXrvacXL8IwsAnqcyg', '專屬天使', '4rZFD_ak_yCH-F1Uws', 'TANK 呂建忠', '0kosU9zgc5pS4oIDLD', '延長比賽 Keep Fighting', '20070119', NULL),
('PXYtWNX78IwsDZdatk', '搖勒搖勒', 'LXuGMcxRSEf7QJAneA', '八三夭 (831)', 'GqbeBcrAKRoy9mbEkS', '大逃殺', '20141128', NULL),
('PXzVEJSL8IwsB4ofyM', '兜圈', '4maQaK6fNyolbxCHib', '林宥嘉 (Yoga Lin)', 'CqeMEhAxmpvC9psuuj', 'THE GREAT YOGA演唱會數位Live精選', '20180701', NULL),
('PY22_tuSNHxJsQZfGI', '修煉愛情 (Practice Love)', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'KqrlOQzKOnJP44-WFr', '因你 而在 (Stories Untold)', '20130312', NULL),
('PYki-YuSNHxJvvfWBT', '晴天', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'Gp7hOlzjWop20h4mMz', '葉惠美', '20030731', NULL),
('PYnLhinyNHxJvXQhmg', '愛在夏天 (Summer Romance)', '9ZHTY_i6Jj_jI2Evam', '告五人 (AccuseFive)', '9Xwem1lHC0_tknHvRz', '愛在夏天 (Summer Romance)', '20180520', NULL),
('PZ0G2qHlfVd6hValdn', '志明與春嬌', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', '8m0T0l11iKnsn2-BqE', '第一張創作專輯', '19990707', NULL),
('PZD2QTF1fVd6hURduh', '頑固 (Tough)', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'XXgRQh5qEjhjB70Jha', '自傳 (history of Tomorrow)', '20160820', NULL),
('PZFE-4HlfVd6j_IB6N', '給我一首歌的時間', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '5aqrTZwYczZYRthb7q', '魔杰座', '20081015', NULL),
('PZmnaXGFfVd6jZBB1w', '失語者 (Aphasia)', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', '9Zs_Ilgn_BzuO8htTu', '失語者 (Aphasia)', '20151113', NULL),
('PZWsKvHlfVd6hFLyTU', '江南', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'CqessGARmpvC_IiqMa', '第二天堂', '20040604', NULL),
('PZZojWBFfVd6iQBbVX', 'Do You Remember', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', 'Cp7IwpWUaw7YB320tk', 'Do You Remember', '20190506', NULL),
('-qMMYsCwLDIxCxxTdi', '看得最遠的地方', '4tkLYujJ8jt7EXGlr6', '張韶涵 (Angela Chang)', 'DYv_mVgtI9ARWhBTuu', '第5季', '20090925', NULL),
('-qn2N4CALDIxDm5Os5', '我懷念的 (What I Miss)', '9aNGsD_q8L4InIWGpJ', '孫燕姿 (Yanzi Sun)', 'Omt9q9g4P4HnBwwCDw', '逆光 (Against the Light)', '20070502', NULL),
('_-Qnlzq-B8cu0m4rYy', '是否我真的一無所有', 'OtTyughrlH1BMW_ev5', '王傑 (Dave Wang)', 'StOWgEOOyDQXzhCsXl', '王傑超級精選集一番傑作 - 一番傑作', '19960401', NULL),
('-rEHd189J3FgavJOV2', '輕熟女27/我只在乎你', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', '9-pivLhimwqbJTMFMG', '貧民百萬歌星 2009-2012 Best Singles Collection', '20120713', NULL),
('-rfZfT99J3FgYz9XU3', '別說沒愛過 (Dont'' Say) - 電視劇<致,第三者>片尾曲', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', 'Ck1yWJlzW4Ta2INkl8', '硬戳 (It All Started From An Intro)', '20160816', NULL),
('-rLpwg89J3FgaGM5y7', '你是我胸口永遠的痛', 'OtTyughrlH1BMW_ev5', '王傑 (Dave Wang)', 'StOWgEOOyDQXzhCsXl', '王傑超級精選集一番傑作 - 一番傑作', '19960401', NULL),
('-sGUdhtDgs1-CVmdwM', '因你而在 (You N Me)', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'KqrlOQzKOnJP44-WFr', '因你 而在 (Stories Untold)', '20130312', NULL),
('SkJuZPKGFd6eC_FzJW', '隱形的翅膀', '4tkLYujJ8jt7EXGlr6', '張韶涵 (Angela Chang)', 'H-P4nQ5ZibEcVLz7WC', '潘朵拉', '20060106', NULL),
('SklflXKGFd6eDpf6zO', '無與倫比的美麗', 'DaVqiPBJ8qnEtzTaSU', '蘇打綠 (Sodagreen)', 'Ctbkta-noP3rNKYDZo', '無與倫比的美麗', '20071102', NULL),
('SllALd7bOx5G3DYNif', '再遇見 (Met Again)', 'DaVqiPBJ8qnEtzTaSU', '蘇打綠 (Sodagreen)', 'TXO13c9oOtk914X1zF', '秋:故事 (Autumn : Stories)', '20130918', NULL),
('-slx4UtDgs1-BlvR0K', '孤單北半球', 'PayfBgTCBoelAQXFFL', 'Various Artists', '4lWlHxRx6lesftbJf9', '愛情合約電視原聲帶', '20040713', NULL),
('SlxhNi7bOx5G2SiXR0', '醜八怪', 'Ko-HFI8xAz3AnbBKmO', '薛之謙 (Joker Xue)', 'GlrpxhUQs-18C6puxd', '意外', '20131226', NULL),
('Sm35W8Yp2bwp6xNeg1', '小手拉大手 - OT：Kaze Ni Naru 幻化成風', 'P-Fv-nmft87W26PYBe', '梁靜茹 (Fish Leong)', '-kgIh-LxzpOHQwfNvH', '親親', '20061004', NULL),
('SmF_KQYp2bwp4RMMFi', '那些你很冒險的夢', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'XZ6fWxXCigL04ZfaeN', '學不會', '20111230', NULL),
('SnaAQ9u82cLmzpEDBx', '霍元甲', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '4tx67DaFtitQ-rhlW8', '霍元甲 EP', '20060120', NULL),
('SnaQGDic2cLmw8e-4O', '對等關係 (feat. 張惠妹)', 'D-0uSsbo3KbdjIQkWA', '李榮浩', '4riNH7hQFoOyZAsXIR', '對等關係 (feat. 張惠妹)', '20211208', NULL),
('So0brzn81DbhakruM9', '小酒窩 - 超甜對唱情歌', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', '5ZOjcwHymfP8P4Ko3l', 'JJ陸', '20081020', NULL),
('SoDdrzn81DbhbHDJOk', '稻香', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '5aqrTZwYczZYRthb7q', '魔杰座', '20081015', NULL),
('SokiP6n81DbhYTO0zy', '遇上愛 (Yu Shang Ai)', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', 'PYFcuRqWqns_Ss3eRO', '遇上愛 (Meeting Love)', '20100401', NULL),
('Sop5ypis1DbhYvhMX6', '電火王', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', '4qFpin3VwYJTTma7UE', '電火王', '20180822', NULL),
('Sopi33n81DbhYbgCk6', '關於小熊', 'KnECoRl82J54gSwkat', '蛋堡 (Soft Lipa)', 'KszhvFNedkIB-KxS9g', '收斂水', '20090705', NULL),
('SosTn3n81DbhZkh7_I', '王妃', 'OkBjD9NM0d0grgaNWb', '蕭敬騰 (Jam Hsiao)', 'GkqX6dGex3YZLAsbLs', '王妃', '20090717', NULL),
('Sovydxvc1DbhbdAWLk', '我難過', 'GsaswAHedyFlIrklmy', '5566', '0q1sKfYgW0hFmPrjHL', 'MVP情人電視原聲帶', '20020904', NULL),
('SozFX-n81DbhanNPK3', '梁山伯與茱麗葉', 'PZ40fTZg4cM7uzFQP2', '卓文萱 (Genie Zhuo)', 'D--wddpddbwdMIfpNk', '習慣', '20061027', NULL),
('SpZUZB681sYnpZw_od', '離人', 'L-yRmEZCGWw2rLnt2J', '林志炫 (Terry Lin)', '4nKJjEOUzvZw3WwgOk', '擦聲而過', '20010401', NULL),
('SqIKG2o9V6ObxUUsKs', '北極星的眼淚', 'CnI-u5i5Ft4y7Z7LFz', '張棟樑 (Nicholas Teo)', '0m6uFv77qw4IlHeYR-', '王子', '20070601', NULL),
('SqLJ08o9V6Obwl_91N', '因為有你', '5aLyvKCxN9BcKq3Ukw', '四個朋友(林正/鄭宇伶/劉佳銘/蘭馨)', '4oQe9upRVgY_a2A7AZ', '四個朋友', '20130621', NULL),
('SqQcTIo9V6ObxgaIIY', '珊瑚海', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '0oYr7A00u_GpDyirL3', '11月的蕭邦', '20051101', NULL),
('SqV5fVo9V6Obx9i14-', '眼底星空', '8qHLhzjl89Yankefi7', '李聖傑 (Sam Lee)', 'GqGNgQrAKRoy9S3PIB', '關於妳的歌', '20060616', NULL),
('SrIqGNfOfJsJhi4OkL', '開不了口', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'T_GZb7mb5SlJ9BVnzE', '范特西 (Jay''s Fantasy)', '20010920', NULL),
('SriqSIfOfJsJin9oii', '夜曲', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '0oYr7A00u_GpDyirL3', '11月的蕭邦', '20051101', NULL),
('SrOcosXufJsJjVw8dD', '永不放棄', 'GsaswAHedyFlIrklmy', '5566', '0qe0icYgW0hFmupORF', '格鬥天王電視原聲帶', '20050121', NULL),
('Ss-euEavDXYxYHjq8_', '妳是我的花朵', '5ZKg8Wda-SSccsePBU', '伍佰 & China Blue', '4qiTzp31wYJTRKUBlV', '純真年代', '20061025', NULL),
('SsiQicavDXYxYYhhC4', '唯一', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'DZ0Y0po_1aDjFSgV4Y', '唯一 (The One and Only)', '20120520', NULL),
('SsS6d8WPDXYxZOTuC2', '好不容易 (Finally) - 《華燈初上》片尾曲', '9ZHTY_i6Jj_jI2Evam', '告五人 (AccuseFive)', 'GspB_F5zG1L3EYGhI6', '好不容易 (Finally)', '20211213', NULL),
('StGyzO-i4xyDLfjMpl', '你不屬於我 (You Don''t Belong to Me) - 《比悲傷更悲傷的故事》影集版片尾曲', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', '5YXiffrHsLpPwGIWlp', '你不屬於我 (You Don''t Belong to Me) - 《比悲傷更悲傷的故事》影集版片尾曲', '20211022', NULL),
('StJJt83y4xyDIALIFw', '星火 - 電影<鬥魚>主題曲', '8sG0oWl8zbMOm2IwTD', '飛兒樂團 (F.I.R.)', 'L_4Atz4-YWLlRqyB8R', '星火 - 電影<鬥魚>主題曲', '20180821', NULL),
('StOIs7zS4xyDIJ_MBX', '兩個人 (2 People)', 'P-VZanmft87W1rnXL5', '黃鴻升 (Alien Huang)', '5YlwofpHsLpPxMrr6m', 'Alien', '20151127', NULL);
INSERT INTO "public"."kkbox_info" ("track_id", "track_name", "artist_id", "artist_name", "album_id", "album_name", "release_date", "tags") VALUES
('StYqgH3S4xyDJLZ6Mu', '我要給世界最悠長的濕吻', 'KqwKtUJYQwYgkjsWeb', '蔡健雅 (Tanya Chua)', '4qLgFA3VwYJTTalTfN', '我要給世界最悠長的濕吻', '20181221', NULL),
('TamqrMuXNCtw9Pl2Xj', '手寫的從前', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'GptWH1zjWop21-Mg1X', '哎呦，不錯哦', '20141226', NULL),
('Ta_tjuunNCtw9jywg2', '人質', 'Ok6kf9NM0d0grGYNbl', 'aMEI (張惠妹)', '-tgSD65zwV9UJQ45XI', '我要快樂 - Deluxe Version', '20060217', NULL),
('TaxpEfu3NCtw8_ooJY', '狼', 'OtsrWghrlH1BMR9iTA', '韋禮安 (WeiBird)', '4qqAP231wYJTRLft62', '有所畏', '20140325', NULL),
('T_QJe1GJ6ZmfU_p-la', '當你', 'H-uvHZ60vbB0Wn07mX', '王心凌 (Cyndi Wang)', '5_VM6c0KO3eqKAkyRj', 'My! Cyndi!', '20200920', NULL),
('TX_kkq83AIGG0U5rAM', '不能說的秘密', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '0oNQDB00u_GpA20-1l', '不能說的秘密電影原聲帶', '20070810', NULL),
('T-yKeyv--xXCVbF2Wv', '天黑黑 (Cloudy Day)', '9aNGsD_q8L4InIWGpJ', '孫燕姿 (Yanzi Sun)', '8kdZQ3p-GTiCLmiM5p', '孫燕姿同名專輯', '20000609', NULL),
('TYm6rysFGziN6paSFs', '不關你的事 (Not Your Business) - 三立電視劇<浮士德的微笑>片尾曲', 'LXuGMcxRSEf7QJAneA', '八三夭 (831)', 'TaYIJtNj9CYeGvy98Z', '生存指南', '20161230', NULL),
('TYuATzvVGziN41VIhd', '是非題', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'SlfJMm3NTiaK2zAP5G', '哲學家', '20070903', NULL),
('TYyIzpvVGziN5NAlRm', '千年之戀', 'SptsQOYIHt6I_hu-Wu', '信樂團 (Shin Band)', '5a7djYwYczZYQ06xUZ', '海闊天空', '20040227', NULL),
('TZTkSU8AH5GcORYWQ_', '貧民百萬歌星 (Ghetto Superstar)', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', '9-pivLhimwqbJTMFMG', '貧民百萬歌星 2009-2012 Best Singles Collection', '20120713', NULL),
('__v0_ak5VATFezLmsD', '謝謝妳愛我 (Thanks For Your Love)', '4nnlQg-K2KLL4Qwdrg', '謝和弦 (R-chord)', 'PZWrUUNo_n53W2bozf', '要你知道 (Time To Let The World Know)', '20160826', NULL),
('WkFDDFFpPowcntb5Cg', '我不配', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'TaJf8uNz9CYeF4qjlh', '我很忙', '20071101', NULL),
('WkojFgH5Powcm3EmId', '好好 (想把你寫成一首歌) (Song About You)', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'XXgRQh5qEjhjB70Jha', '自傳 (history of Tomorrow)', '20160820', NULL),
('WkSEeXCJPowcmHMZVX', '很久以後 (Long After) - 電影《可不可以，你也剛好喜歡我》主題曲', 'WsiS7mTku7eU0Z8S7R', 'G.E.M.鄧紫棋', 'TXF63J8oOtk90xeoIj', '摩天動物園 (City Zoo)', '20191226', NULL),
('WlDi0B6hHya3Aniaxb', '我們的歌 (Wo Men De Ge)', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'KsUH7GNedkIB9WsynW', '改變自己 (Change Me)', '20070628', NULL),
('WlMAFr6hHya3DTQce_', '裂縫中的陽光 (Before Sunrise)', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'KqrlOQzKOnJP44-WFr', '因你 而在 (Stories Untold)', '20130312', NULL),
('WlSzE16hHya3CAopE7', '她說', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', '9-syfMhimwqbKS-WBs', '她說', '20101208', NULL),
('Wm9OeeAnZLaw6DHrZz', '做夢的人 - Bonus Track', 'LY042RimqDphFvSejq', '美秀集團 (Amazing Show)', 'Cm6jx66WAc3pzgNviA', '多色寶山大王', '20211008', NULL),
('WmyOr-I3ZLaw4jG5bA', '一千零一個願望 - 單人版', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '0k8j73zwc5pS6iKT3P', '一千零一個願望 - 單人版', '20171116', NULL),
('WnmW2WMDwvj1y72DYv', '龍捲風', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', 'SpNSmp0aS-4BcMhBrv', '杰倫', '20001223', NULL),
('WnU5ltMDwvj1wOfrOa', '傷心的人別聽慢歌 - 貫徹快樂', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'HYHqS9mgU1EtVPLbPw', '傷心的人別聽慢歌', '20130609', NULL),
('Wogt1Woj7FdqMbA52X', '玫瑰少年 (Womxnly)', 'XYAeW1U8w9TEaVENYH', '蔡依林 (Jolin Tsai)', '9_C5241trjpYa_1BLb', 'Ugly Beauty', '20181226', NULL),
('WooGuqrz7FdqON17Ri', '嘻哈沒有派對 (Hip Hop No Party)', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', 'Cnuy6qRl4d6Z2oA89h', '廢物 (Loser)', '20190605', NULL),
('Wpjr0kRraMOw-_7LJM', '泡沫', 'WsiS7mTku7eU0Z8S7R', 'G.E.M.鄧紫棋', 'P_XIxNeeKjgS7T6a21', 'The Best Of G.E.M. 2008-2012 (Version 2)', '20130704', NULL),
('WpKEHVRraMOw8jvqvZ', '蓋世英雄', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'TZDhD6uPIu_YeocBWr', '蓋世英雄 (Heroes of Earth)', '20051230', NULL),
('WpNbH9WLaMOw8fPKPI', '模特', 'D-0uSsbo3KbdjIQkWA', '李榮浩', 'KpCIlNp_aopkDxJHvu', '模特', '20130916', NULL),
('Wq0p_e9KTPWt5Ikulv', '就是喜歡你', '5aLyvKCxN9BcKq3Ukw', '四個朋友(林正/鄭宇伶/劉佳銘/蘭馨)', '8sZsOp6TI8uipBL8Aq', '第二章', '20150508', NULL),
('WqPFYK96TPWt6hclvA', '背叛', '0ktksnrRCS2ApqMbXj', '曹格 (Gary Chaw)', 'GleVVGUQs-18D4zW9e', 'SUPERMAN', '20061229', NULL),
('WrkQd4znHVANIdE3SQ', '愛著愛著就永遠 - 偶像劇 <上流俗女> 片尾曲', 'Xa_WYdZHejH-lBzV-F', '田馥甄 (Hebe)', 'Wkit_HBjIvVnnOvuLM', '渺小', '20131129', NULL),
('WrM4E_z3HVANJjgSD7', 'OAOA - 現在就是永遠', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', 'H-BNLU5ZibEcXZoNMQ', '第二人生 Now Here 明日版', '20111217', NULL),
('WrwPMWz3HVANLn1cRp', '全世界都停電', '4rZFD_ak_yCH-F1Uws', 'TANK 呂建忠', 'Kq_4OazKOnJP6hPaOt', '第三回合', '20090529', NULL),
('Wsd6F04WZsiE-K3dVE', '忘了', 'PX20oRGILmWjhcjoSy', '楊丞琳 (Rainie Yang)', '9ZaVK5gn_BzuNh3Q5p', '想幸福的人 (Wishing for happiness)', '20120817', NULL),
('WsHf0h5WZsiE9Q7nfT', '小幸運 (A little happiness) - 電影<我的少女時代>主題曲', 'Xa_WYdZHejH-lBzV-F', '田馥甄 (Hebe)', '8saUKg6TI8uippIpd9', '小幸運', '20150710', NULL),
('Wt_2WdBQoKRKXwkMQY', '觸電', 'LXmR8cxRSEf7TtNJrW', 'S.H.E', 'HacFw_qP_dvJIle-_s', 'Forever 新歌+精選', '20060721', NULL),
('WttgchEgoKRKUDiRQz', '至少我還記得 (At Least I Remember) - 天堂的微笑插曲', 'TZghSjbKIgUdp9HKxN', 'Eric 周興哲', 'OknfDhkqH9M2simtrp', '終於了解自由 (Freedom)', '20190110', NULL),
('X-1Txngr-uxSjTZNgF', '手心的太陽', '4tkLYujJ8jt7EXGlr6', '張韶涵 (Angela Chang)', 'HZmQ4FBCAsSpLyN82z', '歐若拉/Aurora', '20041203', NULL),
('_X8HhKAu0EWg92W-SL', '月亮惹的禍', 'Wov16OPmMb0q5Ifcga', '張宇 (Phil Chang)', 'PXESiIPXQ7mryy8Nem', '奇蹟', '20000501', NULL),
('Xa5QgvQLiLniJ4uRuI', '等你下課 (Waiting For You)', 'GtjT_E-Fw6HSCE7jgQ', '周杰倫 (Jay Chou)', '0mLiaH7rqw4ImptX6a', '等你下課', '20180118', NULL),
('_XaC1MAu0EWg8jLwFW', '囚鳥', 'Wov16OPmMb0q5Ifcga', '張宇 (Phil Chang)', '8kAas3p-GTiCLV5YaJ', '溫古知新', '19971105', NULL),
('XaCWgBUriLniJ2ykEG', '當你孤單你會想起誰 (Who will u think of)', 'CnI-u5i5Ft4y7Z7LFz', '張棟樑 (Nicholas Teo)', '8poApG4svmYiPAdkDx', 'From Now On 新歌＋精选', '20080219', NULL),
('XaDb9SUriLniI5_gks', '思念是一種病', 'On2HjY4Ue0DkOmUMZS', '張震嶽 (Ayal Komod)', 'OtqkyWYBEqbM-lsgKD', 'OK', '20070706', NULL),
('XafQ4lSLiLniKnjheH', '沒離開過', 'L-yRmEZCGWw2rLnt2J', '林志炫 (Terry Lin)', 'HXtiC4P8Rr3eMhitN3', '擦聲而過Ⅱ', '20081216', NULL),
('Xamsh3UbiLniKlkaIX', '手心的薔薇 feat. G.E.M.鄧紫棋', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'DZ-Wxmo_1aDjHwrFsl', '新地球', '20141227', NULL),
('X-DX5Igr-uxShDvpOg', '寂寞寂寞就好', 'Xa_WYdZHejH-lBzV-F', '田馥甄 (Hebe)', 'SsRjp_-z-Mm6eK6Bxp', 'To Hebe', '20100903', NULL),
('XX3h3NWoN4kbqn57oo', '如果的事', '8quZdzjl89YanaXQ6n', '范瑋琪 (Christine Fan)', 'La6QrfUcR5Jlm3vLPk', '一比一', '20050603', NULL),
('XXhT7KRIN4kbpwjjN0', '麻雀', 'D-0uSsbo3KbdjIQkWA', '李榮浩', '5_sYVX1qO3eqJfvbsC', '麻雀', '20191205', NULL),
('_XXKRUAu0EWg-yW5WY', '落葉歸根 (Luo Ye Gui Gen)', '8kSNkkSEC4BFUpukcl', '王力宏 (Leehom Wang)', 'KsUH7GNedkIB9WsynW', '改變自己 (Change Me)', '20070628', NULL),
('X-xq-Fk7-uxShgDxfy', 'Will You Remember Me - 緯來戲劇<三流之路>片頭曲、八大戲劇台<擁抱太陽的月亮』片尾曲、台視<孤單又燦爛的神-鬼怪>片頭曲', 'KqxZtUJYQwYgl4Jy7l', '李玖哲 (Nicky Lee)', 'LYWKeFiyCNxEuZKGwI', 'Will You Remember', '20171215', NULL),
('XXX67bWoN4kboLvDG5', '差不多先生', 'SqGMnxDYPwPOxgz9c_', 'MC HotDog熱狗', 'P_5OVbeeKjgS5143dl', '差不多先生', '20081021', NULL),
('XZABEG_ZIDECrsx-6I', '簡簡單單', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'CtBhxb-noP3rM-5YrV', '編號89757', '20050401', NULL),
('XZoNgG_ZIDECoR53ma', '三國戀', '4rZFD_ak_yCH-F1Uws', 'TANK 呂建忠', '8pMNtA4svmYiMsBkIE', 'Fighting! 生存之道', '20060224', NULL),
('XZUjkp_ZIDECqyKUpr', '貳拾貳', '5YNsuSMRDF8kojj_QJ', '棉花糖 (katncandix2)', 'X_PptxcUyKgAmlCeno', '再見王子', '20100514', NULL),
('_Yh8CJZXC3Mb-Sswn_', '不屑', 'P-VZanmft87W1rnXL5', '黃鴻升 (Alien Huang)', 'GlthJFUQs-18C-NUGu', '不屑', '20090717', NULL),
('_YtjuKZXC3Mb9WQnX4', '以前，以後', 'Osbh3TUzyafhBl0WD5', 'A-Lin', 'D_E2CyHKsaFcM2HKdr', '以前，以後', '20091228', NULL),
('_ZVjG_3VncpGPWaGaI', '一千年以後', '5YzuiRMRDF8kpOhd6t', '林俊傑 (JJ Lin)', 'CtBhxb-noP3rM-5YrV', '編號89757', '20050401', NULL),
('_ZxPG83VncpGOyu_BU', '溫柔', '9XN-7yg5vg3gYnCdsM', '五月天 (Mayday)', '4lRDTxRx6lesf6k2aG', '愛情萬歲', '20000707', NULL);

-- ytmusic data init
INSERT INTO "public"."ytmusic_info" ("video_id", "track_name", "artist_ids", "artist_names", "author", "album_id", "album_name", "release_year", "tags", "lyrics_id", "lyrics") VALUES
('0gTGHajEhKQ', '擱淺', '["UCL2MDNdwEtV6aYUgNjFQGZA"]', '["周杰倫"]', '周杰倫', 'MPREb_ScDJHCiomAo', '七里香', '2004', NULL, 'MPLYt_ScDJHCiomAo-6', '久未放晴的天空 依舊留著妳的笑容
哭過 卻無法掩埋歉疚
風箏在陰天擱淺 想念還在等待救援
我拉著線 復習妳給的溫柔
曝曬在一旁的寂寞 笑我給不起承諾
怎麼會怎麼會 妳竟原諒了我

我只能永遠讀著對白 讀著我給妳的傷害
我原諒不了我 就請妳當作我已不在
我睜開雙眼 看著空白 忘記妳對我的期待
讀完了依賴 我很快就離開

久未放晴的天空 依舊留著妳的笑容
哭過 卻無法掩埋歉疚
風箏在陰天擱淺 想念還在等待救援
我拉著線 復習妳給的溫柔
曝曬在一旁的寂寞 笑我給不起承諾
怎麼會怎麼會 妳竟原諒了我

我只能永遠讀著對白 讀著我給妳的傷害
我原諒不了我 就請妳當作我已不在
我睜開雙眼 看著空白 忘記妳對我的期待
讀完了依賴 我很快就

我只能永遠讀著對白 讀著我給妳的傷害
我原諒不了我 就請妳當作我已不在
我睜開雙眼 看著空白 忘記妳對我的期待
讀完了依賴 我很快就離開'),
('BLZWkjBXfN8', 'In the End', '["UCxgN32UVVztKAQd2HkXzBtw"]', '["Linkin Park"]', 'Linkin Park', 'MPREb_m10OjDmOhfv', 'Hybrid Theory (Bonus Edition)', '2000', '[4]', 'MPLYt_m10OjDmOhfv-8', 'It starts with one thing
I don''t know why
It doesn''t even matter how hard you try
Keep that in mind
I designed this rhyme
To explain in due time
All I know
Time is a valuable thing
Watch it fly by as the pendulum swings
Watch it count down to the end of the day
The clock ticks life away

It''s so unreal
Didn''t look out below
Watch the time go right out the window
Trying to hold on, didn''t even know
I wasted it all just to watch you go
I kept everything inside
And even though I tried, it all fell apart
What it meant to me
Will eventually be a memory of a time when

I tried so hard
And got so far
But in the end
It doesn''t even matter
I had to fall
To lose it all
But in the end
It doesn''t even matter

One thing, I don''t know why
It doesn''t even matter how hard you try
Keep that in mind
I designed this rhyme
To remind myself how
I tried so hard
In spite of the way you were mocking me
Acting like I was part of your property
Remembering all the times you fought with me
I''m surprised it got so far
Things aren''t the way they were before
You wouldn''t even recognize me anymore
Not that you knew me back then
But it all comes back to me in the end
You kept everything inside
And even though I tried, it all fell apart
What it meant to me will eventually be a memory of a time when

I tried so hard
And got so far
But in the end
It doesn''t even matter
I had to fall
To lose it all
But in the end
It doesn''t even matter

I''ve put my trust in you
Pushed as far as I can go
For all this
There''s only one thing you should know
I''ve put my trust in you
Pushed as far as I can go
For all this
There''s only one thing you should know

I tried so hard
And got so far
But in the end
It doesn''t even matter
I had to fall
To lose it all
But in the end
It doesn''t even matter'),
('CyG7HCVupuE', '痴心絕對', '["UCp6Mowp_ZCQojg25ICvOAAQ"]', '["李聖傑"]', '李聖傑', 'MPREb_NxQuzZjtuBD', '痴心絕對', '2020', NULL, 'MPLYt_NxQuzZjtuBD-1', '想用一杯Latte把妳灌醉
好讓妳能多愛我一點
暗戀的滋味 妳不懂這種感覺
早有人陪的妳永遠不會

看見妳和他在我面前
證明我的愛只是愚昧
妳不懂我的 那些憔悴
是妳永遠不曾過的體會

為妳付出那種傷心妳永遠不了解
我又何苦勉強自己愛上妳的一切
妳又狠狠逼退 我的防備
靜靜關上門來 默數我的淚

明知道讓妳離開他的世界不可能會
我還傻傻等到奇蹟出現的那一天
直到那一天 妳會發現
真正愛妳的人 獨自守著傷悲

看見妳和他在我面前
證明我的愛只是愚昧
妳不懂我的 那些憔悴
是妳永遠不曾過的體會

明知道讓妳離開他的世界不可能會
我還傻傻等到奇蹟出現的那一天
直到那一天 妳會發現
真正愛妳的人 獨自守著傷悲

曾經我以為我自己會後悔
不想愛的太多痴心絕對
為妳落第一滴淚 為妳做任何改變
也喚不回妳對我的堅決

為妳付出那種傷心妳永遠不了解
我又何苦勉強自己愛上妳的一切
妳又狠狠逼退 我的防備
靜靜關上門來 默數我的淚

明知道讓妳離開他的世界不可能會
我還傻傻等到奇蹟出現的那一天
直到那一天 妳會發現
真正愛妳的人 獨自守著傷悲

直到那一天 妳會發現
真正愛妳的人 獨自守著傷悲'),
('fXQ0Mhjndvo', '離開', '["UCW3Q3F5SByAWsYtRRFIMuNA"]', '["MC HotDog+A-Yue"]', 'MC HotDog+A-Yue', 'MPREb_VyRZMACbQdY', '貧民百萬歌星', '2012', '[2]', 'MPLYt_VyRZMACbQdY-8', '我忘了怎麼溝通 甚至忘了怎麼寫字
我沒法打字的話就沒有辦法解釋
我對著電腦 而晝夜開始顛倒
我活在視窗裡 彷彿永遠不會變老

我不需要治裝
只是屁股偶爾會長痔瘡
滑鼠是我的翅膀
在虛擬的世界裡 我戴上面具
在數不盡的日夜裡 我像是編劇

在 real world 我用真名說假的話
Another world 我用假名說真的話
有點疑惑 我也開始變得有點掙扎
在我的兩個世界裡 分不清真假

我對著鍵盤敲打 "你也是這樣嗎?"
我故作瀟灑 "你也寂寞嗎?"
一起數落這個世界是我們活該嗎
既然已經離不開了 那就一起罵 (罵)

我永遠不知道明天會發生什麼事
結果到底會如何要怎麼面對
我是個凡人我不堅強我沒有力氣
偶爾夜晚會流下莫名的淚水

住在擁擠的城市裡卻迷失在人群
而我偉大的目標又是在哪裡?
而我的驕傲我的信心都已看不清
還有誰會指引我前面的道路

找到真實的自己 這過程或許有點痛
這節奏太緊繃 沒過門 有點重
我的臉有點臭 我的頭開始空
我一直坐在電腦前到早上九點鐘

太多的部落格 太多的密碼
太多的信箱 養了隻草泥馬
什麼時候我的世界變得如此複雜
報新聞的來源都是網友說的話

但我離不開它 離不開八卦
像個小呆瓜 還以為自己頭腦發達
我只是想找個人 陪我說說話
它是我出口的門 陪我看世界有多大

太多的過客 太多的陌生人
太多的部落客 我愛上陌生人
又或者我對他們比家人還真誠
已經離不開了 當我打開了這個門

也許我應該看透世界上每一件事
感覺不清楚是我太在乎自己
當太陽的光慢慢爬進凌亂房間裡
發現我像個不懂事的小流氓

遊走在盡頭我好想要快點飛起來
可以飛越我想要到達的地方
當我抬頭我知道上帝不會丟下我
讓我有勇氣瞭解痛苦和美麗

沒有人要聊天 大家都在玩手機
你錯字連篇 當你手上握著筆
不需要言語 只需要 app
無聊的鄉民 擠爆了 PTT

在虛擬的世界 或許認真就輸了
我說 fuck PTT 鄉民們全都哭了
萬人響應 無人到場 又如何
只會在網路上放話 我聽你胡扯

你哭啊 你哭啊 沒有電腦要怎麼活
Put your hands up 哈哈 全部都有電腦手
在真實的世界你說 life is a struggle
在虛擬的世界 一切都像是一場秀

就連上帝也為它瘋狂 誰都一樣
我的字典裡從來沒有放棄了上網
我怎麼忘記了 離不開這框框
我的生活晃蕩 每天上 每天上 每天上 每天上

離開我的城市 離開我的世界
離開我的面具 離開我的懦弱
離開我的自己 離開我的害怕
離開留下眼淚我也不在意

離開我的城市 離開我的世界
離開我的面具 離開我的懦弱
離開我的自己 離開我的害怕
離開留下眼淚我也不在意

每天重複著 開機 關機 待機
當機了沒有關係
再按一下 開機 關機 待機
當機了沒有關係
我始終在 開機 關機 待機
當機也沒有關係
我離不開 開機 關機 待機
當機'),
('HyC842YyY2o', '最近', '["UCp6Mowp_ZCQojg25ICvOAAQ"]', '["李聖傑"]', '李聖傑', 'MPREb_Xe8BL0Bwf8t', '關於妳的歌', '2006', '[]', 'MPLYt_Xe8BL0Bwf8t-2', '你最近不说话
怎么了 为什么
是不是有什么事让你不快乐
听说你最近很孤单
有点乱 有点慌
可是我却不能够在你的身旁
你想要的
我却不能够给你我全部
我能给的
却又不是你想要拥有的
我们不适合也不想认输
好几次我们抱着彼此都是想要哭
你常解释这样的一切都只是开始
我觉得是所有的一切早就已结束
不想再约束
不要再痛苦
下一次会有更好的情路
你最近不说话
怎么了 为什么
是不是有什么事让你不快乐
听说你最近很孤单
有点乱 有点慌
可是我却不能够在你的身旁
你想要的
我却不能够给你我全部
我能给的
却又不是你想要拥有的
我们不适合也不想认输
好几次我们抱着彼此都是想要哭
你常解释这样的一切都只是开始
我觉得是所有的一切早就已结束
不想再约束
不要再痛苦
下一次会有更好的情路
爱 我却不能给你我全部
我能给的
却又不是你想要拥有的
我们不适合也不想认输
好几次我们抱着彼此都是想要哭
你常解释这样的一切都只是开始
我觉得是所有的一切早就已结束
不想再约束
不要再痛苦
下一次会有更好的情路
这一次我们都能很幸福'),
('Ii46Q7i4uuk', '夜曲', '["UCL2MDNdwEtV6aYUgNjFQGZA"]', '["周杰倫"]', '周杰倫', 'MPREb_v2CQuqlCY8V', '11月的蕭邦', '2005', NULL, 'MPLYt_v2CQuqlCY8V-1', '一群嗜血的螞蟻 被腐肉所吸引
我面無表情 看孤獨的風景
失去你 愛恨開始分明
失去你 還有什麼事好關心
當鴿子不再象徵和平
我終於被提醒 廣場上餵食的是禿鷹
我用漂亮的押韻 形容被掠奪一空的愛情

啊 烏雲開始遮蔽 夜色不乾淨
公園裡 葬禮的回音 在漫天飛行
送你的 白色玫瑰 在純黑的環境凋零
烏鴉在樹枝上詭異的很安靜
靜靜聽 我黑色的大衣
想溫暖你 日漸冰冷的回憶
走過的 走過的生命
啊 四周彌漫霧氣 啊 我在空曠的墓地
老去後還愛你

為你彈奏蕭邦的夜曲 紀念我死去的愛情
跟夜風一樣的聲音 心碎的很好聽
手在鍵盤敲很輕 我給的思念很小心
你埋葬的地方叫幽冥

為你彈奏蕭邦的夜曲 紀念我死去的愛情
而我為你隱姓埋名 在月光下彈琴
對你心跳的感應 還是如此溫熱親近
懷念你那鮮紅的唇印

那些斷翅的蜻蜓 散落在這森林
而我的眼睛 沒有絲毫同情
失去你 淚水混濁不清
失去你 我連笑容都有陰影
風在長滿青苔的屋頂 嘲笑我的傷心
像一口沒有水的枯井
我用淒美的字型 描繪後悔莫及的那愛情

為你彈奏蕭邦的夜曲 紀念我死去的愛情
跟夜風一樣的聲音 心碎的很好聽
手在鍵盤敲很輕 我給的思念很小心
你埋葬的地方叫幽冥

為你彈奏蕭邦的夜曲 紀念我死去的愛情
而我為你隱姓埋名 在月光下彈琴
對你心跳的感應 還是如此溫熱親近
懷念你那鮮紅的唇印

一群嗜血的螞蟻 被腐肉所吸引
我面無表情 看孤獨的風景
失去你 愛恨開始分明
失去你 還有什麼事好關心
當鴿子不再象徵和平
我終於被提醒 廣場上餵食的是禿鷹
我用漂亮的押韻 形容被掠奪一空的愛情'),
('l6a5D6yxqEU', '稻香', '["UCL2MDNdwEtV6aYUgNjFQGZA"]', '["周杰倫"]', '周杰倫', 'MPREb_uCGLYKfIZNj', '魔杰座', '2008', NULL, 'MPLYt_uCGLYKfIZNj-11', '對這個世界 如果你有太多的抱怨
跌倒了就不敢繼續往前走
為什麼人要這麼地脆弱 墮落?

請你打開電視 看看多少人為生命在努力勇敢地走下去
我們是不是該知足?
珍惜一切 就算沒有擁有

還記得你說家是唯一的城堡
隨著稻香 河流繼續奔跑
微微笑 小時候的夢我知道 (小時候的夢我知道)

不要哭 讓螢火蟲帶著你逃跑
鄉間的歌謠 永遠的依靠
回家吧 回到最初的美好 (回到最初的那美好)

不要這麼容易就想放棄 就像我說的
"追不到的夢想 換個夢不就得了?"
為自己的人生鮮豔上色 先把愛塗上喜歡的顏色

笑一個吧 功成名就不是目的
讓自己快樂 快樂這才叫做意義
童年的紙飛機 現在終於飛回我手裡

所謂的那快樂 赤腳在田裡追蜻蜓追到累了
偷摘水果被蜜蜂給叮到怕了 誰在偷笑呢?
我靠著稻草人吹著風 唱著歌 睡著了

哦哦 午後吉他在蟲鳴中更清脆
哦哦 陽光灑在路上就不怕心碎
珍惜一切 就算沒有擁有

還記得你說家是唯一的城堡
隨著稻香 河流繼續奔跑
微微笑 小時候的夢我知道 (小時候的夢我知道)

不要哭 讓螢火蟲帶著你逃跑
鄉間的歌謠 永遠的依靠
回家吧 回到最初的美好 (回到最初的那美好)

還記得你說家是唯一的城堡
隨著稻香 河流繼續奔跑
微微笑 小時候的夢我知道

不要哭 讓螢火蟲帶著你逃跑
鄉間的歌謠 永遠的依靠
回家吧 回到最初的美好'),
('SJKoWAd5ySo', '晴天', '["UCL2MDNdwEtV6aYUgNjFQGZA"]', '["周杰倫"]', '周杰倫', 'MPREb_nqKuADavt3c', '葉惠美', '2003', NULL, 'MPLYt_nqKuADavt3c-3', '故事的小黃花從出生那年就飄著
童年的盪鞦韆隨記憶一直晃到現在

ㄖㄨㄟ ㄙㄡ ㄙㄡ ㄒ一 ㄉㄛ ㄒ一 ㄌㄚ
ㄙㄡ ㄌㄚ ㄒ一 ㄒ一 ㄒ一 ㄒ一 ㄌㄚ ㄒ一 ㄌㄚ ㄙㄡ
吹著前奏望著天空 我想起花瓣試著掉落

為妳翹課的那一天 花落的那一天
教室的那一間 我怎麼看不見?
消失的下雨天 我好想再淋一遍
沒想到失去的勇氣我還留著
好想再問一遍 妳會等待還是離開

颳風這天 我試過握著妳手
但偏偏 雨漸漸 大到我看妳不見
還要多久我才能在妳身邊?
等到放晴的那天也許我會比較好一點

從前從前 有個人愛妳很久
但偏偏 風漸漸 把距離吹得好遠
好不容易又能再多愛一天
但故事的最後妳好像還是說了拜拜

為妳翹課的那一天 花落的那一天
教室的那一間 我怎麼看不見?
消失的下雨天 我好想再淋一遍
沒想到失去的勇氣我還留著 yeah-eh-eh
好想再問一遍 妳會等待還是離開

颳風這天 我試過握著妳手
但偏偏 雨漸漸 大到我看妳不見
還要多久我才能在妳身邊?
等到放晴的那天也許我會比較好一點

從前從前 有個人愛妳很久
偏偏 風漸漸 把距離吹得好遠
好不容易又能再多愛一天
但故事的最後妳好像還是說了拜拜

颳風這天 我試過握著妳手
但偏偏 雨漸漸 大到我看妳不見
還要多久我才能夠在妳身邊?
等到放晴那天也許我會比較好一點

從前從前 有個人愛妳很久
但偏偏 雨漸漸 把距離吹得好遠
好不容易又能再多愛一天
但故事的最後妳好像還是說了拜'),
('Ty2T8aiyNBc', '眼底星空', '["UCp6Mowp_ZCQojg25ICvOAAQ"]', '["李聖傑"]', '李聖傑', 'MPREb_Xe8BL0Bwf8t', '關於妳的歌', '2006', NULL, 'MPLYt_Xe8BL0Bwf8t-1', '你好喜欢看我眼睛
你说是宇宙的缩影
只要没有分离　
天气晴能看见星星
我努力爱你宠你调整自己
我是邻居还是伴侣
时间带来残忍结局
在爱情的隔壁住友情　
界线太锐利
对不起就一刀切开所有亲密
眼底星空
流星开始坠落
每一滴眼泪说着你要好好走
转过身跌入黑洞
看着天长地久变两种漂泊
男人流泪比流血加倍心痛
眼底星空
流星跌落手中
我静静握着抬头向上天祈求
愿你先找到温柔
有人包扎伤口也挡住寂寞
谢谢你陪我陪爱听雨吹风
用三年去维系感情
用三秒钟结束关系
剩回忆能回去能温习能把你抱紧
就算爱烧成灰烬扬起变乌云
眼底星空
流星开始坠落
每一滴眼泪说着你要好好走
转过身跌入黑洞
看着天长地久变两种漂泊
男人流泪比流血加倍心痛
眼底星空
流星跌落手中
我静静握着抬头向上天祈求
愿你先找到温柔
有人包扎伤口也挡住寂寞
谢谢你陪我陪爱听雨吹风
眼底星空
流星跌落手中
我静静握着抬头向上天祈求
愿你先找到温柔
有人包扎伤口也挡住寂寞
谢谢你陪我陪爱听雨吹风
谢谢他给你给爱另一个星空
');

-- tag data init
INSERT INTO "public"."tag" ("id", "tag_name", "deprecated") VALUES
(1, '獨立樂團', 'f'),
(2, '嘻哈/說唱', 'f'),
(3, '男團', 'f'),
(4, '英文', 'f');
