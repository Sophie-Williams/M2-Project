
-- #################################################################
-- ##                                                             ##
-- ##                        LOCALE.LUA                           ##
-- ##                                                             ##
-- ## Background:                                                 ##
-- ##   This file provides Metin2 with one big array!             ##
-- ##   This array contains some configurations values and a lot  ##
-- ##   of strings to translate. Also every quest-file contains   ##
-- ##   string to translate.                                      ##
-- ##                                                             ##
-- ## Gameforge-Way-To-Do:                                        ##
-- ##   We extract everything we need to translate from this file ##
-- ##   into one big "Key = Value"-file. Simple key-value-files   ##
-- ##   can be managed by our localisation-tool.                  ##
-- ##   Also we extract every string out of every .quest-file and ##
-- ##   generate a lots of new keys. These keys are used in the   ##
-- ##   .quest-files.                                             ##
-- ##                                                             ##
-- ##   !! The key-value-file is called 'translate.lua'           ##
-- ##                                                             ##
-- ## The Advantage:                                              ##
-- ##   1) We can easily translate everything with our tool       ##
-- ##   2) We cant create syntax-errors in this file              ##
-- ##   3) We cant create syntax-errors in the quest-files        ##
-- ##   4) We can compare the quest-files between two languages   ##
-- ##      to find differences if something is broken in only     ##
-- ##      country.                                               ##
-- ##                                                             ##
-- #################################################################

locale = {}
locale.man_postfix = gameforge.locale.man_postfix
locale.woman_postfix = gameforge.locale.woman_postfix
locale.confirm = gameforge.locale.confirm
locale.reward = gameforge.locale.reward
locale.exp = gameforge.locale.exp
locale.count_prefix = gameforge.locale.count_prefix
locale.count_postfix = gameforge.locale.count_postfix
locale.level = gameforge.locale.level
locale.quest_word = gameforge.locale.quest_word
locale.complete = gameforge.locale.complete
locale.start = gameforge.locale.start
locale.chat = gameforge.locale.chat
locale.eliminate_on_begin = gameforge.locale.eliminate_on_begin
locale.eliminate_on_end = gameforge.locale.eliminate_on_end
locale.yes = gameforge.locale.yes
locale.no = gameforge.locale.no
locale.cancel = gameforge.locale.cancel
locale.gold = gameforge.locale.gold
locale.need_item_prefix = gameforge.locale.need_item_prefix
locale.need_item_postfix = gameforge.locale.need_item_postfix
locale.map_name = {
	[61] = gameforge.locale.map_name_1,
	[62] = gameforge.locale.map_name_2,
	[63] = gameforge.locale.map_name_3,
	[64] = gameforge.locale.map_name_4,
}
locale.empire_names = {
	[0] = gameforge.locale.empire_names_1,
	[1] = gameforge.locale.empire_names_2,
	[2] = gameforge.locale.empire_names_3,
	[3] = gameforge.locale.empire_names_4,
}
locale.item_drop_pct = gameforge.locale.item_drop_pct
locale.gold_drop_pct = gameforge.locale.gold_drop_pct
locale.tengold_drop_pct = gameforge.locale.tengold_drop_pct
locale.exp_pct = gameforge.locale.exp_pct
locale.show_guild_ranking_top = gameforge.locale.show_guild_ranking_top
locale.show_guild_ranking_around = gameforge.locale.show_guild_ranking_around
locale.show_guild_cur_score = gameforge.locale.show_guild_cur_score
locale.guild_around_rank_msg = gameforge.locale.guild_around_rank_msg
locale.guild_top_rank_msg = gameforge.locale.guild_top_rank_msg
locale.guild_rank_head = gameforge.locale.guild_rank_head
locale.guild_your_rank1 = gameforge.locale.guild_your_rank1
locale.guild_your_rank2 = gameforge.locale.guild_your_rank2
locale.guild_your_rank3 = gameforge.locale.guild_your_rank3
locale.deviltower_man_chat = gameforge.locale.deviltower_man_chat
locale.deviltower_man_say = gameforge.locale.deviltower_man_say
locale.deviltower_man_say_you_cant = gameforge.locale.deviltower_man_say_you_cant 
locale.deviltower_enter = gameforge.locale.deviltower_enter
locale.deviltower_no_enter = gameforge.locale.deviltower_no_enter
locale.forked_man_chat = gameforge.locale.forked_man_chat
locale.forked_man_say = gameforge.locale.forked_man_say
locale.forked_man_say_cant = gameforge.locale.forked_man_say_cant
locale.forked_enter = gameforge.locale.forked_enter
locale.forked_no_enter = gameforge.locale.forked_no_enter
locale.forked_open_gate = gameforge.locale.forked_open_gate
locale.forked_kill_boss = gameforge.locale.forked_kill_boss
locale.forked_condition = gameforge.locale.forked_condition
locale.forked_condition2 = gameforge.locale.forked_condition2
locale.forked_rule = gameforge.locale.forked_rule
locale.forked_rule_sungzi = gameforge.locale.forked_rule_sungzi
locale.login_notice = gameforge.locale.login_notice
locale.NOTICE_COLOR = color256(255, 230, 186)
locale.NORMAL_COLOR = color256(196, 196, 196)
locale.QUEST_TEMP_REWARD = locale.NOTICE_COLOR .. gameforge.locale.quest_temp_reward_1 .. locale.NORMAL_COLOR .. gameforge.locale.quest_temp_reward_2 

locale.yeonnahwan = {}
locale.yeonnahwan.start_level_begin = 99
locale.yeonnahwan.start_level_end = 99
locale.yeonnahwan.start_probability = 1
locale.yeonnahwan.end_level = 99
locale.yeonnahwan.kill_count = 1
locale.yeonnahwan.event_item = gameforge.locale.yeonnahwan.event_item
locale.yeonnahwan.find_yeonnahwan_label = gameforge.locale.yeonnahwan.find_yeonnahwan_label
locale.yeonnahwan.find_yeonnahwan_text = locale.NOTICE_COLOR .. gameforge.locale.yeonnahwan.find_yeonnahwan_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yeonnahwan.find_yeonnahwan_text_2
locale.yeonnahwan.find_eulduji_label = gameforge.locale.yeonnahwan.find_eulduji_label
locale.yeonnahwan.find_eulduji_text = locale.NOTICE_COLOR .. gameforge.locale.yeonnahwan.find_eulduji_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yeonnahwan.find_eulduji_text_2
locale.yeonnahwan.report_label = gameforge.locale.yeonnahwan.report_label
locale.yeonnahwan.report_text = gameforge.locale.yeonnahwan.report_text
locale.yeonnahwan.kill_unggwi_label = gameforge.locale.yeonnahwan.kill_unggwi_label
locale.yeonnahwan.kill_unggwi_text = locale.NOTICE_COLOR .. gameforge.locale.yeonnahwan.kill_unggwi_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yeonnahwan.kill_unggwi_text_2

locale.huanso = {}
locale.huanso.start_level_begin = 32
locale.huanso.start_level_end = 35
locale.huanso.start_probability = 3
locale.huanso.end_level = 38
locale.huanso.kill_count = 3
locale.huanso.event_item = 30102
locale.huanso.order_label = gameforge.locale.huanso.order_label
locale.huanso.order_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.order_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.order_text_2
locale.huanso.too_late = gameforge.locale.huanso.too_late
locale.huanso.find_label = gameforge.locale.huanso.find_label
locale.huanso.find_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.find_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.find_text_2
locale.huanso.kill_label = gameforge.locale.huanso.kill_label
locale.huanso.kill_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.kill_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.kill_text_2
locale.huanso.make_label = gameforge.locale.huanso.make_label
locale.huanso.make_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.make_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.make_text_2
locale.huanso.deliver_label = gameforge.locale.huanso.deliver_label
locale.huanso.deliver_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.deliver_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.deliver_text_2
locale.huanso.success_label = gameforge.locale.huanso.success_label
locale.huanso.success_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.success_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.success_text_2
locale.huanso.failure_label = gameforge.locale.huanso.failure_label
locale.huanso.failure_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.failure_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.failure_text_2

locale.yuhwan = {}
locale.yuhwan.start_level_begin = 40
locale.yuhwan.start_level_end = 43
locale.yuhwan.start_probability = 3
locale.yuhwan.end_level = 45
locale.yuhwan.kill_count = 3
locale.yuhwan.event_item = 30102
locale.yuhwan.find_label = gameforge.locale.yuhwan.find_label
locale.yuhwan.find_text = locale.NOTICE_COLOR .. gameforge.locale.yuhwan.find_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yuhwan.find_text_2
locale.yuhwan.too_late = gameforge.locale.yuhwan.too_late
locale.yuhwan.kill_label = gameforge.locale.yuhwan.kill_label
locale.yuhwan.kill_text = locale.NOTICE_COLOR .. gameforge.locale.yuhwan.kill_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yuhwan.kill_text_2
locale.yuhwan.success_info_label = gameforge.locale.yuhwan.success_info_label
locale.yuhwan.success_info_text = locale.NOTICE_COLOR .. gameforge.locale.yuhwan.success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yuhwan.success_info_text_2
locale.yuhwan.failure_info_label = gameforge.locale.yuhwan.failure_info_label
locale.yuhwan.failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.yuhwan.failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yuhwan.failure_info_text_2

locale.deokbae = {}
locale.deokbae.start_level_begin = 80
locale.deokbae.start_level_end = 80
locale.deokbae.start_probability = 3
locale.deokbae.end_level = 40
locale.deokbae.kill_count = 3
locale.deokbae.event_item = 30102
locale.deokbae.find_deokbae_label = gameforge.locale.deokbae.find_deokbae_label
locale.deokbae.find_deokbae_text = locale.NOTICE_COLOR .. gameforge.locale.deokbae.find_deokbae_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.deokbae.find_deokbae_text_2
locale.deokbae.too_late = gameforge.locale.deokbae.too_late
locale.deokbae.kill_label = gameforge.locale.deokbae.kill_label
locale.deokbae.kill_text = locale.NOTICE_COLOR .. gameforge.locale.deokbae.kill_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.deokbae.kill_text_2
locale.deokbae.success_info_label = gameforge.locale.deokbae.success_info_label
locale.deokbae.success_info_text = locale.NOTICE_COLOR .. gameforge.locale.deokbae.success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.deokbae.success_info_text_2
locale.deokbae.failure_info_label = gameforge.locale.deokbae.failure_info_label
locale.deokbae.failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.deokbae.failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.deokbae.failure_info_text_2

locale.bookworm = {}
locale.bookworm.start_level_begin = 28
locale.bookworm.start_level_end = 31
locale.bookworm.start_probability = 3
locale.bookworm.end_level = 34
locale.bookworm.kill_count = 3
locale.bookworm.talk = gameforge.locale.bookworm.talk
locale.bookworm.aranyeo_talk = gameforge.locale.bookworm.aranyeo_talk
locale.bookworm.etc_shop_talk_about_bookworm = gameforge.locale.bookworm.etc_shop_talk_about_bookworm
locale.bookworm.talk_about_milgyo_book = gameforge.locale.bookworm.talk_about_milgyo_book
locale.bookworm.do_you_find_the_book = gameforge.locale.bookworm.do_you_find_the_book
locale.bookworm.do_you_mean_this_book = gameforge.locale.bookworm.do_you_mean_this_book
locale.bookworm.START_say = gameforge.locale.bookworm.start_say
locale.bookworm.START_say2 = gameforge.locale.bookworm.start_say2
locale.bookworm.aranyeo_START_say = gameforge.locale.bookworm.aranyeo_start_say
locale.bookworm.aranyeo_START_say2 = gameforge.locale.bookworm.aranyeo_start_say2
locale.bookworm.etc_shop_START_say = gameforge.locale.bookworm.etc_shop_start_say
locale.bookworm.etc_shop_START_say2 = gameforge.locale.bookworm.etc_shop_start_say2
locale.bookworm.START_find_bookworm_label = gameforge.locale.bookworm.start_find_bookworm_label
locale.bookworm.START_find_bookworm_text = locale.NOTICE_COLOR .. gameforge.locale.bookworm.start_find_bookworm_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.start_find_bookworm_text_2
locale.bookworm.ORDER_say1 = gameforge.locale.bookworm.order_say1
locale.bookworm.ORDER_say2 = gameforge.locale.bookworm.order_say2
locale.bookworm.ORDER_accept = gameforge.locale.bookworm.order_accept
locale.bookworm.ORDER_refuse = gameforge.locale.bookworm.order_refuse
locale.bookworm.ORDER_accept_answer = gameforge.locale.bookworm.order_accept_answer
locale.bookworm.ORDER_refuse_answer = gameforge.locale.bookworm.order_refuse_answer
locale.bookworm.ORDER_find_book_label = gameforge.locale.bookworm.order_find_book_label
locale.bookworm.ORDER_find_book_text = locale.NOTICE_COLOR .. gameforge.locale.bookworm.order_find_book_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.order_find_book_text_2
locale.bookworm.ORDER_too_late = gameforge.locale.bookworm.order_too_late
locale.bookworm.ACCEPT_success_say = locale.NOTICE_COLOR .. gameforge.locale.bookworm.accept_success_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.accept_success_say_2
locale.bookworm.ACCEPT_failure_say = locale.NOTICE_COLOR .. gameforge.locale.bookworm.accept_failure_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.accept_failure_say_2
locale.bookworm.ACCEPT_ask = gameforge.locale.bookworm.accept_ask
locale.bookworm.ACCEPT_success_info_label = gameforge.locale.bookworm.accept_success_info_label
locale.bookworm.ACCEPT_success_info_text = locale.NOTICE_COLOR .. gameforge.locale.bookworm.accept_success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.accept_success_info_text_2
locale.bookworm.ACCEPT_failure_info_label = gameforge.locale.bookworm.accept_failure_info_label
locale.bookworm.ACCEPT_failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.bookworm.accept_failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.accept_failure_info_text_2
locale.bookworm.SUCCESS_thanks = gameforge.locale.bookworm.success_thanks
locale.bookworm.COMPLETE_say = gameforge.locale.bookworm.complete_say
locale.bookworm.aranyeo_COMPLETE_say = gameforge.locale.bookworm.aranyeo_complete_say
locale.bookworm.aranyeo_COMPLETE_say2 = gameforge.locale.bookworm.aranyeo_complete_say2

locale.old_pirate = {}
locale.old_pirate.start_level_begin = 48
locale.old_pirate.start_level_end = 51
locale.old_pirate.start_probability = 3
locale.old_pirate.end_level = 54
locale.old_pirate.kill_count = 3
locale.old_pirate.talk = gameforge.locale.old_pirate.talk
locale.old_pirate.baekgo_talk = gameforge.locale.old_pirate.baekgo_talk
locale.old_pirate.etc_shop_talk_about_old_pirate = gameforge.locale.old_pirate.etc_shop_talk_about_old_pirate
locale.old_pirate.talk_about_medicine = gameforge.locale.old_pirate.talk_about_medicine
locale.old_pirate.do_you_get_the_medicine = gameforge.locale.old_pirate.do_you_get_the_medicine
locale.old_pirate.do_you_mean_this_medicine = gameforge.locale.old_pirate.do_you_mean_this_medicine
locale.old_pirate.baekgo_talk_about_old_pirate = gameforge.locale.old_pirate.baekgo_talk_about_old_pirate
locale.old_pirate.baekgo_do_you_get_the_virus = gameforge.locale.old_pirate.baekgo_do_you_get_the_virus
locale.old_pirate.baekgo_iv_got_the_virus = gameforge.locale.old_pirate.baekgo_iv_got_the_virus
locale.old_pirate.START_say = gameforge.locale.old_pirate.start_say
locale.old_pirate.etc_shop_START_say = gameforge.locale.old_pirate.etc_shop_start_say
locale.old_pirate.etc_shop_START_say2 = gameforge.locale.old_pirate.etc_shop_start_say2
locale.old_pirate.START_find_old_pirate_label = gameforge.locale.old_pirate.start_find_old_pirate_label
locale.old_pirate.START_find_old_pirate_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.start_find_old_pirate_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.start_find_old_pirate_text_2
locale.old_pirate.ORDER_say1 = gameforge.locale.old_pirate.order_say1
locale.old_pirate.ORDER_say2 = gameforge.locale.old_pirate.order_say2
locale.old_pirate.ORDER_accept = gameforge.locale.old_pirate.order_accept
locale.old_pirate.ORDER_refuse = gameforge.locale.old_pirate.order_refuse
locale.old_pirate.ORDER_accept_answer = gameforge.locale.old_pirate.order_accept_answer
locale.old_pirate.ORDER_refuse_answer = gameforge.locale.old_pirate.order_refuse_answer
locale.old_pirate.ORDER_find_medicine_label = gameforge.locale.old_pirate.order_find_medicine_label
locale.old_pirate.ORDER_find_medicine_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.order_find_medicine_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.order_find_medicine_text_2
locale.old_pirate.ORDER_too_late = gameforge.locale.old_pirate.order_too_late
locale.old_pirate.ACCEPT_success_say = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.accept_success_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.accept_success_say_2
locale.old_pirate.ACCEPT_failure_say = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.accept_failure_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.accept_failure_say_2
locale.old_pirate.ACCEPT_ask = gameforge.locale.old_pirate.accept_ask
locale.old_pirate.ACCEPT_success_info_label = gameforge.locale.old_pirate.accept_success_info_label
locale.old_pirate.ACCEPT_success_info_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.accept_success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.accept_success_info_text_2
locale.old_pirate.ACCEPT_failure_info_label = gameforge.locale.old_pirate.accept_failure_info_label
locale.old_pirate.ACCEPT_failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.accept_failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.accept_failure_info_text_2
locale.old_pirate.BAEKGO_START_say = gameforge.locale.old_pirate.baekgo_start_say
locale.old_pirate.BAEKGO_START_say2 = gameforge.locale.old_pirate.baekgo_start_say2
locale.old_pirate.BAEKGO_START_say3 = gameforge.locale.old_pirate.baekgo_start_say3
locale.old_pirate.BAEKGO_ORDER_find_virus_label = gameforge.locale.old_pirate.baekgo_order_find_virus_label
locale.old_pirate.BAEKGO_ORDER_find_virus_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.baekgo_order_find_virus_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.baekgo_order_find_virus_text_2
locale.old_pirate.BAEKGO_ORDER_too_late = gameforge.locale.old_pirate.baekgo_order_too_late
locale.old_pirate.BAEKGO_ACCEPT_success_say = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.baekgo_accept_success_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.baekgo_accept_success_say_2
locale.old_pirate.BAEKGO_ACCEPT_failure_say = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.baekgo_accept_failure_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.baekgo_accept_failure_say_2
locale.old_pirate.BAEKGO_ACCEPT_ask = gameforge.locale.old_pirate.baekgo_accept_ask
locale.old_pirate.BAEKGO_ACCEPT_success_info_label = gameforge.locale.old_pirate.baekgo_accept_success_info_label
locale.old_pirate.BAEKGO_ACCEPT_success_info_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.baekgo_accept_success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.baekgo_accept_success_info_text_2
locale.old_pirate.BAEKGO_ACCEPT_failure_info_label = gameforge.locale.old_pirate.baekgo_accept_failure_info_label
locale.old_pirate.BAEKGO_ACCEPT_failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.baekgo_accept_failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.baekgo_accept_failure_info_text_2
locale.old_pirate.BAEKGO_SUCCESS_say = gameforge.locale.old_pirate.baekgo_success_say
locale.old_pirate.SUCCESS_thanks = gameforge.locale.old_pirate.success_thanks
locale.old_pirate.COMPLETE_say = gameforge.locale.old_pirate.complete_say

locale.stamina_food = {}
locale.stamina_food.butcher = {}
locale.stamina_food.food_manager = {}
locale.stamina_food.start_probability = 3
locale.stamina_food.start_level_begin = 90
locale.stamina_food.start_level_end = 90
locale.stamina_food.end_level = 59
locale.stamina_food.kill_count = 3
locale.stamina_food.butcher.talk = gameforge.locale.stamina_food.butcher.talk
locale.stamina_food.food_manager.talk = gameforge.locale.stamina_food.food_manager.talk
locale.stamina_food.food_manager.talk_about_greeenfrog_soup = gameforge.locale.stamina_food.food_manager.talk_about_greeenfrog_soup
locale.stamina_food.i_dont_have_the_greeenfrog_meat_yet = gameforge.locale.stamina_food.i_dont_have_the_greeenfrog_meat_yet
locale.stamina_food.i_have_the_greenfrog_meat = gameforge.locale.stamina_food.i_have_the_greenfrog_meat
locale.stamina_food.butcher.START_say = gameforge.locale.stamina_food.butcher.start_say
locale.stamina_food.butcher.START_say2 = gameforge.locale.stamina_food.butcher.start_say2
locale.stamina_food.food_manager.ORDER_say = gameforge.locale.stamina_food.food_manager.order_say
locale.stamina_food.food_manager.ORDER_say2 = gameforge.locale.stamina_food.food_manager.order_say2
locale.stamina_food.ORDER_accept = gameforge.locale.stamina_food.order_accept
locale.stamina_food.ORDER_refuse = gameforge.locale.stamina_food.order_refuse
locale.stamina_food.ORDER_accept_answer = gameforge.locale.stamina_food.order_accept_answer
locale.stamina_food.ORDER_refuse_answer = gameforge.locale.stamina_food.order_refuse_answer
locale.stamina_food.ORDER_get_greenfrog_general_meat_label = gameforge.locale.stamina_food.order_get_greenfrog_general_meat_label
locale.stamina_food.ORDER_get_greenfrog_general_meat_text = locale.NOTICE_COLOR .. gameforge.locale.stamina_food.order_get_greenfrog_general_meat_text
locale.stamina_food.ORDER_too_late = gameforge.locale.stamina_food.order_too_late
locale.stamina_food.ACCEPT_success_say = locale.NOTICE_COLOR .. gameforge.locale.stamina_food.accept_success_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.stamina_food.accept_success_say_2
locale.stamina_food.ACCEPT_failure_say = locale.NOTICE_COLOR .. gameforge.locale.stamina_food.accept_failure_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.stamina_food.accept_failure_say_2
locale.stamina_food.ACCEPT_ask = gameforge.locale.stamina_food.accept_ask
locale.stamina_food.ACCEPT_success_info_label = gameforge.locale.stamina_food.accept_success_info_label
locale.stamina_food.ACCEPT_success_info_text = locale.NOTICE_COLOR .. gameforge.locale.stamina_food.accept_success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.stamina_food.accept_success_info_text_2
locale.stamina_food.BAEKGO_ACCEPT_failure_info_label = gameforge.locale.stamina_food.baekgo_accept_failure_info_label
locale.stamina_food.BAEKGO_ACCEPT_failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.stamina_food.baekgo_accept_failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.stamina_food.baekgo_accept_failure_info_text_2
locale.stamina_food.SUCCESS_say = gameforge.locale.stamina_food.success_say
locale.stamina_food.COMPLETE_say = gameforge.locale.stamina_food.complete_say

locale.skeleton_gem = {}
locale.skeleton_gem.start_probability = 3
locale.skeleton_gem.start_level_begin = 55
locale.skeleton_gem.start_level_end = 57
locale.skeleton_gem.end_level = 60
locale.skeleton_gem.kill_count = 3
locale.skeleton_gem.talk_about_skeleton_gem = gameforge.locale.skeleton_gem.talk_about_skeleton_gem
locale.skeleton_gem.i_dont_have_the_skeleton_gem_yet = gameforge.locale.skeleton_gem.i_dont_have_the_skeleton_gem_yet
locale.skeleton_gem.i_have_the_skeleton_gem = gameforge.locale.skeleton_gem.i_have_the_skeleton_gem
locale.skeleton_gem.START_say = gameforge.locale.skeleton_gem.start_say
locale.skeleton_gem.START_find_peddler_label = gameforge.locale.skeleton_gem.start_find_peddler_label
locale.skeleton_gem.START_find_peddler_text = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.start_find_peddler_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.skeleton_gem.start_find_peddler_text_2
locale.skeleton_gem.ORDER_say = gameforge.locale.skeleton_gem.order_say
locale.skeleton_gem.ORDER_say2 = gameforge.locale.skeleton_gem.order_say2
locale.skeleton_gem.ORDER_accept = gameforge.locale.skeleton_gem.order_accept
locale.skeleton_gem.ORDER_refuse = gameforge.locale.skeleton_gem.order_refuse
locale.skeleton_gem.ORDER_accept_answer = gameforge.locale.skeleton_gem.order_accept_answer
locale.skeleton_gem.ORDER_refuse_answer = gameforge.locale.skeleton_gem.order_refuse_answer
locale.skeleton_gem.ORDER_get_skeleton_gem_ = gameforge.locale.skeleton_gem.order_get_skeleton_gem_
locale.skeleton_gem.ORDER_get_skeleton_gem_text = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.order_get_skeleton_gem_text
locale.skeleton_gem.ORDER_too_late = gameforge.locale.skeleton_gem.order_too_late
locale.skeleton_gem.ACCEPT_success_say = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.accept_success_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.skeleton_gem.accept_success_say_2
locale.skeleton_gem.ACCEPT_failure_say = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.accept_failure_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.skeleton_gem.accept_failure_say_2
locale.skeleton_gem.ACCEPT_ask = gameforge.locale.skeleton_gem.accept_ask
locale.skeleton_gem.ACCEPT_success_info_label = gameforge.locale.skeleton_gem.accept_success_info_label
locale.skeleton_gem.ACCEPT_success_info_text = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.accept_success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.skeleton_gem.accept_success_info_text_2
locale.skeleton_gem.ACCEPT_failure_info_label = gameforge.locale.skeleton_gem.accept_failure_info_label
locale.skeleton_gem.ACCEPT_failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.accept_failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.skeleton_gem.accept_failure_info_text_2
locale.skeleton_gem.SUCCESS_say = gameforge.locale.skeleton_gem.success_say

locale.ariyeong = {}
locale.ariyeong.start_probability = 3
locale.ariyeong.start_level_begin = 25
locale.ariyeong.start_level_end = 27
locale.ariyeong.end_level = 30
locale.ariyeong.kill_count = 2
locale.ariyeong.event_item = 30101
locale.ariyeong.find_ariyeong_label = gameforge.locale.ariyeong.find_ariyeong_label
locale.ariyeong.find_ariyeong_text = locale.NOTICE_COLOR .. gameforge.locale.ariyeong.find_ariyeong_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.ariyeong.find_ariyeong_text_2
locale.ariyeong.kill_label = gameforge.locale.ariyeong.kill_label
locale.ariyeong.kill_text = locale.NOTICE_COLOR .. gameforge.locale.ariyeong.kill_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.ariyeong.kill_text_2
locale.ariyeong.too_late = gameforge.locale.ariyeong.too_late
locale.ariyeong.success_info_label = gameforge.locale.ariyeong.success_info_label
locale.ariyeong.success_info_text = locale.NOTICE_COLOR .. gameforge.locale.ariyeong.success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.ariyeong.success_info_text_2
locale.ariyeong.failure_info_label = gameforge.locale.ariyeong.failure_info_label
locale.ariyeong.failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.ariyeong.failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.ariyeong.failure_info_text_2

locale.levelup = {}
locale.levelup.choice1 = gameforge.locale.levelup.choice1
locale.levelup.choice2 = gameforge.locale.levelup.choice2
locale.levelup.slay_them1 = gameforge.locale.levelup.slay_them1
locale.levelup.slay_them2 = gameforge.locale.levelup.slay_them2
locale.levelup.slay_target_is = gameforge.locale.levelup.slay_target_is 
locale.levelup.slay_target_count = gameforge.locale.levelup.slay_target_count
locale.levelup.slayed_them = gameforge.locale.levelup.slayed_them
locale.levelup.remain_count = gameforge.locale.levelup.remain_count
locale.levelup.cause_of_levelup = gameforge.locale.levelup.cause_of_levelup
locale.levelup.receive_direct = gameforge.locale.levelup.receive_direct
locale.levelup.levelup_quest_fail = gameforge.locale.levelup.levelup_quest_fail
locale.levelup.lets_go = gameforge.locale.levelup.lets_go
locale.levelup.kill_count = gameforge.locale.levelup.kill_count
locale.levelup.prev_quest1 = gameforge.locale.levelup.prev_quest1
locale.levelup.prev_quest2 = gameforge.locale.levelup.prev_quest2
locale.levelup.prev_quest_info = gameforge.locale.levelup.prev_quest_info
locale.levelup.prev_quest_go = gameforge.locale.levelup.prev_quest_go
locale.levelup.random_item = gameforge.locale.levelup.random_item

locale.stash = {}
locale.stash.buy_silver_and_gold_bar = gameforge.locale.stash.buy_silver_and_gold_bar
locale.stash.gold_bar_beginner_info = gameforge.locale.stash.gold_bar_beginner_info
locale.stash.enlarge_first1_cannot = gameforge.locale.stash.enlarge_first1_cannot
locale.stash.greet1 = gameforge.locale.stash.greet1
locale.stash.not_enough_money = gameforge.locale.stash.not_enough_money
locale.stash.pay_ok = gameforge.locale.stash.pay_ok
locale.stash.pay_no = gameforge.locale.stash.pay_no
locale.stash.first_open = gameforge.locale.stash.first_open
locale.stash.dont_open = gameforge.locale.stash.dont_open
locale.stash.greet2 = gameforge.locale.stash.greet2
locale.stash.beginner_info = gameforge.locale.stash.beginner_info
locale.stash.enlarge = gameforge.locale.stash.enlarge
locale.stash.nomatter = gameforge.locale.stash.nomatter
locale.stash.enlarge_first1 = gameforge.locale.stash.enlarge_first1
locale.stash.enlarge_item1 = 50
locale.stash.enlarge_item2 = 5030
locale.stash.enlarge_first2 = gameforge.locale.stash.enlarge_first2
locale.stash.enlarge_first3 = gameforge.locale.stash.enlarge_first3
locale.stash.enlarge_try_ok = gameforge.locale.stash.enlarge_try_ok
locale.stash.enlarge_try_no = gameforge.locale.stash.enlarge_try_no
locale.stash.enlarge_try_ok_answer = gameforge.locale.stash.enlarge_try_ok_answer
locale.stash.enlarge_1_title = gameforge.locale.stash.enlarge_1_title
locale.stash.enlarge_1_counter = gameforge.locale.stash.enlarge_1_counter
locale.stash.enlarge_1_item = gameforge.locale.stash.enlarge_1_item
locale.stash.enlarge_1_timer = gameforge.locale.stash.enlarge_1_timer
locale.stash.enlarge_no_need = gameforge.locale.stash.enlarge_no_need
locale.stash.greet3 = gameforge.locale.stash.greet3
locale.stash.enlarge_2_no_mark = gameforge.locale.stash.enlarge_2_no_mark
locale.stash.enlarge_2_again = gameforge.locale.stash.enlarge_2_again
locale.stash.enlarge_2_title = gameforge.locale.stash.enlarge_2_title
locale.stash.enlarge_2_item = 60002
locale.stash.enlarge_2_mark_item = 60003
locale.stash.enlarge_2_have_mark = c_item_name(locale.stash.enlarge_2_mark_item .. gameforge.locale.stash.enlarge_2_have_mark)
locale.stash.enlarge_2_no_mark2 = gameforge.locale.stash.enlarge_2_no_mark2
locale.stash.enlarge_2_have_mark2 = gameforge.locale.stash.enlarge_2_have_mark2
locale.stash.enlarge_2_have_mark3 = gameforge.locale.stash.enlarge_2_have_mark3
locale.stash.enlarge_2_msg1 = gameforge.locale.stash.enlarge_2_msg1
locale.stash.enlarge_2_msg2 = gameforge.locale.stash.enlarge_2_msg2
locale.stash.greet4 = gameforge.locale.stash.greet4
locale.stash.enlarge_3_msg1 = gameforge.locale.stash.enlarge_3_msg1
locale.stash.enlarge_3_title = gameforge.locale.stash.enlarge_3_title
locale.stash.enlarge_3_counter = gameforge.locale.stash.enlarge_3_counter
locale.stash.enlarge_3_timer = gameforge.locale.stash.enlarge_3_timer
locale.stash.enlarge_4_msg = gameforge.locale.stash.enlarge_4_msg
locale.stash.enlarge_2_recommendation = gameforge.locale.stash.enlarge_2_recommendation
locale.stash.enlarge_2_oldwoman_greet = gameforge.locale.stash.enlarge_2_oldwoman_greet
locale.stash.enlarge_2_oldwoman_reject = gameforge.locale.stash.enlarge_2_oldwoman_reject
locale.stash.enlarge_2_oldwoman_title1 = gameforge.locale.stash.enlarge_2_oldwoman_title1
locale.stash.enlarge_2_oldwoman_title2 = gameforge.locale.stash.enlarge_2_oldwoman_title2
locale.stash.enlarge_2_oldwoman_accept = gameforge.locale.stash.enlarge_2_oldwoman_accept
locale.stash.enlarge_1_info1 = gameforge.locale.stash.enlarge_1_info1
locale.stash.enlarge_1_info2 = gameforge.locale.stash.enlarge_1_info2
locale.stash.enlarge_1_take_bear = gameforge.locale.stash.enlarge_1_take_bear
locale.stash.enlarge_1_success = gameforge.locale.stash.enlarge_1_success
locale.stash.enlarge_1_notyet = gameforge.locale.stash.enlarge_1_notyet
locale.stash.enlarge_1_getone = gameforge.locale.stash.enlarge_1_getone
locale.stash.enlarge_1_complete = gameforge.locale.stash.enlarge_1_complete
locale.stash.enlarge_1_fail_info = gameforge.locale.stash.enlarge_1_fail_info
locale.stash.enlarge_1_fail_msg = gameforge.locale.stash.enlarge_1_fail_msg
locale.stash.enlarge_3_complete = gameforge.locale.stash.enlarge_3_complete
locale.stash.enlarge_3_success = gameforge.locale.stash.enlarge_3_success
locale.stash.enlarge_3_notyet = gameforge.locale.stash.enlarge_3_notyet
locale.stash.open_mall = gameforge.locale.stash.open_mall

locale.guild = {}
locale.guild.guild_master_greet = gameforge.locale.guild.guild_master_greet
locale.guild.disband = gameforge.locale.guild.disband
locale.guild.cancel = gameforge.locale.guild.cancel
locale.guild.yes = gameforge.locale.guild.yes
locale.guild.no = gameforge.locale.guild.no
locale.guild.disband_confirm = gameforge.locale.guild.disband_confirm
locale.guild.disband_msg = gameforge.locale.guild.disband_msg
locale.guild.guild_member_greet = gameforge.locale.guild.guild_member_greet
locale.guild.withdraw = gameforge.locale.guild.withdraw
locale.guild.withdraw_confirm = gameforge.locale.guild.withdraw_confirm
locale.guild.withdraw_msg = gameforge.locale.guild.withdraw_msg
locale.guild.noguild_greet = gameforge.locale.guild.noguild_greet
locale.guild.create = gameforge.locale.guild.create
locale.guild.create_confirm = gameforge.locale.guild.create_confirm
locale.guild.create_not_enough_money = gameforge.locale.guild.create_not_enough_money
locale.guild.not_enough_leadership = gameforge.locale.guild.not_enough_leadership
locale.guild.no_guild_create_item = gameforge.locale.guild.no_guild_create_item
locale.guild.create_confirm_for_china = gameforge.locale.guild.create_confirm_for_china
locale.guild.cannot_create_guild_withdraw_delay = gameforge.locale.guild.cannot_create_guild_withdraw_delay
locale.guild.cannot_create_guild_disband_delay = gameforge.locale.guild.cannot_create_guild_disband_delay
locale.guild.war_entry_ask_head = gameforge.locale.guild.war_entry_ask_head
locale.guild.war_entry_ask_tail = gameforge.locale.guild.war_entry_ask_tail
locale.guild.war_list_button = gameforge.locale.guild.war_list_button
locale.guild.war_list_none = gameforge.locale.guild.war_list_none
locale.guild.war_list_choose = gameforge.locale.guild.war_list_choose
locale.guild.war_join_request = gameforge.locale.guild.war_join_request
locale.guild.war_over = gameforge.locale.guild.war_over
locale.guild.war_bet_list_button = gameforge.locale.guild.war_bet_list_button
locale.guild.war_bet_info = gameforge.locale.guild.war_bet_info
locale.guild.war_bet_no_money = gameforge.locale.guild.war_bet_no_money
locale.guild.war_bet_price = gameforge.locale.guild.war_bet_price
locale.guild.war_bet_done = gameforge.locale.guild.war_bet_done
locale.guild.war_bet_list_none = gameforge.locale.guild.war_bet_list_none
locale.guild.war_bet_list_choose = gameforge.locale.guild.war_bet_list_choose
locale.guild.war_bet_already = gameforge.locale.guild.war_bet_already
locale.guild.war_bet_assume1 = gameforge.locale.guild.war_bet_assume1
locale.guild.war_bet_assume2 = gameforge.locale.guild.war_bet_assume2
locale.guild.war_bet_assume3 = gameforge.locale.guild.war_bet_assume3

locale.oldwoman = {}
locale.oldwoman.no_matter = gameforge.locale.oldwoman.no_matter
locale.oldwoman.skill_reset1 = gameforge.locale.oldwoman.skill_reset1
locale.oldwoman.skill_reset2 = gameforge.locale.oldwoman.skill_reset2
locale.oldwoman.skill_reset_ok = gameforge.locale.oldwoman.skill_reset_ok
locale.oldwoman.skill_reset_no = gameforge.locale.oldwoman.skill_reset_no
locale.oldwoman.not_enough_money = gameforge.locale.oldwoman.not_enough_money
 
locale.skill_group = {}
locale.skill_group.lets_join_skill_group = {
	gameforge.locale.skill_group.lets_join_skill_group_1,
	gameforge.locale.skill_group.lets_join_skill_group_2,
	gameforge.locale.skill_group.lets_join_skill_group_3,
	gameforge.locale.skill_group.lets_join_skill_group_4
}
locale.skill_group.invite = gameforge.locale.skill_group.invite
locale.skill_group.board = gameforge.locale.skill_group.board
locale.skill_group.dialog = {{
	[WARRIOR] = {
		{
			gameforge.locale.skill_group.dialog_warrior_1,
			gameforge.locale.skill_group.dialog_warrior_2,
		},
		{
			gameforge.locale.skill_group.dialog_warrior_3,
			gameforge.locale.skill_group.dialog_warrior_4,
		},
		gameforge.locale.skill_group.dialog_warrior_5,
	},
	[ASSASSIN] = {
		{
			gameforge.locale.skill_group.dialog_assassin_1,
			gameforge.locale.skill_group.dialog_assassin_2,
		},
		{
			gameforge.locale.skill_group.dialog_assassin_3,
			gameforge.locale.skill_group.dialog_assassin_4,
		},
		gameforge.locale.skill_group.dialog_assassin_5,
	},
	[SURA] = {
		{
			gameforge.locale.skill_group.dialog_sura_1,
			gameforge.locale.skill_group.dialog_sura_2,
		},
		{
			gameforge.locale.skill_group.dialog_sura_3,
			gameforge.locale.skill_group.dialog_sura_4,
		},
		gameforge.locale.skill_group.dialog_sura_5,
	},
	[SHAMAN] = {
		{
			gameforge.locale.skill_group.dialog_shaman_1,
			gameforge.locale.skill_group.dialog_shaman_2,
		},
		{
			gameforge.locale.skill_group.dialog_shaman_3,
			gameforge.locale.skill_group.dialog_shaman_4,
		},
		gameforge.locale.skill_group.dialog_shaman_5,
	}
}}

locale.neutral_warp = {}
locale.neutral_warp.greet = gameforge.locale.neutral_warp.greet 
locale.neutral_warp.go = gameforge.locale.neutral_warp.go
locale.neutral_warp.not_go = gameforge.locale.neutral_warp.not_go
locale.neutral_warp.where_to_go = gameforge.locale.neutral_warp.where_to_go
locale.neutral_warp.money_need1 = gameforge.locale.neutral_warp.money_need1
locale.neutral_warp.money_need2 = gameforge.locale.neutral_warp.money_need2
locale.neutral_warp.cannot_go_yet = gameforge.locale.neutral_warp.cannot_go_yet

locale.blacksmith = {}
locale.blacksmith.refine_info = gameforge.locale.blacksmith.refine_info

locale.monster_chat = { 
	[301] = {
		gameforge.locale.monster_chat_301_1,
		gameforge.locale.monster_chat_301_2,
		gameforge.locale.monster_chat_301_3,
		gameforge.locale.monster_chat_301_4,
		gameforge.locale.monster_chat_301_5
	},
	[302] = {
		gameforge.locale.monster_chat_302_1,
		gameforge.locale.monster_chat_302_2,
		gameforge.locale.monster_chat_302_3,
		gameforge.locale.monster_chat_302_4,
		gameforge.locale.monster_chat_302_5,
		gameforge.locale.monster_chat_302_6
	},
	[303] = {
		gameforge.locale.monster_chat_303_1,
		gameforge.locale.monster_chat_303_2,
		gameforge.locale.monster_chat_303_3,
		gameforge.locale.monster_chat_303_4,
		gameforge.locale.monster_chat_303_5,
		gameforge.locale.monster_chat_303_6
	},
	[304] = {
		gameforge.locale.monster_chat_304_1,
		gameforge.locale.monster_chat_304_2,
		gameforge.locale.monster_chat_304_3,
		gameforge.locale.monster_chat_304_4,
		gameforge.locale.monster_chat_304_5,
		gameforge.locale.monster_chat_304_6
	},
	[305] = {
		gameforge.locale.monster_chat_305_1,
		gameforge.locale.monster_chat_305_2,
		gameforge.locale.monster_chat_305_3,
		gameforge.locale.monster_chat_305_4,
		gameforge.locale.monster_chat_305_5,
		gameforge.locale.monster_chat_305_6
	},
	[306] = {
		gameforge.locale.monster_chat_306_1,
		gameforge.locale.monster_chat_306_2,
		gameforge.locale.monster_chat_306_3,
		gameforge.locale.monster_chat_306_4,
		gameforge.locale.monster_chat_306_5,
		gameforge.locale.monster_chat_306_6
	},
	[307] = {
		gameforge.locale.monster_chat_307_1,
		gameforge.locale.monster_chat_307_2,
		gameforge.locale.monster_chat_307_3,
		gameforge.locale.monster_chat_307_4,
		gameforge.locale.monster_chat_307_5,
		gameforge.locale.monster_chat_307_6
	},
	[394] = {
		gameforge.locale.monster_chat_394_1,
		gameforge.locale.monster_chat_394_2,
		gameforge.locale.monster_chat_394_3,
		gameforge.locale.monster_chat_394_4,
		gameforge.locale.monster_chat_394_5,
		gameforge.locale.monster_chat_394_6
	},
	[401] = {
		gameforge.locale.monster_chat_401_1,
		gameforge.locale.monster_chat_401_2,
		gameforge.locale.monster_chat_401_3,
		gameforge.locale.monster_chat_401_4,
		gameforge.locale.monster_chat_401_5,
		gameforge.locale.monster_chat_401_6
	},
	[402] = {
		gameforge.locale.monster_chat_402_1,
		gameforge.locale.monster_chat_402_2,
		gameforge.locale.monster_chat_402_3,
		gameforge.locale.monster_chat_402_4,
		gameforge.locale.monster_chat_402_5,
		gameforge.locale.monster_chat_402_6
	},
	[403] = {
		gameforge.locale.monster_chat_403_1,
		gameforge.locale.monster_chat_403_2,
		gameforge.locale.monster_chat_403_3,
		gameforge.locale.monster_chat_403_4,
		gameforge.locale.monster_chat_403_5,
		gameforge.locale.monster_chat_403_6
	},
	[404] = {
		gameforge.locale.monster_chat_404_1,
		gameforge.locale.monster_chat_404_2,
		gameforge.locale.monster_chat_404_3,
		gameforge.locale.monster_chat_404_4,
		gameforge.locale.monster_chat_404_5,
		gameforge.locale.monster_chat_404_6
	},
	[405] = {
		gameforge.locale.monster_chat_405_1,
		gameforge.locale.monster_chat_405_2,
		gameforge.locale.monster_chat_405_3,
		gameforge.locale.monster_chat_405_4,
		gameforge.locale.monster_chat_405_5,
		gameforge.locale.monster_chat_405_6
	},
	[406] = {
		gameforge.locale.monster_chat_406_1,
		gameforge.locale.monster_chat_406_2,
		gameforge.locale.monster_chat_406_3,
		gameforge.locale.monster_chat_406_4,
		gameforge.locale.monster_chat_406_5,
		gameforge.locale.monster_chat_406_6
	},
	[491] = {
		gameforge.locale.monster_chat_491_1,
		gameforge.locale.monster_chat_491_2,
		gameforge.locale.monster_chat_491_3,
		gameforge.locale.monster_chat_491_4,
		gameforge.locale.monster_chat_491_5,
		gameforge.locale.monster_chat_491_6
	},
	[492] = {
		gameforge.locale.monster_chat_492_1,
		gameforge.locale.monster_chat_492_2,
		gameforge.locale.monster_chat_492_3,
		gameforge.locale.monster_chat_492_4,
		gameforge.locale.monster_chat_492_5,
		gameforge.locale.monster_chat_492_6
	},
	[493] = {
		gameforge.locale.monster_chat_493_1,
		gameforge.locale.monster_chat_493_2,
		gameforge.locale.monster_chat_493_3,
		gameforge.locale.monster_chat_493_4,
		gameforge.locale.monster_chat_493_5,
		gameforge.locale.monster_chat_493_6
	},
	[494] = {
		gameforge.locale.monster_chat_494_1,
		gameforge.locale.monster_chat_494_2,
		gameforge.locale.monster_chat_494_3,
		gameforge.locale.monster_chat_494_4,
		gameforge.locale.monster_chat_494_5,
		gameforge.locale.monster_chat_494_6
	},
	[501] = {
		gameforge.locale.monster_chat_501_1,
		gameforge.locale.monster_chat_501_2,
		gameforge.locale.monster_chat_501_3,
		gameforge.locale.monster_chat_501_4,
		gameforge.locale.monster_chat_501_5,
		gameforge.locale.monster_chat_501_6
	},
	[502] = {
		gameforge.locale.monster_chat_502_1,
		gameforge.locale.monster_chat_502_2,
		gameforge.locale.monster_chat_502_3,
		gameforge.locale.monster_chat_502_4,
		gameforge.locale.monster_chat_502_5,
		gameforge.locale.monster_chat_502_6
	},
	[503] = {
		gameforge.locale.monster_chat_503_1,
		gameforge.locale.monster_chat_503_2,
		gameforge.locale.monster_chat_503_3,
		gameforge.locale.monster_chat_503_4,
		gameforge.locale.monster_chat_503_5,
		gameforge.locale.monster_chat_503_6
	},
	[504] = {
		gameforge.locale.monster_chat_504_1,
		gameforge.locale.monster_chat_504_2,
		gameforge.locale.monster_chat_504_3,
		gameforge.locale.monster_chat_504_4,
		gameforge.locale.monster_chat_504_5,
		gameforge.locale.monster_chat_504_6
	},
	[601] = {
		gameforge.locale.monster_chat_601_1,
		gameforge.locale.monster_chat_601_2,
		gameforge.locale.monster_chat_601_3,
		gameforge.locale.monster_chat_601_4,
		gameforge.locale.monster_chat_601_5,
		gameforge.locale.monster_chat_601_6
	},
	[601] = {
		gameforge.locale.monster_chat_601_7,
		gameforge.locale.monster_chat_602_1,
		gameforge.locale.monster_chat_602_2,
		gameforge.locale.monster_chat_602_3,
		gameforge.locale.monster_chat_602_4,
		gameforge.locale.monster_chat_602_5,
		gameforge.locale.monster_chat_602_6
	},
	[603] = {
		gameforge.locale.monster_chat_603_1,
		gameforge.locale.monster_chat_603_2,
		gameforge.locale.monster_chat_603_3,
		gameforge.locale.monster_chat_603_4,
		gameforge.locale.monster_chat_603_5,
		gameforge.locale.monster_chat_603_6
	},
	[604] = {
		gameforge.locale.monster_chat_604_1,
		gameforge.locale.monster_chat_604_2,
		gameforge.locale.monster_chat_604_3,
		gameforge.locale.monster_chat_604_4,
		gameforge.locale.monster_chat_604_5,
		gameforge.locale.monster_chat_604_6
	},
	[631] = {
		gameforge.locale.monster_chat_631_1,
		gameforge.locale.monster_chat_631_2,
		gameforge.locale.monster_chat_631_3,
		gameforge.locale.monster_chat_631_4,
		gameforge.locale.monster_chat_631_5,
		gameforge.locale.monster_chat_631_6
	},
	[632] = {
		gameforge.locale.monster_chat_632_1,
		gameforge.locale.monster_chat_632_2,
		gameforge.locale.monster_chat_632_3,
		gameforge.locale.monster_chat_632_4,
		gameforge.locale.monster_chat_632_5,
		gameforge.locale.monster_chat_632_6
	},
	[633] = {
		gameforge.locale.monster_chat_633_1,
		gameforge.locale.monster_chat_633_2,
		gameforge.locale.monster_chat_633_3,
		gameforge.locale.monster_chat_633_4,
		gameforge.locale.monster_chat_633_5,
		gameforge.locale.monster_chat_633_6
	},
	[634] = {
		gameforge.locale.monster_chat_634_1,
		gameforge.locale.monster_chat_634_2,
		gameforge.locale.monster_chat_634_3,
		gameforge.locale.monster_chat_634_4,
		gameforge.locale.monster_chat_634_5,
		gameforge.locale.monster_chat_634_6
	},
	[635] = {
		gameforge.locale.monster_chat_635_1,
		gameforge.locale.monster_chat_635_2,
		gameforge.locale.monster_chat_635_3,
		gameforge.locale.monster_chat_635_4,
		gameforge.locale.monster_chat_635_5,
		gameforge.locale.monster_chat_635_6
	},
	[636] = {
		gameforge.locale.monster_chat_636_1,
		gameforge.locale.monster_chat_636_2,
		gameforge.locale.monster_chat_636_3,
		gameforge.locale.monster_chat_636_4,
		gameforge.locale.monster_chat_636_5,
		gameforge.locale.monster_chat_636_6
	},
	[636] = {
		gameforge.locale.monster_chat_636_7,
		gameforge.locale.monster_chat_637_1,
		gameforge.locale.monster_chat_637_2,
		gameforge.locale.monster_chat_637_3,
		gameforge.locale.monster_chat_637_4,
		gameforge.locale.monster_chat_637_5,
		gameforge.locale.monster_chat_637_6
	},
	[691] = {
		gameforge.locale.monster_chat_691_1,
		gameforge.locale.monster_chat_691_2,
		gameforge.locale.monster_chat_691_3,
		gameforge.locale.monster_chat_691_4,
		gameforge.locale.monster_chat_691_5,
		gameforge.locale.monster_chat_691_6
	},
	[701] = {
		gameforge.locale.monster_chat_701_1,
		gameforge.locale.monster_chat_701_2,
		gameforge.locale.monster_chat_701_3,
		gameforge.locale.monster_chat_701_4,
		gameforge.locale.monster_chat_701_5,
		gameforge.locale.monster_chat_701_6
	},
	[702] = {
		gameforge.locale.monster_chat_702_1,
		gameforge.locale.monster_chat_702_2,
		gameforge.locale.monster_chat_702_3,
		gameforge.locale.monster_chat_702_4,
		gameforge.locale.monster_chat_702_5,
		gameforge.locale.monster_chat_702_6
	},
	[703] = {
		gameforge.locale.monster_chat_703_1,
		gameforge.locale.monster_chat_703_2,
		gameforge.locale.monster_chat_703_3,
		gameforge.locale.monster_chat_703_4,
		gameforge.locale.monster_chat_703_5,
		gameforge.locale.monster_chat_703_6
	},
	[704] = {
		gameforge.locale.monster_chat_704_1,
		gameforge.locale.monster_chat_704_2,
		gameforge.locale.monster_chat_704_3,
		gameforge.locale.monster_chat_704_4,
		gameforge.locale.monster_chat_704_5,
		gameforge.locale.monster_chat_704_6
	},
	[705] = {
		gameforge.locale.monster_chat_705_1,
		gameforge.locale.monster_chat_705_2,
		gameforge.locale.monster_chat_705_3,
		gameforge.locale.monster_chat_705_4,
		gameforge.locale.monster_chat_705_5,
		gameforge.locale.monster_chat_705_6
	},
	[706] = {
		gameforge.locale.monster_chat_706_1,
		gameforge.locale.monster_chat_706_2,
		gameforge.locale.monster_chat_706_3,
		gameforge.locale.monster_chat_706_4,
		gameforge.locale.monster_chat_706_5,
		gameforge.locale.monster_chat_706_6
	},
	[707] = {
		gameforge.locale.monster_chat_707_1,
		gameforge.locale.monster_chat_707_2,
		gameforge.locale.monster_chat_707_3,
		gameforge.locale.monster_chat_707_4,
		gameforge.locale.monster_chat_707_5,
		gameforge.locale.monster_chat_707_6
	},
	[791] = {
		gameforge.locale.monster_chat_791_1,
		gameforge.locale.monster_chat_791_2,
		gameforge.locale.monster_chat_791_3,
		gameforge.locale.monster_chat_791_4,
		gameforge.locale.monster_chat_791_5,
		gameforge.locale.monster_chat_791_6
	},
	[901] = {
		gameforge.locale.monster_chat_901_1,
		gameforge.locale.monster_chat_901_2,
		gameforge.locale.monster_chat_901_3,
		gameforge.locale.monster_chat_901_4,
		gameforge.locale.monster_chat_901_5
	},
	[903] = {
		gameforge.locale.monster_chat_903_1,
		gameforge.locale.monster_chat_903_2,
		gameforge.locale.monster_chat_903_3,
		gameforge.locale.monster_chat_903_4,
		gameforge.locale.monster_chat_903_5,
		gameforge.locale.monster_chat_903_6
	},
	[904] = {
		gameforge.locale.monster_chat_904_1,
		gameforge.locale.monster_chat_904_2,
		gameforge.locale.monster_chat_904_3,
		gameforge.locale.monster_chat_904_4,
		gameforge.locale.monster_chat_904_5,
		gameforge.locale.monster_chat_904_6
	},
	[905] = {
		gameforge.locale.monster_chat_905_1,
		gameforge.locale.monster_chat_905_2,
		gameforge.locale.monster_chat_905_3,
		gameforge.locale.monster_chat_905_4,
		gameforge.locale.monster_chat_905_5,
		gameforge.locale.monster_chat_905_6
	},
	[906] = {
		gameforge.locale.monster_chat_906_1,
		gameforge.locale.monster_chat_906_2,
		gameforge.locale.monster_chat_906_3,
		gameforge.locale.monster_chat_906_4,
		gameforge.locale.monster_chat_906_5,
		gameforge.locale.monster_chat_906_6
	},
	[907] = {
		gameforge.locale.monster_chat_907_1,
		gameforge.locale.monster_chat_907_2,
		gameforge.locale.monster_chat_907_3,
		gameforge.locale.monster_chat_907_4,
		gameforge.locale.monster_chat_907_5,
		gameforge.locale.monster_chat_907_6
	},
	[1001] = {
		gameforge.locale.monster_chat_1001_1,
		gameforge.locale.monster_chat_1001_2,
		gameforge.locale.monster_chat_1001_3,
		gameforge.locale.monster_chat_1001_4,
		gameforge.locale.monster_chat_1001_5,
		gameforge.locale.monster_chat_1001_6
	},
	[1002] = {
		gameforge.locale.monster_chat_1002_1,
		gameforge.locale.monster_chat_1002_2,
		gameforge.locale.monster_chat_1002_3,
		gameforge.locale.monster_chat_1002_4,
		gameforge.locale.monster_chat_1002_5
	},
	[1003] = {
		gameforge.locale.monster_chat_1003_1,
		gameforge.locale.monster_chat_1003_2,
		gameforge.locale.monster_chat_1003_3,
		gameforge.locale.monster_chat_1003_4,
		gameforge.locale.monster_chat_1003_5,
		gameforge.locale.monster_chat_1003_6
	},
	[1004] = {
		gameforge.locale.monster_chat_1004_1,
		gameforge.locale.monster_chat_1004_2,
		gameforge.locale.monster_chat_1004_3,
		gameforge.locale.monster_chat_1004_4,
		gameforge.locale.monster_chat_1004_5,
		gameforge.locale.monster_chat_1004_6
	},
	[1035] = {
		gameforge.locale.monster_chat_1035_1,
		gameforge.locale.monster_chat_1035_2,
		gameforge.locale.monster_chat_1035_3,
		gameforge.locale.monster_chat_1035_4,
		gameforge.locale.monster_chat_1035_5,
		gameforge.locale.monster_chat_1035_6
	},
	[1036] = {
		gameforge.locale.monster_chat_1036_1,
		gameforge.locale.monster_chat_1036_2,
		gameforge.locale.monster_chat_1036_3,
		gameforge.locale.monster_chat_1036_4,
		gameforge.locale.monster_chat_1036_5,
		gameforge.locale.monster_chat_1036_6
	},
	[1037] = {
		gameforge.locale.monster_chat_1037_1,
		gameforge.locale.monster_chat_1037_2,
		gameforge.locale.monster_chat_1037_3,
		gameforge.locale.monster_chat_1037_4,
		gameforge.locale.monster_chat_1037_5,
		gameforge.locale.monster_chat_1037_6
	},
	[1038] = {
		gameforge.locale.monster_chat_1038_1,
		gameforge.locale.monster_chat_1038_2,
		gameforge.locale.monster_chat_1038_3,
		gameforge.locale.monster_chat_1038_4,
		gameforge.locale.monster_chat_1038_5,
		gameforge.locale.monster_chat_1038_6
	},
	[1039] = {
		gameforge.locale.monster_chat_1039_1,
		gameforge.locale.monster_chat_1039_2,
		gameforge.locale.monster_chat_1039_3,
		gameforge.locale.monster_chat_1039_4,
		gameforge.locale.monster_chat_1039_5,
		gameforge.locale.monster_chat_1039_6
	},
	[1040] = {
		gameforge.locale.monster_chat_1040_1,
		gameforge.locale.monster_chat_1040_2,
		gameforge.locale.monster_chat_1040_3,
		gameforge.locale.monster_chat_1040_4,
		gameforge.locale.monster_chat_1040_5,
		gameforge.locale.monster_chat_1040_6
	},
	[1041] = {
		gameforge.locale.monster_chat_1041_1,
		gameforge.locale.monster_chat_1041_2,
		gameforge.locale.monster_chat_1041_3,
		gameforge.locale.monster_chat_1041_4,
		gameforge.locale.monster_chat_1041_5,
		gameforge.locale.monster_chat_1041_6
	},
	[1091] = {
		gameforge.locale.monster_chat_1091_1,
		gameforge.locale.monster_chat_1091_2,
		gameforge.locale.monster_chat_1091_3,
		gameforge.locale.monster_chat_1091_4,
		gameforge.locale.monster_chat_1091_5,
		gameforge.locale.monster_chat_1091_6
	},
	[1093] = {
		gameforge.locale.monster_chat_1093_1,
		gameforge.locale.monster_chat_1093_2,
		gameforge.locale.monster_chat_1093_3,
		gameforge.locale.monster_chat_1093_4,
		gameforge.locale.monster_chat_1093_5,
		gameforge.locale.monster_chat_1093_6
	},
	[1105] = {
		gameforge.locale.monster_chat_1105_1,
		gameforge.locale.monster_chat_1105_2,
		gameforge.locale.monster_chat_1105_3,
		gameforge.locale.monster_chat_1105_4,
		gameforge.locale.monster_chat_1105_5,
		gameforge.locale.monster_chat_1105_6
	},
	[1106] = {
		gameforge.locale.monster_chat_1106_1,
		gameforge.locale.monster_chat_1106_2,
		gameforge.locale.monster_chat_1106_3,
		gameforge.locale.monster_chat_1106_4,
		gameforge.locale.monster_chat_1106_5,
		gameforge.locale.monster_chat_1106_6
	},
	[1191] = {
		gameforge.locale.monster_chat_1191_1,
		gameforge.locale.monster_chat_1191_2,
		gameforge.locale.monster_chat_1191_3,
		gameforge.locale.monster_chat_1191_4,
		gameforge.locale.monster_chat_1191_5,
		gameforge.locale.monster_chat_1191_6
	},
	[1301] = {
		gameforge.locale.monster_chat_1301_1,
		gameforge.locale.monster_chat_1301_2,
		gameforge.locale.monster_chat_1301_3,
		gameforge.locale.monster_chat_1301_4,
		gameforge.locale.monster_chat_1301_5,
		gameforge.locale.monster_chat_1301_6
	},
	[1302] = {
		gameforge.locale.monster_chat_1302_1,
		gameforge.locale.monster_chat_1302_2,
		gameforge.locale.monster_chat_1302_3,
		gameforge.locale.monster_chat_1302_4,
		gameforge.locale.monster_chat_1302_5,
		gameforge.locale.monster_chat_1302_6
	},
	[1303] = {
		gameforge.locale.monster_chat_1303_1,
		gameforge.locale.monster_chat_1303_2,
		gameforge.locale.monster_chat_1303_3,
		gameforge.locale.monster_chat_1303_4,
		gameforge.locale.monster_chat_1303_5,
		gameforge.locale.monster_chat_1303_6
	},
	[1305] = {
		gameforge.locale.monster_chat_1305_1,
		gameforge.locale.monster_chat_1305_2,
		gameforge.locale.monster_chat_1305_3,
		gameforge.locale.monster_chat_1305_4,
		gameforge.locale.monster_chat_1305_5,
		gameforge.locale.monster_chat_1305_6
	},
	[1901] = {
		gameforge.locale.monster_chat_1901_1,
		gameforge.locale.monster_chat_1901_2,
		gameforge.locale.monster_chat_1901_3,
		gameforge.locale.monster_chat_1901_4,
		gameforge.locale.monster_chat_1901_5,
		gameforge.locale.monster_chat_1901_6
	},
	[2091] = {
		gameforge.locale.monster_chat_2091_1,
		gameforge.locale.monster_chat_2091_2,
		gameforge.locale.monster_chat_2091_3,
		gameforge.locale.monster_chat_2091_4,
		gameforge.locale.monster_chat_2091_5,
		gameforge.locale.monster_chat_2091_6
	},
	[2092] = {
		gameforge.locale.monster_chat_2092_1,
		gameforge.locale.monster_chat_2092_2,
		gameforge.locale.monster_chat_2092_3,
		gameforge.locale.monster_chat_2092_4,
		gameforge.locale.monster_chat_2092_5,
		gameforge.locale.monster_chat_2092_6
	},
	[2104] = {
		gameforge.locale.monster_chat_2104_1,
		gameforge.locale.monster_chat_2104_2,
		gameforge.locale.monster_chat_2104_3,
		gameforge.locale.monster_chat_2104_4,
		gameforge.locale.monster_chat_2104_5,
		gameforge.locale.monster_chat_2104_6
	},
	[2105] = {
		gameforge.locale.monster_chat_2105_1,
		gameforge.locale.monster_chat_2105_2,
		gameforge.locale.monster_chat_2105_3,
		gameforge.locale.monster_chat_2105_4,
		gameforge.locale.monster_chat_2105_5
	},
	[2106] = {
		gameforge.locale.monster_chat_2106_1,
		gameforge.locale.monster_chat_2106_2,
		gameforge.locale.monster_chat_2106_3,
		gameforge.locale.monster_chat_2106_4,
		gameforge.locale.monster_chat_2106_5,
		gameforge.locale.monster_chat_2106_6
	},
	[2107] = {
		gameforge.locale.monster_chat_2107_1,
		gameforge.locale.monster_chat_2107_2,
		gameforge.locale.monster_chat_2107_3,
		gameforge.locale.monster_chat_2107_4,
		gameforge.locale.monster_chat_2107_5,
		gameforge.locale.monster_chat_2107_6
	},
	[2108] = {
		gameforge.locale.monster_chat_2108_1,
		gameforge.locale.monster_chat_2108_2,
		gameforge.locale.monster_chat_2108_3,
		gameforge.locale.monster_chat_2108_4,
		gameforge.locale.monster_chat_2108_5,
		gameforge.locale.monster_chat_2108_6
	},
	[2191] = {
		gameforge.locale.monster_chat_2191_1,
		gameforge.locale.monster_chat_2191_2,
		gameforge.locale.monster_chat_2191_3,
		gameforge.locale.monster_chat_2191_4,
		gameforge.locale.monster_chat_2191_5,
		gameforge.locale.monster_chat_2191_6
	},
	[2202] = {
		gameforge.locale.monster_chat_2202_1,
		gameforge.locale.monster_chat_2202_2,
		gameforge.locale.monster_chat_2202_3,
		gameforge.locale.monster_chat_2202_4,
		gameforge.locale.monster_chat_2202_5,
		gameforge.locale.monster_chat_2202_6
	},
	[2204] = {
		gameforge.locale.monster_chat_2204_1,
		gameforge.locale.monster_chat_2204_2,
		gameforge.locale.monster_chat_2204_3,
		gameforge.locale.monster_chat_2204_4,
		gameforge.locale.monster_chat_2204_5,
		gameforge.locale.monster_chat_2204_6
	},
	[2205] = {
		gameforge.locale.monster_chat_2205_1,
		gameforge.locale.monster_chat_2205_2,
		gameforge.locale.monster_chat_2205_3,
		gameforge.locale.monster_chat_2205_4,
		gameforge.locale.monster_chat_2205_5,
		gameforge.locale.monster_chat_2205_6
	},
	[2206] = {
		gameforge.locale.monster_chat_2206_1,
		gameforge.locale.monster_chat_2206_2,
		gameforge.locale.monster_chat_2206_3,
		gameforge.locale.monster_chat_2206_4,
		gameforge.locale.monster_chat_2206_5,
		gameforge.locale.monster_chat_2206_6
	},
	[2291] = {
		gameforge.locale.monster_chat_2291_1,
		gameforge.locale.monster_chat_2291_2,
		gameforge.locale.monster_chat_2291_3,
		gameforge.locale.monster_chat_2291_4,
		gameforge.locale.monster_chat_2291_5,
		gameforge.locale.monster_chat_2291_6
	},
	[20001] = {
		gameforge.locale.monster_chat_20001_1,
		gameforge.locale.monster_chat_20001_2,
		gameforge.locale.monster_chat_20001_3,
		gameforge.locale.monster_chat_20001_4,
		gameforge.locale.monster_chat_20001_5
	},
	[20002] = {
		gameforge.locale.monster_chat_20002_1,
		gameforge.locale.monster_chat_20002_2,
		gameforge.locale.monster_chat_20002_3,
		gameforge.locale.monster_chat_20002_4,
		gameforge.locale.monster_chat_20002_5
	},
	[20003] = {
		gameforge.locale.monster_chat_20003_1,
		gameforge.locale.monster_chat_20003_2,
		gameforge.locale.monster_chat_20003_3,
		gameforge.locale.monster_chat_20003_4,
		gameforge.locale.monster_chat_20003_5
	},
	[20004] = {
		gameforge.locale.monster_chat_20004_1,
		gameforge.locale.monster_chat_20004_2,
		gameforge.locale.monster_chat_20004_3,
		gameforge.locale.monster_chat_20004_4,
		gameforge.locale.monster_chat_20004_5
	},
	[20005] = {
		gameforge.locale.monster_chat_20005_1,
		gameforge.locale.monster_chat_20005_2,
		gameforge.locale.monster_chat_20005_3,
		gameforge.locale.monster_chat_20005_4,
		gameforge.locale.monster_chat_20005_5
	},
	[20006] = {
		gameforge.locale.monster_chat_20006_1,
		gameforge.locale.monster_chat_20006_2,
		gameforge.locale.monster_chat_20006_3,
		gameforge.locale.monster_chat_20006_4,
		gameforge.locale.monster_chat_20006_5
	},
	[20007] = {
		gameforge.locale.monster_chat_20007_1,
		gameforge.locale.monster_chat_20007_2,
		gameforge.locale.monster_chat_20007_3,
		gameforge.locale.monster_chat_20007_4,
		gameforge.locale.monster_chat_20007_5
	},
	[20008] = {
		gameforge.locale.monster_chat_20008_1,
		gameforge.locale.monster_chat_20008_2,
		gameforge.locale.monster_chat_20008_3,
		gameforge.locale.monster_chat_20008_4,
		gameforge.locale.monster_chat_20008_5
	},
	[20009] = {
		gameforge.locale.monster_chat_20009_1,
		gameforge.locale.monster_chat_20009_2,
		gameforge.locale.monster_chat_20009_3,
		gameforge.locale.monster_chat_20009_4,
		gameforge.locale.monster_chat_20009_5
	},
	[20010] = {
		gameforge.locale.monster_chat_20010_1,
		gameforge.locale.monster_chat_20010_2,
		gameforge.locale.monster_chat_20010_3,
		gameforge.locale.monster_chat_20010_4,
		gameforge.locale.monster_chat_20010_5
	},
	[20011] = {
		gameforge.locale.monster_chat_20011_1,
		gameforge.locale.monster_chat_20011_2,
		gameforge.locale.monster_chat_20011_3,
		gameforge.locale.monster_chat_20011_4,
		gameforge.locale.monster_chat_20011_5
	},
	[20012] = {
		gameforge.locale.monster_chat_20012_1,
		gameforge.locale.monster_chat_20012_2,
		gameforge.locale.monster_chat_20012_3,
		gameforge.locale.monster_chat_20012_4,
		gameforge.locale.monster_chat_20012_5
	},
	[20013] = {
		gameforge.locale.monster_chat_20013_1,
		gameforge.locale.monster_chat_20013_2,
		gameforge.locale.monster_chat_20013_3,
		gameforge.locale.monster_chat_20013_4,
		gameforge.locale.monster_chat_20013_5
	},
	[20014] = {
		gameforge.locale.monster_chat_20014_1,
		gameforge.locale.monster_chat_20014_2,
		gameforge.locale.monster_chat_20014_3,
		gameforge.locale.monster_chat_20014_4,
		gameforge.locale.monster_chat_20014_5
	},
	[20015] = {
		gameforge.locale.monster_chat_20015_1,
		gameforge.locale.monster_chat_20015_2,
		gameforge.locale.monster_chat_20015_3,
		gameforge.locale.monster_chat_20015_4,
		gameforge.locale.monster_chat_20015_5
	},
	[20016] = {
		gameforge.locale.monster_chat_20016_1,
		gameforge.locale.monster_chat_20016_2,
		gameforge.locale.monster_chat_20016_3,
		gameforge.locale.monster_chat_20016_4,
		gameforge.locale.monster_chat_20016_5
	},
	[20017] = {
		gameforge.locale.monster_chat_20017_1,
		gameforge.locale.monster_chat_20017_2,
		gameforge.locale.monster_chat_20017_3,
		gameforge.locale.monster_chat_20017_4,
		gameforge.locale.monster_chat_20017_5
	},
	[20018] = {
		gameforge.locale.monster_chat_20018_1,
		gameforge.locale.monster_chat_20018_2,
		gameforge.locale.monster_chat_20018_3,
		gameforge.locale.monster_chat_20018_4,
		gameforge.locale.monster_chat_20018_5
	},
	[20019] = {
		gameforge.locale.monster_chat_20019_1,
		gameforge.locale.monster_chat_20019_2,
		gameforge.locale.monster_chat_20019_3,
		gameforge.locale.monster_chat_20019_4,
		gameforge.locale.monster_chat_20019_5
	},
	[20020] = {
		gameforge.locale.monster_chat_20020_1,
		gameforge.locale.monster_chat_20020_2,
		gameforge.locale.monster_chat_20020_3,
		gameforge.locale.monster_chat_20020_4,
		gameforge.locale.monster_chat_20020_5
	},
	[20021] = {
		gameforge.locale.monster_chat_20021_1,
		gameforge.locale.monster_chat_20021_2,
		gameforge.locale.monster_chat_20021_3,
		gameforge.locale.monster_chat_20021_4,
		gameforge.locale.monster_chat_20021_5
	},
	[20022] = {
		gameforge.locale.monster_chat_20022_1,
		gameforge.locale.monster_chat_20022_2,
		gameforge.locale.monster_chat_20022_3,
		gameforge.locale.monster_chat_20022_4,
		gameforge.locale.monster_chat_20022_5
	},
	[20023] = {
		gameforge.locale.monster_chat_20023_1,
		gameforge.locale.monster_chat_20023_2,
		gameforge.locale.monster_chat_20023_3,
		gameforge.locale.monster_chat_20023_4,
		gameforge.locale.monster_chat_20023_5
	},
	[20024] = {
		gameforge.locale.monster_chat_20024_1,
		gameforge.locale.monster_chat_20024_2,
		gameforge.locale.monster_chat_20024_3,
		gameforge.locale.monster_chat_20024_4,
		gameforge.locale.monster_chat_20024_5
	},
	[11000] = {
		gameforge.locale.monster_chat_11000_1,
		gameforge.locale.monster_chat_11000_2,
		gameforge.locale.monster_chat_11000_3,
		gameforge.locale.monster_chat_11000_4,
		gameforge.locale.monster_chat_11000_5,
		gameforge.locale.monster_chat_11000_6,
		gameforge.locale.monster_chat_11000_7,
		gameforge.locale.monster_chat_11000_8,
		gameforge.locale.monster_chat_11000_9,
		gameforge.locale.monster_chat_11000_10,
		gameforge.locale.monster_chat_11000_11,
		gameforge.locale.monster_chat_11000_12,
		gameforge.locale.monster_chat_11000_13,
		gameforge.locale.monster_chat_11000_14,
		gameforge.locale.monster_chat_11000_15,
		gameforge.locale.monster_chat_11000_16,
		gameforge.locale.monster_chat_11000_17,
		gameforge.locale.monster_chat_11000_18,
		gameforge.locale.monster_chat_11000_19,
		gameforge.locale.monster_chat_11000_20,
		gameforge.locale.monster_chat_11000_21,
		gameforge.locale.monster_chat_11000_22,
		gameforge.locale.monster_chat_11000_23,
		gameforge.locale.monster_chat_11000_24,
		gameforge.locale.monster_chat_11000_25,
		gameforge.locale.monster_chat_11000_26,
		gameforge.locale.monster_chat_11000_27,
		gameforge.locale.monster_chat_11000_28,
		gameforge.locale.monster_chat_11000_29,
		gameforge.locale.monster_chat_11000_30,
		gameforge.locale.monster_chat_11000_31
	},
	[11002] = {
		gameforge.locale.monster_chat_11002_1,
		gameforge.locale.monster_chat_11002_2,
		gameforge.locale.monster_chat_11002_3,
		gameforge.locale.monster_chat_11002_4,
		gameforge.locale.monster_chat_11002_5,
		gameforge.locale.monster_chat_11002_6,
		gameforge.locale.monster_chat_11002_7,
		gameforge.locale.monster_chat_11002_8,
		gameforge.locale.monster_chat_11002_9,
		gameforge.locale.monster_chat_11002_10,
		gameforge.locale.monster_chat_11002_11,
		gameforge.locale.monster_chat_11002_12,
		gameforge.locale.monster_chat_11002_13,
		gameforge.locale.monster_chat_11002_14,
		gameforge.locale.monster_chat_11002_15,
		gameforge.locale.monster_chat_11002_16,
		gameforge.locale.monster_chat_11002_17,
		gameforge.locale.monster_chat_11002_18,
		gameforge.locale.monster_chat_11002_19,
		gameforge.locale.monster_chat_11002_20,
		gameforge.locale.monster_chat_11002_21,
		gameforge.locale.monster_chat_11002_22,
		gameforge.locale.monster_chat_11002_23,
		gameforge.locale.monster_chat_11002_24,
		gameforge.locale.monster_chat_11002_25,
		gameforge.locale.monster_chat_11002_26,
		gameforge.locale.monster_chat_11002_27,
		gameforge.locale.monster_chat_11002_28,
		gameforge.locale.monster_chat_11002_29,
		gameforge.locale.monster_chat_11002_30,
		gameforge.locale.monster_chat_11002_31
	},
	[11004] = {
		gameforge.locale.monster_chat_11004_1,
		gameforge.locale.monster_chat_11004_2,
		gameforge.locale.monster_chat_11004_3,
		gameforge.locale.monster_chat_11004_4,
		gameforge.locale.monster_chat_11004_5,
		gameforge.locale.monster_chat_11004_6,
		gameforge.locale.monster_chat_11004_7,
		gameforge.locale.monster_chat_11004_8,
		gameforge.locale.monster_chat_11004_9,
		gameforge.locale.monster_chat_11004_10,
		gameforge.locale.monster_chat_11004_11,
		gameforge.locale.monster_chat_11004_12,
		gameforge.locale.monster_chat_11004_13,
		gameforge.locale.monster_chat_11004_14,
		gameforge.locale.monster_chat_11004_15,
		gameforge.locale.monster_chat_11004_16,
		gameforge.locale.monster_chat_11004_17,
		gameforge.locale.monster_chat_11004_18,
		gameforge.locale.monster_chat_11004_19,
		gameforge.locale.monster_chat_11004_20,
		gameforge.locale.monster_chat_11004_21,
		gameforge.locale.monster_chat_11004_22,
		gameforge.locale.monster_chat_11004_23,
		gameforge.locale.monster_chat_11004_24,
		gameforge.locale.monster_chat_11004_25,
		gameforge.locale.monster_chat_11004_26,
		gameforge.locale.monster_chat_11004_27,
		gameforge.locale.monster_chat_11004_28,
		gameforge.locale.monster_chat_11004_29,
		gameforge.locale.monster_chat_11004_30,
		gameforge.locale.monster_chat_11004_31
	},
}

special.questscroll = {
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_1_text,
		gameforge.locale.questscroll_1_mis,
		gameforge.locale.questscroll_1_hunt,
		25,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_2_text,
		gameforge.locale.questscroll_2_mis,
		gameforge.locale.questscroll_2_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_3_text,
		gameforge.locale.questscroll_3_mis,
		gameforge.locale.questscroll_3_hunt,
		1,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_4_text,
		gameforge.locale.questscroll_4_mis,
		gameforge.locale.questscroll_4_hunt,
		1,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_5_text,
		gameforge.locale.questscroll_5_mis,
		gameforge.locale.questscroll_5_hunt,
		1,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_6_text,
		gameforge.locale.questscroll_6_mis,
		gameforge.locale.questscroll_6_hunt,
		1,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_7_text,
		gameforge.locale.questscroll_7_mis,
		gameforge.locale.questscroll_7_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_8_text,
		gameforge.locale.questscroll_8_mis,
		gameforge.locale.questscroll_8_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_9_text,
		gameforge.locale.questscroll_9_mis,
		gameforge.locale.questscroll_9_hunt,
		25,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_10_text,
		gameforge.locale.questscroll_10_mis,
		gameforge.locale.questscroll_10_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_11_text,
		gameforge.locale.questscroll_11_mis,
		gameforge.locale.questscroll_11_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_12_text,
		gameforge.locale.questscroll_12_mis,
		gameforge.locale.questscroll_12_hunt,
		12,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_13_text,
		gameforge.locale.questscroll_13_mis,
		gameforge.locale.questscroll_13_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_14_text,
		gameforge.locale.questscroll_14_mis,
		gameforge.locale.questscroll_14_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_15_text,
		gameforge.locale.questscroll_15_mis,
		gameforge.locale.questscroll_15_hunt,
		13,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_16_text,
		gameforge.locale.questscroll_16_mis,
		gameforge.locale.questscroll_16_hunt,
		25,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_17_text,
		gameforge.locale.questscroll_17_mis,
		gameforge.locale.questscroll_17_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_18_text,
		gameforge.locale.questscroll_18_mis,
		gameforge.locale.questscroll_18_hunt,
		25,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_19_text,
		gameforge.locale.questscroll_19_mis,
		gameforge.locale.questscroll_19_hunt,
		25,
	},	
	{ 
		QUEST_SCROLL_TYPE_KILL_ANOTHER_EMPIRE, 
		gameforge.locale.questscroll_20_text,
		gameforge.locale.questscroll_20_mis,
		gameforge.locale.questscroll_20_hunt,
		4,
	},
}

locale.questscroll = {}
locale.questscroll.exist = gameforge.locale.questscroll.exist
locale.questscroll.finish = gameforge.locale.questscroll.finish
locale.questscroll.finish_button = gameforge.locale.questscroll.finish_button

locale.remove_polymorph_chat = gameforge.locale.remove_polymorph_chat
locale.remove_polymorph_msg = gameforge.locale.remove_polymorph_msg

locale.fortune_words = {
	{
		gameforge.locale.fortune_words_1_title,
		gameforge.locale.fortune_words_1_body
	},
	{
		gameforge.locale.fortune_words_2_title,
		gameforge.locale.fortune_words_2_body
	},
	{
		gameforge.locale.fortune_words_3_title,
		gameforge.locale.fortune_words_3_body
	},
	{
		gameforge.locale.fortune_words_4_title,
		gameforge.locale.fortune_words_4_body
	},
	{
		gameforge.locale.fortune_words_5_title,
		gameforge.locale.fortune_words_5_body
	},
	{
		gameforge.locale.fortune_words_6_title,
		gameforge.locale.fortune_words_6_body
	},
	{
		gameforge.locale.fortune_words_7_title,
		gameforge.locale.fortune_words_7_body
	},
}

locale.christmas_tree = {}
locale.christmas_tree.greet = gameforge.locale.christmas_tree.greet
locale.christmas_tree.sel_put_sock = gameforge.locale.christmas_tree.sel_put_sock
locale.christmas_tree.sel_no_need = gameforge.locale.christmas_tree.sel_no_need
locale.christmas_tree.sel_intro_event = gameforge.locale.christmas_tree.sel_intro_event
locale.christmas_tree.no_more_sock = gameforge.locale.christmas_tree.no_more_sock
locale.christmas_tree.gain_item_msg = gameforge.locale.christmas_tree.gain_item_msg
locale.christmas_tree.no_sock = gameforge.locale.christmas_tree.no_sock
locale.christmas_tree.not_sock_time = gameforge.locale.christmas_tree.not_sock_time
locale.christmas_tree.greet2 = gameforge.locale.christmas_tree.greet2
locale.christmas_tree.intro_msg = gameforge.locale.christmas_tree.intro_msg
locale.christmas_tree.under_level_10 = gameforge.locale.christmas_tree.under_level_10
locale.christmas_tree.christmas_say_title = gameforge.locale.christmas_tree.christmas_say_title

locale.christmas_santa = {}
locale.christmas_santa.intro_msg = gameforge.locale.christmas_santa.intro_msg
locale.christmas_santa.skill_book_buy_cost = 10000
locale.christmas_santa.skill_book_msg = locale.christmas_santa.skill_book_buy_cost .. gameforge.locale.christmas_santa.skill_book_msg
locale.christmas_santa.skill_book_sold_out_msg = gameforge.locale.christmas_santa.skill_book_sold_out_msg
locale.christmas_santa.hairdye_buy_cost = 10000
locale.christmas_santa.hairdye_msg = locale.christmas_santa.hairdye_buy_cost .. gameforge.locale.christmas_santa.hairdye_msg
locale.christmas_santa.hairdye_sold_out_msg = gameforge.locale.christmas_santa.hairdye_sold_out_msg
locale.christmas_santa.not_enough_money = gameforge.locale.christmas_santa.want_skillbook
locale.christmas_santa.want_skillbook = gameforge.locale.christmas_santa.want_skillbook
locale.christmas_santa.want_hairdye = gameforge.locale.christmas_santa.want_hairdye
locale.christmas_santa.no_need = gameforge.locale.christmas_santa.no_need
locale.christmas_santa.bye_msg = gameforge.locale.christmas_santa.bye_msg
locale.christmas_santa.select_buy = gameforge.locale.christmas_santa.select_buy
locale.christmas_santa.select_stop = gameforge.locale.christmas_santa.select_stop

locale.years_greetings = {}
locale.years_greetings.chat_greet = gameforge.locale.years_greetings.chat_greet
locale.years_greetings.greet_msg = gameforge.locale.years_greetings.greet_msg
locale.years_greetings.select_1 = gameforge.locale.years_greetings.select_1
locale.years_greetings.select_2 = gameforge.locale.years_greetings.select_2
locale.years_greetings.select_3 = gameforge.locale.years_greetings.select_3
locale.years_greetings.under_level_15 = gameforge.locale.years_greetings.under_level_15
locale.years_greetings.give_msg = gameforge.locale.years_greetings.give_msg
locale.years_greetings.not_enoguh_inventory = gameforge.locale.years_greetings.not_enoguh_inventory
locale.years_greetings.no_money_this_time = gameforge.locale.years_greetings.no_money_this_time
locale.years_greetings.bless_msg = gameforge.locale.years_greetings.bless_msg
locale.years_greetings.event_info = gameforge.locale.years_greetings.event_info 

locale.make_wonso = {}
locale.make_wonso.want_wonso1 = gameforge.locale.make_wonso.want_wonso1
locale.make_wonso.how_make = gameforge.locale.make_wonso.how_make
locale.make_wonso.how_make_detail = gameforge.locale.make_wonso.how_make_detail
locale.make_wonso.make_msg1 = gameforge.locale.make_wonso.make_msg1
locale.make_wonso.make_msg2 = gameforge.locale.make_wonso.make_msg2
locale.make_wonso.make_msg3 = gameforge.locale.make_wonso.make_msg3

locale.horse_menu = {}
locale.horse_menu.menu = gameforge.locale.horse_menu.menu
locale.horse_menu.show_state = gameforge.locale.horse_menu.show_state
locale.horse_menu.revive = gameforge.locale.horse_menu.revive
locale.horse_menu.feed = gameforge.locale.horse_menu.feed
locale.horse_menu.ride = gameforge.locale.horse_menu.ride
locale.horse_menu.unsummon = gameforge.locale.horse_menu.unsummon
locale.horse_menu.close = gameforge.locale.horse_menu.close

locale.monkey_dungeon = {}
locale.monkey_dungeon.button = gameforge.locale.monkey_dungeon.button
locale.monkey_dungeon.curse_of_monkey_button = gameforge.locale.monkey_dungeon.curse_of_monkey_button
locale.monkey_dungeon.curse_of_monkey = gameforge.locale.monkey_dungeon.curse_of_monkey
locale.monkey_dungeon.cannot_ENTER_yet = gameforge.locale.monkey_dungeon.cannot_ENTER_yet
locale.monkey_dungeon.low_entrance = gameforge.locale.monkey_dungeon.low_entrance
locale.monkey_dungeon.middle_entrance = gameforge.locale.monkey_dungeon.middle_entrance
locale.monkey_dungeon.notice = gameforge.locale.monkey_dungeon.notice
locale.monkey_dungeon.quest_title = gameforge.locale.monkey_dungeon.quest_title
locale.monkey_dungeon.quest_rest_time = gameforge.locale.monkey_dungeon.quest_rest_time
locale.monkey_dungeon.ENTER = gameforge.locale.monkey_dungeon.ENTER
locale.monkey_dungeon.no_ENTER = gameforge.locale.monkey_dungeon.no_ENTER

locale.questscroll5 = {}
locale.questscroll5.mission = {
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Aa",
		gameforge.locale.questscroll5.mission_1_hunt,
		gameforge.locale.questscroll5.mission_1_text,
		gameforge.locale.questscroll5.mission_1_mis,
		"8002",
		3
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Aa",
		gameforge.locale.questscroll5.mission_2_hunt,
		gameforge.locale.questscroll5.mission_2_text,
		gameforge.locale.questscroll5.mission_2_mis,
		"8001",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Aa",
		gameforge.locale.questscroll5.mission_3_hunt,
		gameforge.locale.questscroll5.mission_3_text,
		gameforge.locale.questscroll5.mission_3_mis,
		"107",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Aa",
		gameforge.locale.questscroll5.mission_4_hunt,
		gameforge.locale.questscroll5.mission_4_text,
		gameforge.locale.questscroll5.mission_4_mis,
		"106",
		35
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Aa",
		gameforge.locale.questscroll5.mission_5_hunt,
		gameforge.locale.questscroll5.mission_5_text,
		gameforge.locale.questscroll5.mission_5_mis,
		"108",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Aa",
		gameforge.locale.questscroll5.mission_6_hunt,
		gameforge.locale.questscroll5.mission_6_text,
		gameforge.locale.questscroll5.mission_6_mis,
		"114"	,
		25,
		"110",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ab",
		gameforge.locale.questscroll5.mission_7_hunt,
		gameforge.locale.questscroll5.mission_7_text,
		gameforge.locale.questscroll5.mission_7_mis,
		"8004",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ab",
		gameforge.locale.questscroll5.mission_8_hunt,
		gameforge.locale.questscroll5.mission_8_text,
		gameforge.locale.questscroll5.mission_8_mis,
		"8003",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ab",
		gameforge.locale.questscroll5.mission_9_hunt,
		gameforge.locale.questscroll5.mission_9_text,
		gameforge.locale.questscroll5.mission_9_mis,
		"109",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ab",
		gameforge.locale.questscroll5.mission_10_hunt,
		gameforge.locale.questscroll5.mission_10_text,
		gameforge.locale.questscroll5.mission_10_mis,
		"111",
		25,
		"112",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ab",
		gameforge.locale.questscroll5.mission_11_hunt,
		gameforge.locale.questscroll5.mission_11_text,
		gameforge.locale.questscroll5.mission_11_mis,
		"104",
		35,
		"105",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ba",
		gameforge.locale.questscroll5.mission_12_hunt,
		gameforge.locale.questscroll5.mission_12_text,
		gameforge.locale.questscroll5.mission_12_mis,
		"304",
		20
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ba",
		gameforge.locale.questscroll5.mission_13_hunt,
		gameforge.locale.questscroll5.mission_13_text,
		gameforge.locale.questscroll5.mission_13_mis,
		"404",
		25,
		"405",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ba",
		gameforge.locale.questscroll5.mission_14_hunt,
		gameforge.locale.questscroll5.mission_14_text,
		gameforge.locale.questscroll5.mission_14_mis,
		"631",
		30,
		"632",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ba",
		gameforge.locale.questscroll5.mission_15_hunt,
		gameforge.locale.questscroll5.mission_15_text,
		gameforge.locale.questscroll5.mission_15_mis,
		"501",
		30,
		"502",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Bb",
		gameforge.locale.questscroll5.mission_16_hunt,
		gameforge.locale.questscroll5.mission_16_text,
		gameforge.locale.questscroll5.mission_16_mis,
		"8006",
		3
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Bb",
		gameforge.locale.questscroll5.mission_17_hunt,
		gameforge.locale.questscroll5.mission_17_text,
		gameforge.locale.questscroll5.mission_17_mis,
		"8005",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Bb",
		gameforge.locale.questscroll5.mission_18_hunt,
		gameforge.locale.questscroll5.mission_18_text,
		gameforge.locale.questscroll5.mission_18_mis,
		"393",
		10
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Bb",
		gameforge.locale.questscroll5.mission_19_hunt,
		gameforge.locale.questscroll5.mission_19_text,
		gameforge.locale.questscroll5.mission_19_mis,
		"633",
		20,
		"634",
		15
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Bb",
		gameforge.locale.questscroll5.mission_20_hunt,
		gameforge.locale.questscroll5.mission_20_text,
		gameforge.locale.questscroll5.mission_20_mis,
		"5111",
		30,
		"5112",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Bb",
		gameforge.locale.questscroll5.mission_21_hunt,
		gameforge.locale.questscroll5.mission_21_text,
		gameforge.locale.questscroll5.mission_21_mis,
		"5101",
		30,
		"5102",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Bc",
		gameforge.locale.questscroll5.mission_22_hunt,
		gameforge.locale.questscroll5.mission_22_text,
		gameforge.locale.questscroll5.mission_22_mis,
		"494",
		4
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Bc",
		gameforge.locale.questscroll5.mission_23_hunt,
		gameforge.locale.questscroll5.mission_23_text,
		gameforge.locale.questscroll5.mission_23_mis,
		"8007",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Bc",
		gameforge.locale.questscroll5.mission_24_hunt,
		gameforge.locale.questscroll5.mission_24_text,
		gameforge.locale.questscroll5.mission_24_mis,
		"5113",
		15,
		"5114",
		15
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Bc",
		gameforge.locale.questscroll5.mission_25_hunt,
		gameforge.locale.questscroll5.mission_25_text,
		gameforge.locale.questscroll5.mission_25_mis,
		"5103",
		15,
		"5104",
		15
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ca",
		gameforge.locale.questscroll5.mission_26_hunt,
		gameforge.locale.questscroll5.mission_26_text,
		gameforge.locale.questscroll5.mission_26_mis,
		"8008",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ca",
		gameforge.locale.questscroll5.mission_27_hunt,
		gameforge.locale.questscroll5.mission_27_text,
		gameforge.locale.questscroll5.mission_27_mis,
		"2001",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ca",
		gameforge.locale.questscroll5.mission_28_hunt,
		gameforge.locale.questscroll5.mission_28_text,
		gameforge.locale.questscroll5.mission_28_mis,
		"2002",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ca",
		gameforge.locale.questscroll5.mission_29_hunt,
		gameforge.locale.questscroll5.mission_29_text,
		gameforge.locale.questscroll5.mission_29_mis,
		"703",
		20,
		"704",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ca",
		gameforge.locale.questscroll5.mission_30_hunt,
		gameforge.locale.questscroll5.mission_30_text,
		gameforge.locale.questscroll5.mission_30_mis,
		"701",
		30,
		"702",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ca",
		gameforge.locale.questscroll5.mission_31_hunt,
		gameforge.locale.questscroll5.mission_31_text,
		gameforge.locale.questscroll5.mission_31_mis,
		"706",
		40,
		"707",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cb",
		gameforge.locale.questscroll5.mission_32_hunt,
		gameforge.locale.questscroll5.mission_32_text,
		gameforge.locale.questscroll5.mission_32_mis,
		"8009",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cb",
		gameforge.locale.questscroll5.mission_33_hunt,
		gameforge.locale.questscroll5.mission_33_text,
		gameforge.locale.questscroll5.mission_33_mis,
		"2031",
		35,
		"2032",
		35
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cb",
		gameforge.locale.questscroll5.mission_34_hunt,
		gameforge.locale.questscroll5.mission_34_text,
		gameforge.locale.questscroll5.mission_34_mis,
		"2031",
		35,
		"2032",
		35
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cb",
		gameforge.locale.questscroll5.mission_35_hunt,
		gameforge.locale.questscroll5.mission_35_text,
		gameforge.locale.questscroll5.mission_35_mis,
		"2033",
		35,
		"2034",
		35
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cb",
		gameforge.locale.questscroll5.mission_36_hunt,
		gameforge.locale.questscroll5.mission_36_text,
		gameforge.locale.questscroll5.mission_36_mis,
		"2035",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cc",
		gameforge.locale.questscroll5.mission_37_hunt,
		gameforge.locale.questscroll5.mission_37_text,
		gameforge.locale.questscroll5.mission_37_mis,
		"8010",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cc",
		gameforge.locale.questscroll5.mission_38_hunt,
		gameforge.locale.questscroll5.mission_38_text,
		gameforge.locale.questscroll5.mission_38_mis,
		"2103",
		30,
		"2104",
		20
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cc",
		gameforge.locale.questscroll5.mission_39_hunt,
		gameforge.locale.questscroll5.mission_39_text,
		gameforge.locale.questscroll5.mission_39_mis,
		"1001",
		30,
		"1002",
		20
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cc",
		gameforge.locale.questscroll5.mission_40_hunt,
		gameforge.locale.questscroll5.mission_40_text,
		gameforge.locale.questscroll5.mission_40_mis,
		"1003",
		30,
		"1004",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cd",
		gameforge.locale.questscroll5.mission_41_hunt,
		gameforge.locale.questscroll5.mission_41_text,
		gameforge.locale.questscroll5.mission_41_mis,
		"5123",
		15,
		"5124",
		15
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cd",
		gameforge.locale.questscroll5.mission_42_hunt,
		gameforge.locale.questscroll5.mission_42_text,
		gameforge.locale.questscroll5.mission_42_mis,
		"1107",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cd",
		gameforge.locale.questscroll5.mission_43_hunt,
		gameforge.locale.questscroll5.mission_43_text,
		gameforge.locale.questscroll5.mission_43_mis,
		"5121",
		30,
		"5122",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cd",
		gameforge.locale.questscroll5.mission_44_hunt,
		gameforge.locale.questscroll5.mission_44_text,
		gameforge.locale.questscroll5.mission_44_mis,
		"1305",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cd",
		gameforge.locale.questscroll5.mission_45_hunt,
		gameforge.locale.questscroll5.mission_45_text,
		gameforge.locale.questscroll5.mission_45_mis,
		"1105",
		35,
		"1106",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cd",
		gameforge.locale.questscroll5.mission_46_hunt,
		gameforge.locale.questscroll5.mission_46_text,
		gameforge.locale.questscroll5.mission_46_mis,
		"1301",
		45,
		"1302",
		35
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cd",
		gameforge.locale.questscroll5.mission_47_hunt,
		gameforge.locale.questscroll5.mission_47_text,
		gameforge.locale.questscroll5.mission_47_mis,
		"1101",
		45
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Da",
		gameforge.locale.questscroll5.mission_48_hunt,
		gameforge.locale.questscroll5.mission_48_text,
		gameforge.locale.questscroll5.mission_48_mis,
		"1063",
		45
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Da",
		gameforge.locale.questscroll5.mission_49_hunt,
		gameforge.locale.questscroll5.mission_49_text,
		gameforge.locale.questscroll5.mission_49_mis,
		"1064",
		60
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Da",
		gameforge.locale.questscroll5.mission_50_hunt,
		gameforge.locale.questscroll5.mission_50_text,
		gameforge.locale.questscroll5.mission_50_mis,
		"2201",
		45
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Db",
		gameforge.locale.questscroll5.mission_51_hunt,
		gameforge.locale.questscroll5.mission_51_text,
		gameforge.locale.questscroll5.mission_51_mis,
		"2202",
		45
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Db",
		gameforge.locale.questscroll5.mission_52_hunt,
		gameforge.locale.questscroll5.mission_52_text,
		gameforge.locale.questscroll5.mission_52_mis,
		"2201",
		60,
		"2203",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Db",
		gameforge.locale.questscroll5.mission_53_hunt,
		gameforge.locale.questscroll5.mission_53_text,
		gameforge.locale.questscroll5.mission_53_mis,
		"2204",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Db",
		gameforge.locale.questscroll5.mission_54_hunt,
		gameforge.locale.questscroll5.mission_54_text,
		gameforge.locale.questscroll5.mission_54_mis,
		"2205",
		60
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Dc",
		gameforge.locale.questscroll5.mission_55_hunt,
		gameforge.locale.questscroll5.mission_55_text,
		gameforge.locale.questscroll5.mission_55_mis,
		"2301",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Dc",
		gameforge.locale.questscroll5.mission_56_hunt,
		gameforge.locale.questscroll5.mission_56_text,
		gameforge.locale.questscroll5.mission_56_mis,
		"2302",
		40,
		"2303",
		30
	},
}

locale.questscroll5.reward_exp = {
	["Aa"] = {
		{10000, 30},
		{20000, 40},
		{30000, 25},
		{50000,  3},
		{80000,  2},
	},
	["Ab"] = {
		{10000, 20},
		{20000, 30},
		{30000, 35},
		{50000, 10},
		{80000,  5},
	},
	["Ba"] = {
		{20000, 25},
		{30000, 35},
		{50000, 25},
		{80000, 10},
		{100000,  5},
	},
	["Bb"] = {
		{20000, 10},
		{30000, 25},
		{50000, 35},
		{80000, 20},
		{100000, 10},
	},
	["Bc"] = {
		{20000,  5},
		{30000, 15},
		{50000, 35},
		{80000, 30},
		{100000, 15},
	},
	["Ca"] = {
		{30000, 20},
		{50000, 40},
		{100000, 30},
		{150000,  8},
		{200000,  2},
	},
	["Cb"] = {
		{30000, 15},
		{50000, 30},
		{100000, 35},
		{150000, 10},
		{200000, 10},
	},
	["Cc"] = {
		{30000, 10},
		{50000, 15},
		{100000, 35},
		{150000, 25},
		{200000, 15},
	},
	["Cd"] = {
		{30000,  5},
		{50000, 10},
		{100000, 30},
		{150000, 35},
		{200000, 20},
	},
	["Da"] = {
		{30000, 20},
		{50000, 40},
		{100000, 30},
		{150000,  8},
		{200000,  2},
	},
	["Db"] = {
		{30000, 15},
		{50000, 30},
		{100000, 35},
		{150000, 10},
		{200000, 10},
	},
	["Dc"] = {
		{30000, 10},
		{50000, 15},
		{100000, 35},
		{150000, 25},
		{200000, 15},
	},
}
locale.questscroll5.reward_money = {
	["Aa"] = {
		{5000, 30},
		{10000, 40},
		{20000, 25},
		{50000, 3},
		{100000, 2},
	},
	["Ab"] = {
		{5000, 20},
		{10000, 30},
		{20000, 35},
		{50000, 10},
		{100000, 5},
	},
	["Ba"] = {
		{10000, 30},
		{30000, 40},
		{50000, 25},
		{80000, 3},
		{100000, 2},
	},
	["Bb"] = {
		{10000, 20},
		{30000, 30},
		{50000, 35},
		{80000, 10},
		{100000, 5},
	},
	["Bc"] = {
		{10000, 10},
		{30000, 20},
		{50000, 35},
		{80000, 30},
		{100000, 5},
	},
	["Ca"] = {
		{30000, 20},
		{50000, 40},
		{80000, 30},
		{100000, 8},
		{150000, 2},
	},
	["Cb"] = {
		{30000, 15},
		{50000, 30},
		{80000, 35},
		{100000, 10},
		{150000, 10},
	},
	["Cc"] = {
		{30000, 10},
		{50000, 15},
		{80000, 35},
		{100000, 25},
		{150000, 10},
	},
	["Cd"] = {
		{30000, 5},
		{50000, 10},
		{80000, 30},
		{100000, 35},
		{150000, 20},
	},
	["Da"] = {
		{30000, 20},
		{50000, 40},
		{80000, 30},
		{100000, 8},
		{150000, 2},
	},
	["Db"] = {
		{30000, 15},
		{50000, 30},
		{80000, 35},
		{100000, 10},
		{150000, 10},
	},
	["Dc"] = {
		{30000, 10},
		{50000, 15},
		{80000, 35},
		{100000, 25},
		{150000, 10},
	},
}
locale.questscroll5.reward_item = {
	["Aa"] = {
		{30053, 1},
		{30072, 1},
		{30071, 1},
		{30003, 1},
		{30023, 1},
		{30038, 1},
	},
	["Ab"] = {
		{30037, 1},
		{30010, 1},
		{30004, 1},
		{30028, 1},
		{30069, 1},
		{30027, 1},
		{30070, 1},
	},
	["Ba"] = {
		{30032, 1},
		{30034, 1},
		{30073, 1},
		{30035, 1},
		{30008, 1},
		{30005, 1},
		{30021, 1},
		{30033, 1},
		{30041, 1},
		{30092, 1},
	},
	["Bb"] = {
		{30074, 1},
		{30076, 1},
		{30056, 1},
		{30057, 1},
		{30006, 1},
		{30077, 1},
		{30030, 1},
		{30058, 1},
		{30025, 1},
		{30055, 1},
	},
	["Bc"] = {
		{30046, 1},
		{30045, 1},
		{30018, 1},
		{30007, 1},
		{30052, 1},
		{30081, 1},
		{30031, 1},
		{30017, 1},
		{30011, 1},
	},
	["Ca"] = {
		{30085, 1},
		{30088, 1},
		{30016, 1},
		{30061, 1},
		{30040, 1},
		{30091, 1},
		{30059, 1},
	},
	["Cb"] = {
		{30060, 1},
		{30039, 1},
		{30042, 1},
		{30009, 1},
		{30079, 1},
		{30075, 1},
		{30022, 1},
		{30087, 1},
	},
	["Cc"] = {
		{30015, 1},
		{30019, 1},
		{30014, 1},
		{30048, 1},
		{30078, 1},
		{30083, 1},
		{30086, 1},
		{30090, 1},
		{30089, 1},
	},
	["Cd"] = {
		{30049, 1},
		{30047, 1},
		{30067, 1},
		{30080, 1},
		{30051, 1},
		{30050, 1},
	},
	["Da"] = {
		{30045, 1},
		{30051, 1},
		{30038, 1},
		{30070, 1},
		{30023, 1},
		{30033, 1},
		{30011, 1},
		{30027, 1},
		{30082, 1},
	},
	["Db"] = {
		{30035, 1},
		{30010, 1},
		{30055, 1},
		{30006, 1},
		{30003, 1},
		{30017, 1},
		{30058, 1},
		{30086, 1},
	},
	["Dc"] = {
		{70048, 15},
		{70050, 15},
		{70051, 15},
		{70102, 5},
		{50513, 5},
		{50301, 20},
		{50302, 15},
		{50303, 10},
	},

}

locale.quiz = {
	{
		gameforge.locale.quiz_1_0_question,
		gameforge.locale.quiz_1_1_choice,
		gameforge.locale.quiz_1_2_choice,
		gameforge.locale.quiz_1_3_choice,
		gameforge.locale.quiz_1_4_choice,
		gameforge.locale.quiz_1_5_answer
	},
	{
		gameforge.locale.quiz_2_0_question,
		gameforge.locale.quiz_2_1_choice,
		gameforge.locale.quiz_2_2_choice,
		gameforge.locale.quiz_2_3_choice,
		gameforge.locale.quiz_2_4_choice,
		gameforge.locale.quiz_2_5_answer
	},
	{
		gameforge.locale.quiz_3_0_question,
		gameforge.locale.quiz_3_1_choice,
		gameforge.locale.quiz_3_2_choice,
		gameforge.locale.quiz_3_3_choice,
		gameforge.locale.quiz_3_4_choice,
		gameforge.locale.quiz_3_5_answer
	},
	{
		gameforge.locale.quiz_4_0_question,
		gameforge.locale.quiz_4_1_choice,
		gameforge.locale.quiz_4_2_choice,
		gameforge.locale.quiz_4_3_choice,
		gameforge.locale.quiz_4_4_choice,
		gameforge.locale.quiz_4_5_answer
	},
	{
		gameforge.locale.quiz_5_0_question,
		gameforge.locale.quiz_5_1_choice,
		gameforge.locale.quiz_5_2_choice,
		gameforge.locale.quiz_5_3_choice,
		gameforge.locale.quiz_5_4_choice,
		gameforge.locale.quiz_5_5_answer
	},
	{
		gameforge.locale.quiz_6_0_question,
		gameforge.locale.quiz_6_1_choice,
		gameforge.locale.quiz_6_2_choice,
		gameforge.locale.quiz_6_3_choice,
		gameforge.locale.quiz_6_4_choice,
		gameforge.locale.quiz_6_5_answer
	},
	{
		gameforge.locale.quiz_7_0_question,
		gameforge.locale.quiz_7_1_choice,
		gameforge.locale.quiz_7_2_choice,
		gameforge.locale.quiz_7_3_choice,
		gameforge.locale.quiz_7_4_choice,
		gameforge.locale.quiz_7_5_answer
	},
	{
		gameforge.locale.quiz_8_0_question,
		gameforge.locale.quiz_8_1_choice,
		gameforge.locale.quiz_8_2_choice,
		gameforge.locale.quiz_8_3_choice,
		gameforge.locale.quiz_8_4_choice,
		gameforge.locale.quiz_8_5_answer
	},
	{
		gameforge.locale.quiz_9_0_question,
		gameforge.locale.quiz_9_1_choice,
		gameforge.locale.quiz_9_2_choice,
		gameforge.locale.quiz_9_3_choice,
		gameforge.locale.quiz_9_4_choice,
		gameforge.locale.quiz_9_5_answer
	},
	{
		gameforge.locale.quiz_10_0_question,
		gameforge.locale.quiz_10_1_choice,
		gameforge.locale.quiz_10_2_choice,
		gameforge.locale.quiz_10_3_choice,
		gameforge.locale.quiz_10_4_choice,
		gameforge.locale.quiz_10_5_answer
	},
	{
		gameforge.locale.quiz_11_0_question,
		gameforge.locale.quiz_11_1_choice,
		gameforge.locale.quiz_11_2_choice,
		gameforge.locale.quiz_11_3_choice,
		gameforge.locale.quiz_11_4_choice,
		gameforge.locale.quiz_11_5_answer
	},
	{
		gameforge.locale.quiz_12_0_question,
		gameforge.locale.quiz_12_1_choice,
		gameforge.locale.quiz_12_2_choice,
		gameforge.locale.quiz_12_3_choice,
		gameforge.locale.quiz_12_4_choice,
		gameforge.locale.quiz_12_5_answer
	},
	{
		gameforge.locale.quiz_13_0_question,
		gameforge.locale.quiz_13_1_choice,
		gameforge.locale.quiz_13_2_choice,
		gameforge.locale.quiz_13_3_choice,
		gameforge.locale.quiz_13_4_choice,
		gameforge.locale.quiz_13_5_answer
	},
	{
		gameforge.locale.quiz_14_0_question,
		gameforge.locale.quiz_14_1_choice,
		gameforge.locale.quiz_14_2_choice,
		gameforge.locale.quiz_14_3_choice,
		gameforge.locale.quiz_14_4_choice,
		gameforge.locale.quiz_14_5_answer
	},
	{
		gameforge.locale.quiz_15_0_question,
		gameforge.locale.quiz_15_1_choice,
		gameforge.locale.quiz_15_2_choice,
		gameforge.locale.quiz_15_3_choice,
		gameforge.locale.quiz_15_4_choice,
		gameforge.locale.quiz_15_5_answer
	},
	{
		gameforge.locale.quiz_16_0_question,
		gameforge.locale.quiz_16_1_choice,
		gameforge.locale.quiz_16_2_choice,
		gameforge.locale.quiz_16_3_choice,
		gameforge.locale.quiz_16_4_choice,
		gameforge.locale.quiz_16_5_answer
	},
	{
		gameforge.locale.quiz_17_0_question,
		gameforge.locale.quiz_17_1_choice,
		gameforge.locale.quiz_17_2_choice,
		gameforge.locale.quiz_17_3_choice,
		gameforge.locale.quiz_17_4_choice,
		gameforge.locale.quiz_17_5_answer
	},
	{
		gameforge.locale.quiz_18_0_question,
		gameforge.locale.quiz_18_1_choice,
		gameforge.locale.quiz_18_2_choice,
		gameforge.locale.quiz_18_3_choice,
		gameforge.locale.quiz_18_4_choice,
		gameforge.locale.quiz_18_5_answer
	},
	{
		gameforge.locale.quiz_19_0_question,
		gameforge.locale.quiz_19_1_choice,
		gameforge.locale.quiz_19_2_choice,
		gameforge.locale.quiz_19_3_choice,
		gameforge.locale.quiz_19_4_choice,
		gameforge.locale.quiz_19_5_answer
	},
	{
		gameforge.locale.quiz_20_0_question,
		gameforge.locale.quiz_20_1_choice,
		gameforge.locale.quiz_20_2_choice,
		gameforge.locale.quiz_20_3_choice,
		gameforge.locale.quiz_20_4_choice,
		gameforge.locale.quiz_20_5_answer
	},
	{
		gameforge.locale.quiz_21_0_question,
		gameforge.locale.quiz_21_1_choice,
		gameforge.locale.quiz_21_2_choice,
		gameforge.locale.quiz_21_3_choice,
		gameforge.locale.quiz_21_4_choice,
		gameforge.locale.quiz_21_5_answer
	},
	{
		gameforge.locale.quiz_22_0_question,
		gameforge.locale.quiz_22_1_choice,
		gameforge.locale.quiz_22_2_choice,
		gameforge.locale.quiz_22_3_choice,
		gameforge.locale.quiz_22_4_choice,
		gameforge.locale.quiz_22_5_answer
	},
	{
		gameforge.locale.quiz_23_0_question,
		gameforge.locale.quiz_23_1_choice,
		gameforge.locale.quiz_23_2_choice,
		gameforge.locale.quiz_23_3_choice,
		gameforge.locale.quiz_23_4_choice,
		gameforge.locale.quiz_23_5_answer
	},
	{
		gameforge.locale.quiz_24_0_question,
		gameforge.locale.quiz_24_1_choice,
		gameforge.locale.quiz_24_2_choice,
		gameforge.locale.quiz_24_3_choice,
		gameforge.locale.quiz_24_4_choice,
		gameforge.locale.quiz_24_5_answer
	},
	{
		gameforge.locale.quiz_25_0_question,
		gameforge.locale.quiz_25_1_choice,
		gameforge.locale.quiz_25_2_choice,
		gameforge.locale.quiz_25_3_choice,
		gameforge.locale.quiz_25_4_choice,
		gameforge.locale.quiz_25_5_answer
	},
	{
		gameforge.locale.quiz_26_0_question,
		gameforge.locale.quiz_26_1_choice,
		gameforge.locale.quiz_26_2_choice,
		gameforge.locale.quiz_26_3_choice,
		gameforge.locale.quiz_26_4_choice,
		gameforge.locale.quiz_26_5_answer
	},
	{
		gameforge.locale.quiz_27_0_question,
		gameforge.locale.quiz_27_1_choice,
		gameforge.locale.quiz_27_2_choice,
		gameforge.locale.quiz_27_3_choice,
		gameforge.locale.quiz_27_4_choice,
		gameforge.locale.quiz_27_5_answer
	},
	{
		gameforge.locale.quiz_28_0_question,
		gameforge.locale.quiz_28_1_choice,
		gameforge.locale.quiz_28_2_choice,
		gameforge.locale.quiz_28_3_choice,
		gameforge.locale.quiz_28_4_choice,
		gameforge.locale.quiz_28_5_answer
	},
	{
		gameforge.locale.quiz_29_0_question,
		gameforge.locale.quiz_29_1_choice,
		gameforge.locale.quiz_29_2_choice,
		gameforge.locale.quiz_29_3_choice,
		gameforge.locale.quiz_29_4_choice,
		gameforge.locale.quiz_29_5_answer
	},
	{
		gameforge.locale.quiz_30_0_question,
		gameforge.locale.quiz_30_1_choice,
		gameforge.locale.quiz_30_2_choice,
		gameforge.locale.quiz_30_3_choice,
		gameforge.locale.quiz_30_4_choice,
		gameforge.locale.quiz_30_5_answer
	},
	{
		gameforge.locale.quiz_31_0_question,
		gameforge.locale.quiz_31_1_choice,
		gameforge.locale.quiz_31_2_choice,
		gameforge.locale.quiz_31_3_choice,
		gameforge.locale.quiz_31_4_choice,
		gameforge.locale.quiz_31_5_answer
	},
	{
		gameforge.locale.quiz_32_0_question,
		gameforge.locale.quiz_32_1_choice,
		gameforge.locale.quiz_32_2_choice,
		gameforge.locale.quiz_32_3_choice,
		gameforge.locale.quiz_32_4_choice,
		gameforge.locale.quiz_32_5_answer
	},
	{
		gameforge.locale.quiz_33_0_question,
		gameforge.locale.quiz_33_1_choice,
		gameforge.locale.quiz_33_2_choice,
		gameforge.locale.quiz_33_3_choice,
		gameforge.locale.quiz_33_4_choice,
		gameforge.locale.quiz_33_5_answer
	},
	{
		gameforge.locale.quiz_34_0_question,
		gameforge.locale.quiz_34_1_choice,
		gameforge.locale.quiz_34_2_choice,
		gameforge.locale.quiz_34_3_choice,
		gameforge.locale.quiz_34_4_choice,
		gameforge.locale.quiz_34_5_answer
	},
	{
		gameforge.locale.quiz_35_0_question,
		gameforge.locale.quiz_35_1_choice,
		gameforge.locale.quiz_35_2_choice,
		gameforge.locale.quiz_35_3_choice,
		gameforge.locale.quiz_35_4_choice,
		gameforge.locale.quiz_35_5_answer
	},
	{
		gameforge.locale.quiz_36_0_question,
		gameforge.locale.quiz_36_1_choice,
		gameforge.locale.quiz_36_2_choice,
		gameforge.locale.quiz_36_3_choice,
		gameforge.locale.quiz_36_4_choice,
		gameforge.locale.quiz_36_5_answer
	},
	{
		gameforge.locale.quiz_37_0_question,
		gameforge.locale.quiz_37_1_choice,
		gameforge.locale.quiz_37_2_choice,
		gameforge.locale.quiz_37_3_choice,
		gameforge.locale.quiz_37_4_choice,
		gameforge.locale.quiz_37_5_answer
	},
	{
		gameforge.locale.quiz_38_0_question,
		gameforge.locale.quiz_38_1_choice,
		gameforge.locale.quiz_38_2_choice,
		gameforge.locale.quiz_38_3_choice,
		gameforge.locale.quiz_38_4_choice,
		gameforge.locale.quiz_38_5_answer
	},
	{
		gameforge.locale.quiz_39_0_question,
		gameforge.locale.quiz_39_1_choice,
		gameforge.locale.quiz_39_2_choice,
		gameforge.locale.quiz_39_3_choice,
		gameforge.locale.quiz_39_4_choice,
		gameforge.locale.quiz_39_5_answer
	},
	{
		gameforge.locale.quiz_40_0_question,
		gameforge.locale.quiz_40_1_choice,
		gameforge.locale.quiz_40_2_choice,
		gameforge.locale.quiz_40_3_choice,
		gameforge.locale.quiz_40_4_choice,
		gameforge.locale.quiz_40_5_answer
	},
	{
		gameforge.locale.quiz_41_0_question,
		gameforge.locale.quiz_41_1_choice,
		gameforge.locale.quiz_41_2_choice,
		gameforge.locale.quiz_41_3_choice,
		gameforge.locale.quiz_41_4_choice,
		gameforge.locale.quiz_41_5_answer
	},
	{
		gameforge.locale.quiz_42_0_question,
		gameforge.locale.quiz_42_1_choice,
		gameforge.locale.quiz_42_2_choice,
		gameforge.locale.quiz_42_3_choice,
		gameforge.locale.quiz_42_4_choice,
		gameforge.locale.quiz_42_5_answer
	},
	{
		gameforge.locale.quiz_43_0_question,
		gameforge.locale.quiz_43_1_choice,
		gameforge.locale.quiz_43_2_choice,
		gameforge.locale.quiz_43_3_choice,
		gameforge.locale.quiz_43_4_choice,
		gameforge.locale.quiz_43_5_answer
	},
	{
		gameforge.locale.quiz_44_0_question,
		gameforge.locale.quiz_44_1_choice,
		gameforge.locale.quiz_44_2_choice,
		gameforge.locale.quiz_44_3_choice,
		gameforge.locale.quiz_44_4_choice,
		gameforge.locale.quiz_44_5_answer
	},
	{
		gameforge.locale.quiz_45_0_question,
		gameforge.locale.quiz_45_1_choice,
		gameforge.locale.quiz_45_2_choice,
		gameforge.locale.quiz_45_3_choice,
		gameforge.locale.quiz_45_4_choice,
		gameforge.locale.quiz_45_5_answer
	},
	{
		gameforge.locale.quiz_46_0_question,
		gameforge.locale.quiz_46_1_choice,
		gameforge.locale.quiz_46_2_choice,
		gameforge.locale.quiz_46_3_choice,
		gameforge.locale.quiz_46_4_choice,
		gameforge.locale.quiz_46_5_answer
	},
	{
		gameforge.locale.quiz_47_0_question,
		gameforge.locale.quiz_47_1_choice,
		gameforge.locale.quiz_47_2_choice,
		gameforge.locale.quiz_47_3_choice,
		gameforge.locale.quiz_47_4_choice,
		gameforge.locale.quiz_47_5_answer
	},
	{
		gameforge.locale.quiz_48_0_question,
		gameforge.locale.quiz_48_1_choice,
		gameforge.locale.quiz_48_2_choice,
		gameforge.locale.quiz_48_3_choice,
		gameforge.locale.quiz_48_4_choice,
		gameforge.locale.quiz_48_5_answer
	},
	{
		gameforge.locale.quiz_49_0_question,
		gameforge.locale.quiz_49_1_choice,
		gameforge.locale.quiz_49_2_choice,
		gameforge.locale.quiz_49_3_choice,
		gameforge.locale.quiz_49_4_choice,
		gameforge.locale.quiz_49_5_answer
	},
	{
		gameforge.locale.quiz_50_0_question,
		gameforge.locale.quiz_50_1_choice,
		gameforge.locale.quiz_50_2_choice,
		gameforge.locale.quiz_50_3_choice,
		gameforge.locale.quiz_50_4_choice,
		gameforge.locale.quiz_50_5_answer
	},
	{
		gameforge.locale.quiz_51_0_question,
		gameforge.locale.quiz_51_1_choice,
		gameforge.locale.quiz_51_2_choice,
		gameforge.locale.quiz_51_3_choice,
		gameforge.locale.quiz_51_4_choice,
		gameforge.locale.quiz_51_5_answer
	},
	{
		gameforge.locale.quiz_52_0_question,
		gameforge.locale.quiz_52_1_choice,
		gameforge.locale.quiz_52_2_choice,
		gameforge.locale.quiz_52_3_choice,
		gameforge.locale.quiz_52_4_choice,
		gameforge.locale.quiz_52_5_answer
	},
	{
		gameforge.locale.quiz_53_0_question,
		gameforge.locale.quiz_53_1_choice,
		gameforge.locale.quiz_53_2_choice,
		gameforge.locale.quiz_53_3_choice,
		gameforge.locale.quiz_53_4_choice,
		gameforge.locale.quiz_53_5_answer
	},
	{
		gameforge.locale.quiz_54_0_question,
		gameforge.locale.quiz_54_1_choice,
		gameforge.locale.quiz_54_2_choice,
		gameforge.locale.quiz_54_3_choice,
		gameforge.locale.quiz_54_4_choice,
		gameforge.locale.quiz_54_5_answer
	},
	{
		gameforge.locale.quiz_55_0_question,
		gameforge.locale.quiz_55_1_choice,
		gameforge.locale.quiz_55_2_choice,
		gameforge.locale.quiz_55_3_choice,
		gameforge.locale.quiz_55_4_choice,
		gameforge.locale.quiz_55_5_answer
	},
	{
		gameforge.locale.quiz_56_0_question,
		gameforge.locale.quiz_56_1_choice,
		gameforge.locale.quiz_56_2_choice,
		gameforge.locale.quiz_56_3_choice,
		gameforge.locale.quiz_56_4_choice,
		gameforge.locale.quiz_56_5_answer
	},
	{
		gameforge.locale.quiz_57_0_question,
		gameforge.locale.quiz_57_1_choice,
		gameforge.locale.quiz_57_2_choice,
		gameforge.locale.quiz_57_3_choice,
		gameforge.locale.quiz_57_4_choice,
		gameforge.locale.quiz_57_5_answer
	},
	{
		gameforge.locale.quiz_58_0_question,
		gameforge.locale.quiz_58_1_choice,
		gameforge.locale.quiz_58_2_choice,
		gameforge.locale.quiz_58_3_choice,
		gameforge.locale.quiz_58_4_choice,
		gameforge.locale.quiz_58_5_answer
	},
	{
		gameforge.locale.quiz_59_0_question,
		gameforge.locale.quiz_59_1_choice,
		gameforge.locale.quiz_59_2_choice,
		gameforge.locale.quiz_59_3_choice,
		gameforge.locale.quiz_59_4_choice,
		gameforge.locale.quiz_59_5_answer
	},
	{
		gameforge.locale.quiz_60_0_question,
		gameforge.locale.quiz_60_1_choice,
		gameforge.locale.quiz_60_2_choice,
		gameforge.locale.quiz_60_3_choice,
		gameforge.locale.quiz_60_4_choice,
		gameforge.locale.quiz_60_5_answer
	},
	{
		gameforge.locale.quiz_61_0_question,
		gameforge.locale.quiz_61_1_choice,
		gameforge.locale.quiz_61_2_choice,
		gameforge.locale.quiz_61_3_choice,
		gameforge.locale.quiz_61_4_choice,
		gameforge.locale.quiz_61_5_answer
	},
	{
		gameforge.locale.quiz_62_0_question,
		gameforge.locale.quiz_62_1_choice,
		gameforge.locale.quiz_62_2_choice,
		gameforge.locale.quiz_62_3_choice,
		gameforge.locale.quiz_62_4_choice,
		gameforge.locale.quiz_62_5_answer
	},
	{
		gameforge.locale.quiz_63_0_question,
		gameforge.locale.quiz_63_1_choice,
		gameforge.locale.quiz_63_2_choice,
		gameforge.locale.quiz_63_3_choice,
		gameforge.locale.quiz_63_4_choice,
		gameforge.locale.quiz_63_5_answer
	},
	{
		gameforge.locale.quiz_64_0_question,
		gameforge.locale.quiz_64_1_choice,
		gameforge.locale.quiz_64_2_choice,
		gameforge.locale.quiz_64_3_choice,
		gameforge.locale.quiz_64_4_choice,
		gameforge.locale.quiz_64_5_answer
	},
	{
		gameforge.locale.quiz_65_0_question,
		gameforge.locale.quiz_65_1_choice,
		gameforge.locale.quiz_65_2_choice,
		gameforge.locale.quiz_65_3_choice,
		gameforge.locale.quiz_65_4_choice,
		gameforge.locale.quiz_65_5_answer
	},
	{
		gameforge.locale.quiz_66_0_question,
		gameforge.locale.quiz_66_1_choice,
		gameforge.locale.quiz_66_2_choice,
		gameforge.locale.quiz_66_3_choice,
		gameforge.locale.quiz_66_4_choice,
		gameforge.locale.quiz_66_5_answer
	},
	{
		gameforge.locale.quiz_67_0_question,
		gameforge.locale.quiz_67_1_choice,
		gameforge.locale.quiz_67_2_choice,
		gameforge.locale.quiz_67_3_choice,
		gameforge.locale.quiz_67_4_choice,
		gameforge.locale.quiz_67_5_answer
	},
	{
		gameforge.locale.quiz_68_0_question,
		gameforge.locale.quiz_68_1_choice,
		gameforge.locale.quiz_68_2_choice,
		gameforge.locale.quiz_68_3_choice,
		gameforge.locale.quiz_68_4_choice,
		gameforge.locale.quiz_68_5_answer
	},
	{
		gameforge.locale.quiz_69_0_question,
		gameforge.locale.quiz_69_1_choice,
		gameforge.locale.quiz_69_2_choice,
		gameforge.locale.quiz_69_3_choice,
		gameforge.locale.quiz_69_4_choice,
		gameforge.locale.quiz_69_5_answer
	},
	{
		gameforge.locale.quiz_70_0_question,
		gameforge.locale.quiz_70_1_choice,
		gameforge.locale.quiz_70_2_choice,
		gameforge.locale.quiz_70_3_choice,
		gameforge.locale.quiz_70_4_choice,
		gameforge.locale.quiz_70_5_answer
	},
	{
		gameforge.locale.quiz_71_0_question,
		gameforge.locale.quiz_71_1_choice,
		gameforge.locale.quiz_71_2_choice,
		gameforge.locale.quiz_71_3_choice,
		gameforge.locale.quiz_71_4_choice,
		gameforge.locale.quiz_71_5_answer
	},
}

locale.GM_SKILL_NAME_DICT = {
	[1] = gameforge.locale.gm_skill_name_1,
	[2] = gameforge.locale.gm_skill_name_2,
	[3] = gameforge.locale.gm_skill_name_3,
	[4] = gameforge.locale.gm_skill_name_4,
	[5] = gameforge.locale.gm_skill_name_5,
	[16] = gameforge.locale.gm_skill_name_6,
	[17] = gameforge.locale.gm_skill_name_7,
	[18] = gameforge.locale.gm_skill_name_8,
	[19] = gameforge.locale.gm_skill_name_9,
	[20] = gameforge.locale.gm_skill_name_10,
	[31] = gameforge.locale.gm_skill_name_11,
	[32] = gameforge.locale.gm_skill_name_12,
	[33] = gameforge.locale.gm_skill_name_13,
	[34] = gameforge.locale.gm_skill_name_14,
	[35] = gameforge.locale.gm_skill_name_15,
	[46] = gameforge.locale.gm_skill_name_16,
	[47] = gameforge.locale.gm_skill_name_17,
	[48] = gameforge.locale.gm_skill_name_18,
	[49] = gameforge.locale.gm_skill_name_19,
	[50] = gameforge.locale.gm_skill_name_20,
	[61] = gameforge.locale.gm_skill_name_21,
	[62] = gameforge.locale.gm_skill_name_22,
	[63] = gameforge.locale.gm_skill_name_23,
	[64] = gameforge.locale.gm_skill_name_24,
	[65] = gameforge.locale.gm_skill_name_25,
	[66] = gameforge.locale.gm_skill_name_26,
	[76] = gameforge.locale.gm_skill_name_27,
	[77] = gameforge.locale.gm_skill_name_28,
	[78] = gameforge.locale.gm_skill_name_29,
	[79] = gameforge.locale.gm_skill_name_30,
	[80] = gameforge.locale.gm_skill_name_31,
	[81] = gameforge.locale.gm_skill_name_32,
	[91] = gameforge.locale.gm_skill_name_33,
	[92] = gameforge.locale.gm_skill_name_34,
	[93] = gameforge.locale.gm_skill_name_35,
	[94] = gameforge.locale.gm_skill_name_36,
	[95] = gameforge.locale.gm_skill_name_37,
	[96] = gameforge.locale.gm_skill_name_38,
	[106] = gameforge.locale.gm_skill_name_39,
	[107] = gameforge.locale.gm_skill_name_40,
	[108] = gameforge.locale.gm_skill_name_41,
	[109] = gameforge.locale.gm_skill_name_42,
	[110] = gameforge.locale.gm_skill_name_43,
	[111] = gameforge.locale.gm_skill_name_44,
}
locale.dungeon = {}
locale.dungeon.time_limit_party = "A party member has left due to the dungeon timeout."
locale.dungeon.time_limit = "You left due to the dungeon time limit expired."
locale.dungeon.no_ticket_party = "At least one player does not have a Passage[ENTER]Ticket."
locale.dungeon.no_ticket = "You left because you don't have a ticket."
locale.dungeon.level_limit_party ="A party member has left due to the minimum level limit of %dLv."
locale.dungeon.level_limit = "WARNING! To be able to enter Nemere's Watchtower,[ENTER]each member of the group must have reached level[ENTER]100. The following players have currently NOT[ENTER]reached this level: %dLv."
locale.dungeon.leader_can_go = "Only the leader of the group can request entry."
locale.dungeon.enter_yes = "Enter"
locale.dungeon.enter_no = "No"
locale.dungeon.leader_can_enter = "Only the leader of the group can request entry. "
locale.dungeon.party_can_enter = "You must be with your party to enter this dungeon."

locale.flame_dungeon = {}
locale.flame_dungeon.say_1 = "Yamacheon yeomwang eine Position zu bestrafen sicher?"
locale.flame_dungeon.say_2 = "Position"
locale.flame_dungeon.say_3 = "schließen"
locale.flame_dungeon.say_4 = "Partei Kapitel 103Lv nicht füllen Sie alle Quests, sind weitere Fortschritte nicht möglich."
locale.flame_dungeon.say_5 = "Das Dungeon-Party sosokwon nicht verstrichene Zeit ist begrenzt, da die Position wurde vom Platz gestellt."
locale.flame_dungeon.say_6 = "Dungeon Position Grenzen wurden ausgeschaltet, weil die Zeit noch nicht abgelaufen ist, geschickt."
locale.flame_dungeon.say_7 = "Diese Stelle kann nicht sosokwon Partei Zertifizierung wurde abgeschickt."
locale.flame_dungeon.say_8 = "Verhandelbar Zertifikate wurden nicht abgeschickt."
locale.flame_dungeon.say_9 = "Sosokwon beiden Parteien nicht erreichen 100lv geschickt wurde."
locale.flame_dungeon.say_10 = "Noch nicht erreicht wurde, beenden 100lv."
locale.flame_dungeon.say_11 = "Jeokryong Schloss"
locale.flame_dungeon.say_12 = "Wollen Sie zum Schloss wirklich jeokryong gehen?"
locale.flame_dungeon.say_13 = "Gib"
locale.flame_dungeon.say_14 = "Geben Sie nicht."
locale.flame_dungeon.say_15 = "Der Führer der Partei, kann aber für die Zulassung beantragen."
locale.flame_dungeon.say_16 = "Das Verlies Eingang ist eine Partei an den Staat."
locale.flame_dungeon.say_17 = "Sowohl die Verweilzeit abgelaufen ist, wird der Eintrag jeokryong gehen aus der Stadt."
locale.flame_dungeon.say_18 = "Retentionszeit jeokryong sex position %d Minuten."
locale.flame_dungeon.say_19 = "Alle Sex-Stellungen jeokryong Verweilzeit abgelaufen."
locale.flame_dungeon.say_20 = "Jeokryong wird aus der Stadt etwa 10 Sekunden bewegt."
locale.flame_dungeon.say_21 = "Jeokryong Geschlecht Verhalten."
locale.flame_dungeon.say_22 = "Der Führer der Partei, aber Sie können gehen."
locale.flame_dungeon.say_23 = "Jeokryong daegeon ausgeschaltet ist."
locale.flame_dungeon.say_24 = "Jeokryong sex position wird 1 Stunde, vollständig oder in Entwicklung während jeokryong Stern wurde 30 Minuten gesendet aufrechterhalten werden, wenn die Position ist begrenzt."
locale.flame_dungeon.say_25 = "Jeokryong Stunde Sex-Stellungen zu halten überlassen."
locale.flame_dungeon.say_26 = "Daegeon jeokryong ausgeschaltet ist, einen Platz zum alles Böse zu besiegen."
locale.flame_dungeon.say_27 = "Alles Böse wird nicht besiegt noch."
locale.flame_dungeon.say_28 = "Tötet die restlichen: "
locale.flame_dungeon.say_29 = "Daegeon jeokryong ausgeschaltet ist, um einen Platz für alle entsiegeln finden."
locale.flame_dungeon.say_30 = "Erforderlich, um die bösen Zähne erhalten lassen, wenn die Behandlung ist möglich."
locale.flame_dungeon.say_31 = "Jean Ritzel Dichtung kann nur off ausgeschaltet werden."
locale.flame_dungeon.say_32 = "Daegeon jeokryong freigegeben wird, um herauszufinden, wo die geheimnisvolle Jean Verliehen Incinerator."
locale.flame_dungeon.say_33 = "Jin lebt Incinerator Bars, jeokryong sex Dichtung ist fest."
locale.flame_dungeon.say_34 = "Verliehen Jean Incinerator finden Bars."
locale.flame_dungeon.say_35 = "Daegeon jeokryong freigegeben worden, um herauszufinden, wo man entsiegeln."
locale.flame_dungeon.say_36 = "Sealing Stone Church an der Wende jeokryong Böse erhalten wird."
locale.flame_dungeon.say_37 = "Sealing Stein wurde nicht beide entlassen."
locale.flame_dungeon.say_38 = "Jeokryong daegeon Di hearthstone ausgeschaltet ist, einen Ort zu zerstören finden."
locale.flame_dungeon.say_39 = "Ich glaube nicht, Ruhestein Di zerstört werden, einer nach dem anderen, und sie sind böse."
locale.flame_dungeon.say_40 = "Di zu finden und zerstören den Ruhestein."
locale.flame_dungeon.say_41 = "Halten yamacheon Beat"
locale.flame_dungeon.say_42 = "Alle Monster besiegt wurden."
locale.flame_dungeon.say_43 = "Jeokryong Verhältnis im Laufe des nächsten jeokryong daegeon freizugeben."
locale.flame_dungeon.say_44 = "Beide wurden abgeriegelt."
locale.flame_dungeon.say_45 = "Der eigentliche Schlüssel ist nicht"
locale.flame_dungeon.say_46 = "Bullion wurde von Jin Incinerator besiegt."
locale.flame_dungeon.say_47 = "Bitte zerlegen Sie das zweite Verzauberung"
locale.flame_dungeon.say_48 = "Bitte bauen Sie die dritte Chains."
locale.flame_dungeon.say_49 = "Falsche Reihenfolge."
locale.flame_dungeon.say_50 = "Bitte bauen Sie die vierte Chains."
locale.flame_dungeon.say_51 = "Ketten von vier oder fünf ersten Besuch demontieren."
locale.flame_dungeon.say_52 = "Ketten von vier oder fünf ersten Besuch demontieren."
locale.flame_dungeon.say_53 = "Ketten von vier oder fünf ersten Besuch demontieren."
locale.flame_dungeon.say_54 = "Di hearthstone besiegt wurde."
locale.flame_dungeon.say_55 = "Yeomwang yamacheon besiegt wurde."
locale.flame_dungeon.say_56 = "Sind aus der Stadt nach einer Minute jeokryong bewegt."
locale.flame_dungeon.say_57 = "Parteien nicht erreichen Kapitel 104Lv weitere Fortschritte ist nicht möglich."
locale.flame_dungeon.say_58 = "Partei kann nicht weiter vorgehen Behinderung verschwinden [ENTER]"
locale.flame_dungeon.say_59 = "Re-entry Zeit ist mehr als fünf Minuten ist nicht erlaubt. [ENTER]"
locale.flame_dungeon.say_60 = "Partei nicht mit Dungeon hayeotgeona starten."

locale.main_quest_flame_lv99	= {}					
locale.main_quest_flame_lv99.say_1	= "Resuming the pursuit"
locale.main_quest_flame_lv99.say_2	= "Yakhwan(20377) is looking for you urgently.Please listen to  Yakhwan(20377) for details."
locale.main_quest_flame_lv99.say_3	= "Welcome. You did good job on preventing Choma gang's dark magic last time. But I think they wouldn't just go away like this. So I've been using all my resources to track them down. "
locale.main_quest_flame_lv99.say_4	= "I see. So you've found something since you called me?"
locale.main_quest_flame_lv99.say_5	= "Yes. But I only have suspicion. Haven't confirmed with my own two eyes. This is where I need your help."
locale.main_quest_flame_lv99.say_6	= "Recently I get info that there is something going on at Doyyumhwaji area. so I sent my guy there. And he hasn't come back since even though he is an expert warrior.  Most of monsters in Doyyumhwaji couldn't hurt him. I think something might have happened to him.  Please head to Doyyumhwaji and find out what really happened. if you happen to find him, please tell him to come back immediately."
locale.main_quest_flame_lv99.say_7	= "Yes, I will."
locale.main_quest_flame_lv99.say_8	= "I've communicated with him through the carrier pigeon before he disappeared, you can start from the place I marked on the map where I think he might be. Please be careful."
locale.main_quest_flame_lv99.say_9	= "Yakhwan(20377) marked on Doyyumhwaji map.  Coordinate is (%d,%d),"
locale.main_quest_flame_lv99.say_10	= "Scout Doyyumhwaji!"
locale.main_quest_flame_lv99.say_11	= "Scout the place  Yakhwan(20377) marked."
locale.main_quest_flame_lv99.say_12	= "There must be something where I told you to go. Are you sure you've checked everywhere? .Please be hurry since it's emergency matter."
locale.main_quest_flame_lv99.say_13	= " You have arrived where Yakhwan(20377) marked. Please return to Yakhwan(20377) and report."
locale.main_quest_flame_lv99.say_14	= "Please listen to  Yakhwan(20377) for details."
locale.main_quest_flame_lv99.say_15	= "Oh! You've come back, Have you found anything?"
locale.main_quest_flame_lv99.say_16	= "I went to the place you marked on the map, but I couldn't find anything about your man's whereabouts. After I scout the place, I've found a spooky looking cave with monsters howling echoes."
locale.main_quest_flame_lv99.say_17	= "I see. Something feels very uncomfortable. Please investigate further on the place  you just mentioned and report back to me."
locale.main_quest_flame_lv99.say_18	= "Investigation 1-1"
locale.main_quest_flame_lv99.say_19	= " I still haven't gathered any information about the cave you've told me  although I tried my best. Now I urgently need help from the scholar(20380).  I will give you this letter, please deliver this to the Scholar(20380). The scholar(20380) will help you once he sees the letter."
locale.main_quest_flame_lv99.say_20	= "Talk to  Scholar(20380) from Evil dragon islands."
locale.main_quest_flame_lv99.say_21	= "(Murmuring)Oh, you always startle me... You should have notice me when you arrived!  So..what brought you here?"
locale.main_quest_flame_lv99.say_22	= " Yakhwan(20377) sent you this letter."
locale.main_quest_flame_lv99.say_23	= " Umm¡¦ I guess I know what Yakhwan(20377) is worried about after I read this letter. Please help me to clarify some facts."
locale.main_quest_flame_lv99.say_24	= " I need you to investigate the cave you scouted.  Start from the surroundings first. Just to be safe.  I suspect that the howling you heard from the cave would have effected on the monsters. Take this paper and wrap it around to attack the monsters.  It will become black when you defeat the monster with high dark energy."
locale.main_quest_flame_lv99.say_25	= "Defeat all the monsters around the cave that you reported to Yakhwan(20377)"
locale.main_quest_flame_lv99.say_26	= "Defeat all the monsters around the cave"
locale.main_quest_flame_lv99.say_27	= "Defeat all the monsters around the cave that you reported to Yakhwan(20377)"
locale.main_quest_flame_lv99.say_28	= " Hmm.. Must have been affected by dark energy... Are you sure you checked properly?  Please go again."
locale.main_quest_flame_lv99.say_29	= " The paper Scholar(20380) gave became black. Return it to Scholar(20380)."
locale.main_quest_flame_lv99.say_30	= "You have come back. Hmm..there are monsters with dark energy as I suspected. Please go back and have some rest while I research on the dark energy absorbed into this paper."
locale.main_quest_flame_lv99.say_31	= "Investigation 1-2"
locale.main_quest_flame_lv99.say_32	= "Scholar(20380) is looking for you urgently.  Please listen to Scholar(20380) for details."
locale.main_quest_flame_lv99.say_33	= "Welcome. I was researching on the dark energy paper.  I needed to burn incense to stay awake from the dark energy.  However I have ran out of the herb for the incense for the research."
locale.main_quest_flame_lv99.say_34	= " I see. I will get the herbs to help you."
locale.main_quest_flame_lv99.say_35	= " Haha You are very smart as always... The herb is very important to suppress the dark energy.  It grows naturally where there is full of solar energy.  The place is at the edge of Doyyumhwaji.  You can follow this map.  I hope my memory is still correct after all these years."
locale.main_quest_flame_lv99.say_36	= "Yes, I will.  I will leave now."
locale.main_quest_flame_lv99.say_37	= "Find the herd from the place Scholar(20380) marked on the map."
locale.main_quest_flame_lv99.say_38	= "Found the solar herb "
locale.main_quest_flame_lv99.say_39	= "Find the herd from the place Scholar(20380) marked on the map."
locale.main_quest_flame_lv99.say_40	= "Hey...  How come you are empty handed?  Without Solar herb(31076), it's very hard to continue this investigation.  Please try again."
locale.main_quest_flame_lv99.say_41	= ". Found the solar herb  Scholar(20380) mentioned. Give it to  Scholar(20380)."
locale.main_quest_flame_lv99.say_42	= "Yes, This is the herb.  Now I can finish what I started.  I will let Yakhwan(20377) know once the investigation is over."
locale.main_quest_flame_lv100	= {}
locale.main_quest_flame_lv100.say_1	= "Secret of blurry aura"
locale.main_quest_flame_lv100.say_2	= "Yakhwan(20377) is looking for you urgently.  Please listen to Yakhwan(20377) for details."
locale.main_quest_flame_lv100.say_3	= "Welcome.  The investigation went well with your help for the scholar. I will let you know the result of the investigation."
locale.main_quest_flame_lv100.say_4	= " According the scholar, The monsters around the cave you found were changed by some sort of energy.  If they are exposed to that energy continuously, they will be mutated stronger and more aggressive.  We have to stop this dark energy spreading to prevent further damage."
locale.main_quest_flame_lv100.say_5	= "What should I do to prevent spreading of dark energy?"
locale.main_quest_flame_lv100.say_6	= "I have discussed with the alchemist(20001) about how to prevent the dark energy.  The alchemist(20001) is working on the solution, meanwhile please defeat all the monsters around that area.  You will need to kill at least 300 monsters around the cave. "
locale.main_quest_flame_lv100.say_7	= "Ok. I will leave now."
locale.main_quest_flame_lv100.say_8	= "Thank you. Please bring me a good news."
locale.main_quest_flame_lv100.say_9	= "Defeat the monsters where Yakhwan(20377) investigated."
locale.main_quest_flame_lv100.say_10	= "Defeat all the monsters in Doyyumhwaji"
locale.main_quest_flame_lv100.say_11	= "Defeat all the monsters where Yakhwan(20377) investigated."
locale.main_quest_flame_lv100.say_12	= "Are you sure you have defeated enough monsters?  From what I heard, it's not enough yet.  Please go back and eliminate them."
locale.main_quest_flame_lv100.say_13	= "Killed enough monsters in the area. Report back to Yakhwan(20377)"
locale.main_quest_flame_lv100.say_14	= "Talk to Yakhwan(20377) from Evil dragon islands."
locale.main_quest_flame_lv100.say_15	= " Hmm.. It looks like enough.  Please have some rest while I talk to the alchemist(20001) that you have defeated the monsters in the area."
locale.main_quest_flame_lv100.say_16	= "Restraining blurry aura1-1"
locale.main_quest_flame_lv100.say_17	= "The alchemist(20001) is looking for you urgently.  Please listen to the the alchemist(20001) for details."
locale.main_quest_flame_lv100.say_18	= "No...  I have told Yakhwan(20377) to act carefully, He made it worse...  The dark energy spreads further when the monster is dying. And we have killed 300 monsters."
locale.main_quest_flame_lv100.say_19	= "Now the situation got worse.  And I'm running out of upgrade medicine(31084) to suppress the dark energy.  You can apply this to your weapon to prevent the dark energy.  Now I need you to get me more ingredient since it ran out."
locale.main_quest_flame_lv100.say_20	= "Yes, I will. What are the ingredients you need?"
locale.main_quest_flame_lv100.say_21	= "I doubt you can find them well...  Those are so rare to find...  But I will tell you first!  To make upgrade medicine, We need 10 cornerstone(90010), 50 Bear gall(30010),10  Venom sac of spider(30025) and 200 talc(51001), High level warrior like you will know where to find those. So I won't bother to tell you the location."
locale.main_quest_flame_lv100.say_22	= "Those are indeed rare items. I will start searching now."
locale.main_quest_flame_lv100.say_23	= "Ok. Please be hurry. The dark energy is spreading as we are talking now."
locale.main_quest_flame_lv100.say_24	= "Collect the ingredients for Upgrade medicine."
locale.main_quest_flame_lv100.say_25	= "Remaining items"
locale.main_quest_flame_lv100.say_26	= "Collect the ingredients that the alchemist(20001) listed."
locale.main_quest_flame_lv100.say_27	= "Complete upgrade medicine by helping the alchemist(20001)."
locale.main_quest_flame_lv100.say_28	= " Oh..It must not been easy to collect all of them!  But you made it!  I will notice you when I finish making upgrade medicine(31084)."
locale.main_quest_flame_lv100.say_29	= "Hey, Do you think I'm blind who can¡¯t count numbers?  Please find all the ingredients fast.  The dark energy is epidemic!"
locale.main_quest_flame_lv100.say_30	= "Gathered all the ingredients for upgrade medicine. Send them to the alchemist(20001)."
locale.main_quest_flame_lv100.say_31	= "Talk to  The alchemist(20001) from Evil dragon islands."
locale.main_quest_flame_lv100.say_32	= "Restraining blurry aura 1-2"
locale.main_quest_flame_lv100.say_33	= "Gosh...  I grumbled to the blacksmith last time I made the medicine, now he won't grind cornerstone(90010) into powder...  We need cornerstone(90010) in powder form to mix with other ingredients in order to complete the medicine.  I don't want to go there and apologize, so could you bring this basket and make cornerstone(90010) into powder?"
locale.main_quest_flame_lv100.say_34	= "What have you done to him..?  Ok.. Well.. Just give me the basket and the cornerstone(90010) please."
locale.main_quest_flame_lv100.say_35	= "Thank you. I will wait here."
locale.main_quest_flame_lv100.say_36	= "Visit the blacksmith"
locale.main_quest_flame_lv100.say_37	= "Get the cornerstone powder from Blacksmith(20016)"
locale.main_quest_flame_lv100.say_38	= "Cornerstone powder(31077): 1"
locale.main_quest_flame_lv100.say_39	= "Ohh.. What brings you here, great warrior? Would you like to buy some high quality armour and weapon??"
locale.main_quest_flame_lv100.say_40	= " The alchemist(20001) told me the whole story.  I came to seek for your help.  The alchemist(20001) sent this food basket to apologize about last time."
locale.main_quest_flame_lv100.say_41	= "Hmm.. I really don't want to do it...  But the great warrior brought the basket and apologized¡¦ I will grind the cornerstone for you.  Please wait a moment."
locale.main_quest_flame_lv100.say_42	= "Thank you very much.[ENTER]"
locale.main_quest_flame_lv100.say_43	= "You still have cornerstone(90010) and the basket in your hands...  Please go to him."
locale.main_quest_flame_lv100.say_44	= "Send the cornerstone powder to the alchemist(20001)."
locale.main_quest_flame_lv100.say_45	= "Oh.. The blacksmith must have accepted my apology.  I should control my temper from now on...  You can hand me the cornerstone(90010) powder and rest.  I will let you know when the medicine is ready."
locale.main_quest_flame_lv101	= {}
locale.main_quest_flame_lv101.say_1	= "Secret of cave"
locale.main_quest_flame_lv101.say_2	= "Yakhwan(20377) is looking for you urgently.  Please listen to Yakhwan(20377) for details."
locale.main_quest_flame_lv101.say_3	= " Welcome.  I heard from the alchemist about your hard effort.  I shouldn't have asked you to kill those monsters before.  I'm so sorry about that."
locale.main_quest_flame_lv101.say_4	= "I will cut the chase since it's urgent matter.  I have received upgrade medicine from the alchemist. If you apply the medicine on your weapon, it can help to suppress the dark energy."
locale.main_quest_flame_lv101.say_5	= "Ok.. Enough with the explanation of the medicine, I will tell you what I need you to do.  Now we have weapons ready, we can explore more on the cave we've discovered.  I think we can get some clue when we march into that cave and kill some monsters.  Please explore the cave for me."
locale.main_quest_flame_lv101.say_6	= "Oh, If you happen to find my servant, please tell him to come back in one piece.  According to the wanderer merchant, he might have ran into that cave as well."
locale.main_quest_flame_lv101.say_7	= "OK, I will leave now."
locale.main_quest_flame_lv101.say_8	= "Thank you. Please bring me good news."
locale.main_quest_flame_lv101.say_9	= "Kill monsters in the cave and search for the clue and Yakhwan(20377)'s servant."
locale.main_quest_flame_lv101.say_10	= "Defeat the monsters in Doyyumhwaji!"
locale.main_quest_flame_lv101.say_11	= "Kill monsters around the place you investigated with Yakhwan(20377)."
locale.main_quest_flame_lv101.say_12	= "¡?ou need more than one player to enter the dungeon   Make a party and enter. ¡?ungeon pass can not be re-issued."
locale.main_quest_flame_lv101.say_13	= "Look, I asked you to do those for reason.  I'm sure you can find a clue and whereabouts of my servant.  Please hurry."
locale.main_quest_flame_lv101.say_14	= "You found servant's dead body. Send the letter you found at his belt to Yakhwan(20377)."
locale.main_quest_flame_lv101.say_15	= "Found whereabouts of  Yakhwan(20377)'s servant(20393)."
locale.main_quest_flame_lv101.say_16	= "Have you found my servant?"
locale.main_quest_flame_lv101.say_17	= "..Sadly..He was already dead when I found him..  Take a look at this letter I found on him."
locale.main_quest_flame_lv101.say_18	= "I will read it later.  Looks like you haven't found any clue yet. Please go back and look for clues."
locale.main_quest_flame_lv101.say_19	= "Found a clue that Yakhwan(20377) mentioned."
locale.main_quest_flame_lv101.say_20	= "Hmm.. As I thought, there is a clue.  But you still haven't found my servant's whereabouts. He must be somewhere in the cave. Please go back and find him."
locale.main_quest_flame_lv101.say_21	= "Found a clue that Yakhwan(20377) mentioned and whereabouts of the servant(20393). Go to Yakhwan(20377) and report."
locale.main_quest_flame_lv101.say_22	= "Talk to Yakhwan(20377) from Evil dragon islands."
locale.main_quest_flame_lv101.say_23	= "Oh... You've come back.  Seems like you've got the clue, and what is that in your hand?"
locale.main_quest_flame_lv101.say_24	= "Ah¡¦I found this in your servant's dead body.  When I found him, he was already dead..."
locale.main_quest_flame_lv101.say_25	= "I see¡¦ he was such a good man.. I will read the letter and then burn some incense for his soul.  Let's see what we have here."
locale.main_quest_flame_lv101.say_26	= " Yakhwan(20377)'s servant:"
locale.main_quest_flame_lv101.say_27	= "If you happen to find this letter, please send this to master Yakhwan(20377) in evil dragon islands...  (Omit) Dear master Yakhwan(20377). I was looking into monsters in Doyyumhwaji. I found a cave and went in. but couldn't make it out. so I'm leaving this letter instead.  (Omit) Inside of the cave had stronger dark energy than outside of the cave. and it is protecting something.  Howling sound gets louder as you go deeper inside the cave.  I'm sure there is something going on, so if you see this letter, please send someone to investigate.  I'm so sorry that I couldn't complete your mission."
locale.main_quest_flame_lv101.say_28	= "He was so loyal¡¦ I got tear in my eyes..  Now it's obvious that the cave is dangerous, we must investigate the cave.  I have this Choma gang's plate as you saw it last time.  I will send this to scholar(20380). Please go to scholar(20380) if he looks for you."
locale.main_quest_flame_lv101.say_29	= "Servant of the Darkness's plate deciphering"
locale.main_quest_flame_lv101.say_30	= "Scholar(20380) is looking for you urgently.  Please listen to Scholar(20380) for details."
locale.main_quest_flame_lv101.say_31	= "Welcome.  I've been waiting for you.  I was so surprised when I saw the plate Yakhwan(20377) sent me.  I might be able to figure out what is happening in that cave if I could decipher this plate according to what Yakhwan(20377) told me.  Please help me to decipher this plate."
locale.main_quest_flame_lv101.say_32	= "Of course I will help whatever I can."
locale.main_quest_flame_lv101.say_33	= "That's the spirit, young man.  After I examined the plate very carefully, I concluded that this plate is written in ancient letters.  I wish I could read it right away, but the letters been damaged from the battle.  To restore the plate, I need blood that burns hotter the flame.  In other words,  Blood of flame lord(31080) is what is need.  I will give you this chest to put Blood of flame lord(31080) after you defeat Flame lord(2206)."
locale.main_quest_flame_lv101.say_34	= "OK. I will do that."
locale.main_quest_flame_lv101.say_35	= "Once you get it, you have to come back immediately. Even the chest can not hold Blood of flame lord(31080) that long."
locale.main_quest_flame_lv101.say_36	= "Get the Blood of flame lord(31080) after defeat  Flame lord(2206) in Doyyumhwaji"
locale.main_quest_flame_lv101.say_37	= "You don't want to decipher the plate?  Please go back there and get Blood of flame lord(31080)."
locale.main_quest_flame_lv101.say_38	= " Obtained Blood of flame lord(31080. Go back to scholar(20380)."
locale.main_quest_flame_lv101.say_39	= "Talk to Scholar(20380) from Evil dragon islands."
locale.main_quest_flame_lv101.say_40	= "Hmm.. This is Blood of flame lord(31080).  I will take some time to restore it. Please come back tomorrow.  I wish I could it faster, but that is fastest way I know."
locale.main_quest_flame_lv101.say_41	= "remaining  time : %d H %d M"
locale.main_quest_flame_lv101.say_42	= "It's not the time yet.  Please come back later."
locale.main_quest_flame_lv101.say_43	= "Truth of the plate"
locale.main_quest_flame_lv101.say_44	= "You've come.  The plate has been deciphered. I was reading as I was deciphering. It was horrible story that is written.  I will tell you now."
locale.main_quest_flame_lv101.say_45	= "The plate belongs to Choma gang.  I don't know where you got this plate from which monster you killed. Choma gang is sending some powerful monster to break the seal of 6 dragons.  Not only that, it also contains about the dragon union.  I've written more details on this letter, so please send this to Yakhwan(20377)."
locale.main_quest_flame_lv101.say_46	= "Thank you. Yakhwan(20377) will tell you about more details."
locale.main_quest_flame_lv101.say_47	= "Send the letter from scholar(20380) to Yakhwan(20377)."
locale.main_quest_flame_lv101.say_48	= "Send the letter to Yakhwan!"
locale.main_quest_flame_lv101.say_49	= "Send the letter from the alchemist(20001) to Yakhwan."
locale.main_quest_flame_lv101.say_50	= "Come on in. I already heard from scholar(20380). Please show me the letter."
locale.main_quest_flame_lv101.say_51	= "Umm.. This is more serious than I thought.  You already know that Choma gang is sending monsters to break the seal of 6 dragons.  I will tell you about the dragon union.  According to scholar(20380), The dragon union is an organization that watch 6 dragons and use them.  It could be more dangerous than Choma gang depends on the situation."
locale.main_quest_flame_lv101.say_52	= "Get the Blood of flame lord(31080) after defeat  Flame lord(2206) in Doyyumhwaji"
locale.main_quest_flame_lv101.say_53	= "The dragon union won't bother much if they are not threatened. But most important thing is that Choma gang already sent monster to place where the 6 dragon seal is.  Based on the fact that it's at Doyyumhwaji and seal of 6 dragons, The cave could be the red dragon castle(zone1).  We need go deeper into the red dragon castle(zone1) to gather more information.  I will plan the way, so meanwhile go back and rest."

locale.main_quest_flame_lv102	= {}
locale.main_quest_flame_lv102.say_1	= "Rushing into Zone1"
locale.main_quest_flame_lv102.say_2	= "Yakhwan(20377) is looking for you urgently.  Please listen to Yakhwan(20377) for details."
locale.main_quest_flame_lv102.say_3	= "I summoned you to talk about marching in to the red dragon castle(zone1) as we discussed before.  We have to plan very carefully since my servant died who was high level warrior and the red dragon, suspected one of the six dragon is sealed in that place."
locale.main_quest_flame_lv102.say_4	= " I have barricaded the area with my servants after you killed all the monsters around the red dragon castle(zone1) to prevent spreading of dark energy.  It will at least conceal the damage going outside.  Now I need you to march in to the red dragon castle(zone1) and see what kind of monsters in there and if there's really the red dragon is sealed."
locale.main_quest_flame_lv102.say_5	= "OK, I will do that."
locale.main_quest_flame_lv102.say_6	= "Thank you.  Just one fight won't do any good, so please kill at least 30 monsters and bring me proofs. Good luck."
locale.main_quest_flame_lv102.say_7	= "Kill 30 monsters in The red dragon castle(zone1) and bring the proofs."
locale.main_quest_flame_lv102.say_8	= "March in to the red dragon castle(zone1)"
locale.main_quest_flame_lv102.say_9	= "March in to The red dragon castle(zone1) by the order of Yakhwan(20377)"
locale.main_quest_flame_lv102.say_10	= "Claw of %s : %d  clue of %s: %d"
locale.main_quest_flame_lv102.say_11	= "Armor scale of %s: %d  Weapon piece of %s: %d"
locale.main_quest_flame_lv102.say_12	= "Hmm.. I need to plan the strategy based on more kills.  Please march in and get the proofs."
locale.main_quest_flame_lv102.say_13	= " Collected all the proofs of monster kills in the red dragon castle(zone1). Report back to Yakhwan(20377)."
locale.main_quest_flame_lv102.say_14	= "Talk to Yakhwan(20377) from Evil dragon islands."
locale.main_quest_flame_lv102.say_15	= "Oh.. You've come back.  Looks like you have enough proofs.  How strong are they?"
locale.main_quest_flame_lv102.say_16	= "There are some monsters from Doyyumhwaji. But they were stronger not like the monsters out side of the red dragon castle(zone1).  I almost couldn't make it out since there were new powerful monsters appearing , As I marched into deeper, I found a monster called Yamchon the flame lord(6901) guarding The red dragon castle(zone1)."
locale.main_quest_flame_lv102.say_17	= " I see. So it wasn't just dark energy.  Choma gang prepared a lot this time.  I will call you again later. Now go back and rest."
locale.main_quest_flame_lv102.say_18	= "Yamchon the flame lord?!"
locale.main_quest_flame_lv102.say_19	= "Scholar(20380) is looking for you urgently. Please listen to Scholar(20380) for details."
locale.main_quest_flame_lv102.say_20	= "I heard from Yakhwan(20377).  You have found Yamachon the flame lord(6091) in the red dragon castle(zone1) Why that monster...sigh.."
locale.main_quest_flame_lv102.say_21	= "Any problem¡¦???[ENTER]"
locale.main_quest_flame_lv102.say_22	= "You don't know about it!!  Yamachon the flame lord(6091)is one of the most powerful monster along with Hanmaui the ice lord(6191).  He could be a great obstacle for this investigation."
locale.main_quest_flame_lv102.say_23	= " I've also known from rumors, I need more information to help  Yakhwan(20377).  Please help me to gather more information about Yamachon(6091)."
locale.main_quest_flame_lv102.say_24	= "What can I do for you?"
locale.main_quest_flame_lv102.say_25	= "I think it's too dangerous to face Yamachon(6091) at this time when we don't know he is the source of the dark energy.  For now, please eliminate all the monsters in the red dragon castle(zone1).  Monsters affected by dark energy should have the dark energy concentrate in the body.  Please collect 10 dark energy concentrate(31081) while I'm researching on how to purify dark energy. then we will deal with Yamachon(6091)."
locale.main_quest_flame_lv102.say_26	= "I will wait here."
locale.main_quest_flame_lv102.say_27	= " Kill the monsters in The red dragon castle(zone1) and collect 10 Dark energy concentrate(31081)."
locale.main_quest_flame_lv102.say_28	= "collect 10 Dark energy concentrate(31081)."
locale.main_quest_flame_lv102.say_29	= "Killed monsters in The red dragon castle(zone1) and collected all the dark energy concentrate(31081). Report back to scholar(20380)."
locale.main_quest_flame_lv102.say_30	= " ¡?ungeon pass can not be re-issued.[ENTER]"
locale.main_quest_flame_lv102.say_31	= "You haven't collected them yet?  I thought you can do it with no effort.  Please go back and do the mission!"
locale.main_quest_flame_lv102.say_32	= "Killed monsters in The red dragon castle(zone1) and collected all the dark energy concentrate(31081). Report back to scholar(20380)."
locale.main_quest_flame_lv102.say_33	= ".Wow¡¦ Just by looking at it make me swallowed into dark energy!  Your health must be so good to endure all the dark energy.  Even though I forgot to give you the container to put dark energy concentrate(31081).  I will start research on purifying the dark energy.  You can go back now."
locale.main_quest_flame_lv102.say_34	= "(I should be careful next time...)"
locale.main_quest_flame_lv102.say_35	= "Purifying blurry aura"
locale.main_quest_flame_lv102.say_36	= "Good day.  I have found the way to purify dark energy.  Without purifying it, You won't be able to stay long enough in The red dragon castle(zone1).  I think you need to march in with Yakhwan(20377) and his army to reduce the damage."
locale.main_quest_flame_lv102.say_37	= "What is the way?"
locale.main_quest_flame_lv102.say_38	= "Don't rush.  I was about to tell you now.  You should have learned about positive and negative energy in this world last time we were investigating.  incompatible relations like water and fire, light and dark!  Dark energy can be purified with purity eventually."
locale.main_quest_flame_lv102.say_39	= "You should know that this is Magic Resistance Potion(50819). Mixing together with Magic Resistance Potion(50819) and Talc(51001) will become water with purifying energy. After you drink it, you will be able to fight against monsters in the red dragon castle(zone1) with great power. It sounds simple, but it's very hard to make it. please get 50 Magic Resistance Potion(50819) and 100 talc(51001) and give them to Yuhwan(20017) the musician."
locale.main_quest_flame_lv102.say_40	= "Good luck."
locale.main_quest_flame_lv102.say_41	= "Collect 50 Magic Resistance Potion(50819) and 100 Talc(51001) and bring to Yuhwan(20017) the musician."
locale.main_quest_flame_lv102.say_42	= "Purifying dark energy"
locale.main_quest_flame_lv102.say_43	= "Collect 50 Magic Resistance Potion(50819) and 100 Talc(51001).[ENTER]"
locale.main_quest_flame_lv102.say_44	= "You are so fast.  Go get some rest and leave it to me now."
locale.main_quest_flame_lv102.say_45	= " It's less that what I heard from scholar(20380).  You haven¡¯t collected enough yet.  Please bring me the items."
locale.main_quest_flame_lv102.say_46	= "Collected enough Magic Resistance Potion(50819) and Talc(51001). bring to Yuhwan(20017) the musician."
locale.main_quest_flame_lv102.say_47	= "Talk to  Yuhwan(20017).[ENTER]"
locale.main_quest_flame_lv102.say_48	= "Deliver purifying water(31078)"
locale.main_quest_flame_lv102.say_49	= "Yuhwan(20017) is looking for you urgently.  Please listen to Yuhwan(20017) for details."
locale.main_quest_flame_lv102.say_50	= "Welcome.  I made Purifying water(31078) with the ingredients you collected.  It should have more than this by right, but I had some failure along the way.  But it's still sufficient amount. So please bring this to Yakhwan(20377)"
locale.main_quest_flame_lv102.say_51	= "Why is it so hard when it's called water?"
locale.main_quest_flame_lv102.say_52	= " Don't worry about the small details too much.  It's because of high concentration."
locale.main_quest_flame_lv102.say_53	= "Please go ahead."
locale.main_quest_flame_lv102.say_54	= "Deliver Yuhwan(20017)'s purifying water(31078) to Yakhwan(20377)."
locale.main_quest_flame_lv102.say_55	= "Why do you still have purifying water(31078)? Please bring purifying water(31078) to Yakhwan(20377)"
locale.main_quest_flame_lv102.say_56	= "Oh.. Come on in.  I was expecting you.  I heard from Yuhwan(20017) already.  Have you brought purifying water(31078)?"
locale.main_quest_flame_lv102.say_57	= "Yes, it is so concentrated that it's almost like a pellet.  I will be useful when we march into The red dragon castle(zone1)."
locale.main_quest_flame_lv102.say_58	= "Yes, you did good job.  Leave the purifying water(31078) here and I will prepare with my servants for the battle.  And please bring one with you.  You will need it when we begin march.  I will let you know when we leave."
locale.main_quest_flame_lv103	= {}
locale.main_quest_flame_lv103.say_1	= "Towards to Zone1"
locale.main_quest_flame_lv103.say_2	= "Yakhwan(20377) is looking for you urgently.  Please listen to Yakhwan(20377) for details."
locale.main_quest_flame_lv103.say_3	= "Welcome.  I have chosen good soldiers and have them drink purifying water(31078) after I discussed with my advisors.  It looks like it's working pretty well.  They feel their bodies become stronger, clearer and purer soon after they drink it.  So I have sent them to the red dragon castle(zone1)."
locale.main_quest_flame_lv103.say_4	= "My soldiers left already, I think you can catch up on them if you hurry.  Please eliminate monsters in the red dragon castle(zone1 and defeat Yamachon(6091) if possible.  Priority is to reach my servant that I sent for scout.  He will tell you what to do."
locale.main_quest_flame_lv103.say_5	= "Yes, I will."
locale.main_quest_flame_lv103.say_6	= "Thank you and good luck."
locale.main_quest_flame_lv103.say_7	= "Find Yakhwan(20377)'s servant in The red dragon castle(zone1)."
locale.main_quest_flame_lv103.say_8	= "Find Yakhwan's servant"
locale.main_quest_flame_lv103.say_9	= "Find Yakhwan's servant(20393) who marched in to the red dragon castle(zone1) "
locale.main_quest_flame_lv103.say_10	= "You've come back with nothing.  Hurry up and leave to the red dragon castle(zone1)"
locale.main_quest_flame_lv103.say_11	= "G..great warrior¡¦here...  We couldn't be the match with  Yamachon(6091) after we defeated other monsters in the area.  This is something you can't do it alone, please report this to Yakhwan(20377),"
locale.main_quest_flame_lv103.say_12	= "Talk to Yakhwan(20377) from Evil dragon islands."
locale.main_quest_flame_lv103.say_13	= "You've come back earlier than I thought.  Have you taken care of the red dragon castle(zone1)?"
locale.main_quest_flame_lv103.say_14	= "The thing is¡¦¡¦[ENTER]"
locale.main_quest_flame_lv103.say_15	= "What makes you hesitate to tell me..?  What happened back there?"
locale.main_quest_flame_lv103.say_16	= "Soldiers who drank purifying water(31078) marched in to the area, but  Yakhwan(20377) slaughtered them all.  Even this massage was told by the last of your servant. I think we made our move too fast."
locale.main_quest_flame_lv103.say_17	= "Oh..no.. It¡¯s all fault..  My hasty decision made all my soldiers dead...  I need to brace up for the next battle.  Please have some rest and wait for my message "
locale.main_quest_flame_lv103.say_18	= "Ambush"
locale.main_quest_flame_lv103.say_19	= "You've arrived.  I lost so many lives because of my mistake...  But I couldn't give up when I needed to stop Choma gang's evil plan.  I have come up with new plan including you as a main strategic asset."
locale.main_quest_flame_lv103.say_20	= "I made my tactics to suit you who are highly trained in combat. So don't worry too much.  Last raid proved that purifying water(31078) is really effective.  So I will strengthen my soldier with purifying water(31078) for this time as well.  However I still think it's to hard for them to defeat Yamachon the flame lord(6091). they will be focusing on cleaning up the monsters outside the area."
locale.main_quest_flame_lv103.say_21	= "Meanwhile you can march in and kill 1000 monsters in the red dragon castle(zone1), If we can kill that much amount of monster, it will make Yamachon(6091) nervous and we might be able to get a chance.  Please proceed with the plan."
locale.main_quest_flame_lv103.say_22	= "Ok."
locale.main_quest_flame_lv103.say_23	= "Kill the monsters in the red dragon castle(zone1)."
locale.main_quest_flame_lv103.say_24	= "Eliminate the monsters"
locale.main_quest_flame_lv103.say_25	= "Kill 1000 monster in the red dragon castle(zone1)."
locale.main_quest_flame_lv103.say_26	= "¡?ungeon pass can not be re-issued."
locale.main_quest_flame_lv103.say_27	= "Seems like I have to wait a bit longer.  There are monsters from The red dragon castle(zone1) still crawling out.  You need to hurry. Please go back in."
locale.main_quest_flame_lv103.say_28	= " Killed 1000 monsters in the red dragon castle(zone1). Report back to Yakhwan(20377)."
locale.main_quest_flame_lv103.say_29	= "According my soldiers, The monsters are almost gone from The red dragon castle(zone1) You did a great job, Thank you.  I will be discuss with scholar(20380) for the next move. Please wait for me."
locale.main_quest_flame_lv103.say_30	= "Trouble in the red dragon castle(zone1)"
locale.main_quest_flame_lv103.say_31	= "Good day.  Your killing of monsters made it easy to march in, but the scouts said it's still not so safe.  We can't just kill normal rank monsters to make any differences.  I think we should kill the elite monsters first based on the Intel from my scouts."
locale.main_quest_flame_lv103.say_32	= "They are fire beast(6005),fire monster(6006),flame beast(6007),flame monster(6008) and super heat monster(6009). these 5 kinds.  These are high level monsters in the red dragon castle(zone1) and elite monsters of Yamachon the flame lord(6091).  We will give them some significant damage if we can defeat them. just like cutting off the snake's head.  Hence please kill 50 of each kind of those monsters."
locale.main_quest_flame_lv103.say_33	= " Destroy the elite monsters of The red dragon castle(zone1)"
locale.main_quest_flame_lv103.say_34	= " Destroy the elites of The red dragon castle(zone1)"
locale.main_quest_flame_lv103.say_35	= "Kill the monsters in headquarter of the red dragon castle,"
locale.main_quest_flame_lv103.say_36	= "You still haven't eliminated all the elite monsters.  This must be done before we proceed to next step."
locale.main_quest_flame_lv103.say_37	= " Killed all the elite monsters in the red dragon castle(zone1) Report back to Yakhwan(20377)."
locale.main_quest_flame_lv103.say_38	= "Now we can go to the red dragon castle(zone1) and stop the choma gang's evil plan.  We are almost there. Please be strong.  Good job."
locale.main_quest_flame_lv103.say_39	= "Yamachon raid 1-1"
locale.main_quest_flame_lv103.say_40	= "Thanks to you for defeating all the elite monsters, We are gradually winning in the battles at red dragon castle(zone1).  We couldn't have done it without you.  I really appreciate it.  I think we will be soon conquering the red dragon castle(zone1) and stopping the Choma gang's evil plan.  I called you to update the status and show my gratitude.  scholar(20380) had planned something. please go and talk to scholar(20380),"
locale.main_quest_flame_lv103.say_41	= "Listen to scholar(20380)'s plan."
locale.main_quest_flame_lv103.say_42	= "Find scholar(20380)."
locale.main_quest_flame_lv103.say_43	= "Welcome, I've been waiting for you...  I've hearing from Yakhwan(20377) about your great contributions in the battles.  Anyway, I will tell you my plan to stop the Choma gang's plan."
locale.main_quest_flame_lv103.say_44	= "With Yakhwan(20377)'s help, we choose some high level warriors to investigate on Yamachon the flame lord(6091).  We could get some valuable info.  Yamachon the flame lord(6091) gets his power from fire beast stone(8057) which he hid it somewhere monsters are guarding.  If we can destroy that fire beast stone(8057), it would be much easier to defeat Yamachon(6091)."
locale.main_quest_flame_lv103.say_45	= "So I just need to destroy the fire beast stone(8057)?[ENTER]"
locale.main_quest_flame_lv103.say_46	= "Yes.  As you know if you destroy the fire beast stone(8057), it will unleash many monsters.  Please keep that in mind when you are working on the mission.  You will never know where to find the fire beast stone(8057). So be alarmed all the time."
locale.main_quest_flame_lv103.say_47	= "When we are ready to defeat Yamachon(6091), Yakhwan(20377) will let you know.  So please leave to the red dragon castle(zone1) and destroy 1 fire beast stone(8057). Then report back to  Yakhwan(20377)."
locale.main_quest_flame_lv103.say_48	= "Destroy the fire beast stone(8057) in the red dragon castle(zone1)"
locale.main_quest_flame_lv103.say_49	= "Destroy metin stone(8057)"
locale.main_quest_flame_lv103.say_50	= " Destroy fire beast stone(8057) in the red dragon castle"
locale.main_quest_flame_lv103.say_51	= "Remaining destroy:"
locale.main_quest_flame_lv103.say_52	= "My servant may not strong enough to fight Yamachon(6091), but he can surely watch you behind.  Don't try to lie to this old man.  fire beast stone(8057) needs to be destroyed to proceed to next plan. So please help me."
locale.main_quest_flame_lv103.say_53	= "Destroyed the fire beast Stone(8057) in the red dragon castle(zone1). Report Back to Yakhwan(20377)."
locale.main_quest_flame_lv103.say_54	= "I've got the report that the fire beast stone(8057) is destroyed.  And I also knew that you were coming.  Good job. I'm sure you know my next plan.  It is death of Yamachon the flame lord(6091) It will take some time to prepare, when I call you, please bring purifying water(31078) with you."
locale.main_quest_flame_lv104	= {}
locale.main_quest_flame_lv104.say_1	= "Yamachon raid 1-2"
locale.main_quest_flame_lv104.say_2	= "Yakhwan(20377) is looking for you urgently.  Please listen to Yakhwan(20377) for details."
locale.main_quest_flame_lv104.say_3	= "Welcome.  Since you destroyed the metin stone, now we can defeat Yamachon(6091).  The time has come.  We had so much sacrifice to come this far, to stop Choma gang and defeat Yamachon the flame lord(6091).  We can not fail this time."
locale.main_quest_flame_lv104.say_4	= "I believe you still have purifying water(31078) I gave you before.  Yours is much stronger since it's concentrated one. Not like ones that the soldiers took.  Please consume it and defeat Yamachon(6091).  the effect duration will be only 1 hour, so carefully choose when to use it.  If not, You will have some hard time when you face Yamachon(6091)."
locale.main_quest_flame_lv104.say_5	= "Ok, I will."
locale.main_quest_flame_lv104.say_6	= "Defeat Yamachon the flame lord(6091) in the red dragon castle(zone1)."
locale.main_quest_flame_lv104.say_7	= "Defeat Yamachon the flame lord(6091)."
locale.main_quest_flame_lv104.say_8	= "Defeated Yamachon the flame lord(6091) in the red dragon castle(zone1)"
locale.main_quest_flame_lv104.say_9	= "¡?ungeon pass can not be re-issued."
locale.main_quest_flame_lv104.say_10	= "Yamachon the flame lord(6091) is not an easy opponent.  But we must defeat him to stop the Choma gang's evil plan.  Please cheer up and go back in."
locale.main_quest_flame_lv104.say_11	= "Yamachon the flame lord(6091): I almost unleashed the red dragon.. You interrupted me...  The red dragon won't just let me die cause he also wants to see the world...  I will come back one day."
locale.main_quest_flame_lv104.say_12	= "Defeated Yamachon the flame lord(6091) in the red dragon castle(zone1).  Report back to Yakhwan(20377)."
locale.main_quest_flame_lv104.say_13	= "Report back to Yakhwan(20377)."
locale.main_quest_flame_lv104.say_14	= "Splendid! Great!  I knew you are more that just a warrior, but didn't know you could even defeat Yamachon(6091).  Great job! Now go and rest."
locale.main_quest_flame_lv104.say_15	= "Master Yakhwan(20377), When Yamachon the flame lord(6091) was dying, He told me this.  The red dragon won't just let me die cause he also wants to see the world...  I have feeling that this is not over."
locale.main_quest_flame_lv104.say_16	= "I see.  So this is not the end.  I will look into it and let you know."
locale.main_quest_flame_lv104.say_17	= "Prevention of the evil plan 1-1"
locale.main_quest_flame_lv104.say_18	= "Welcome.  I did some research on the message Yamachon(6091) left when he was dying.  I've sent scouts out there.  Like you suspected, Yamachon(6091) was already resurrected..  Even then, Dark energy and howling sound got stronger in the red dragon castle(zone1) than before."
locale.main_quest_flame_lv104.say_19	= "I think we need to apply Golden pouch on Yamachon the flame lord(6091) when we defeat him again to make sure.  It will be more sacrifice to deal with stronger Yamachon.  I've already told this part to scholar(20380), So please go to scholar(20380) and listen to details."
locale.main_quest_flame_lv104.say_20	= "Visit scholar(20380) and listen to his plan."
locale.main_quest_flame_lv104.say_21	= "Visit scholar(20380)."
locale.main_quest_flame_lv104.say_22	= "Listen to scholar(20380)'s plan."
locale.main_quest_flame_lv104.say_23	= "I told you to go to scholar(20380)...  Please go to him¡¦"
locale.main_quest_flame_lv104.say_24	= "Welcome, I've been waiting for you...  I heard you defeated Yamachon the flame lord(6091) recently.  You did a great job.  I will tell you my plan now."
locale.main_quest_flame_lv104.say_25	= "Yamachon(6091) was revived by the energy of the red dragon.  To stop that power, you need to apply Golden pouch to him.  And I've come up with plan to apply Golden pouch to him, so please do as I say."
locale.main_quest_flame_lv104.say_26	= "Ok, What can I do for you."
locale.main_quest_flame_lv104.say_27	= "Last time I've explained you about the way of the world.  Any extreme energy can be very unstable.  So I thought of using fire energy to suppress other fire energy.  To make this plan working, We need to collect some core that contains fire energy.  Based on my research, to get the right core, we can collect the cores from fire beast(6005),fire monster(6006),flame beast(6007),flame monster(6008),super heat monster(6009) Only you can do this. please collect me 5 cores."
locale.main_quest_flame_lv104.say_28	= " Collect burning core(31082) in the red dragon castle(zone1)."
locale.main_quest_flame_lv104.say_29	= "Collect the materials for Golden pouch and give to scholar(20380)."
locale.main_quest_flame_lv104.say_30	= "oh.. This would be good enough.  You just need to get me %d  more cores.  Good luck!"
locale.main_quest_flame_lv104.say_31	= "Now I've collected all the cores I need.  But I need some other materials.  I will process these cores first. You can go back and rest."
locale.main_quest_flame_lv104.say_32	= "hmm.. You've put in some hard effort, but these cores are too weak to use. Could you get me some new cores?"
locale.main_quest_flame_lv104.say_33	= "Prevention of the evil plan 1-2"
locale.main_quest_flame_lv104.say_34	= "Scholar(20380) is looking for you urgently.  Please listen to Scholar(20380) for details."
locale.main_quest_flame_lv104.say_35	= "burning core(31082) is in the middle of processing.  It's too hot to handle for scholar(20380) like me who got no physical training.  Thanks to that, I got burn on my hands.  Anyway, I will let you know the next material I need.  It's Double Attack Potion(50814)."
locale.main_quest_flame_lv104.say_36	= "?µ¶¾?50814)Àº Á¤Á¦O UÀ» À§¿¡ ¿ø®°?õ±? ³? ³»¾??µ¥ ¾²Àd??[ENTER]±??¿?ºÀ?µj?ª¸?±?¦¸¦ ½À?o ¼ö À?» °???[ENTER]¹?Àº ³ªÁ?¡ ¾?(20377)´?² µ?·?I°??µ¶¾?50814)Àº Á» ¸¹À??¿?´?100°³Á¤µµ ±¸u´?Á??ª.[ENTER]±?³ ±?¸®°????[ENTER]"
locale.main_quest_flame_lv104.say_37	= "Collect double Attack Potion(50814) for scholar(20380)."
locale.main_quest_flame_lv104.say_38	= "Collect Double Attack Potion(50814). Send to scholar(20380)."
locale.main_quest_flame_lv104.say_39	= "Oh, You've brought them.  It¡¯s almost done after I process these.  Good job."
locale.main_quest_flame_lv104.say_40	= "Almost?  Still got some more?"
locale.main_quest_flame_lv104.say_41	= "One last thing¡¦.  But now I need to process these first. I will call you when I'm ready."
locale.main_quest_flame_lv104.say_42	= "Don't tell me you can't count numbers.  Even warriors need to count 100...  Please find me rest of Double Attack Potion(50814)."
locale.main_quest_flame_lv104.say_43	= "Collected all double Attack Potion(50814). Send them to scholar(20380)."
locale.main_quest_flame_lv104.say_44	= "Scholar(20380) is looking for you urgently.  Please listen to Scholar(20380) for details."
locale.main_quest_flame_lv104.say_45	= "Prevention of the evil plan1-3"
locale.main_quest_flame_lv104.say_46	= "Its going very well with your big help.  Please support me to this one last step.  It¡¯s almost done."
locale.main_quest_flame_lv104.say_47	= "The final step is to create a container to hold this fire energy.  Now it's very unstable with full of fire energy.  But I'm sure it will work.  Anyway, I believe you know about Bumik clan when you are pursuing Choma gang last time.  I need leather of bumik clan chief.  I need 5 of them to stitch together."
locale.main_quest_flame_lv104.say_48	= "Collect good quality leather and send to scholar(20380)."
locale.main_quest_flame_lv104.say_49	= "Collect leather of bumik clan(31024) and send to scholar(20380)."
locale.main_quest_flame_lv104.say_50	= "Its almost done. Please be strong.  We need to stop both Choma gang and Red dragon.  Then I will wait here."
locale.main_quest_flame_lv104.say_51	= "oh. All the materials are ready!  Wait a minute.  I will finish it soon, Please send this when Yakhwan(20377) summons you."
locale.main_quest_flame_lv104.say_52	= "Collected all the leather. Send to scholar(20380)."

locale.main_quest_flame_lv105	= {}
locale.main_quest_flame_lv105.say_1	= "The battling"
locale.main_quest_flame_lv105.say_2	= "Yakhwan(20377) is looking for you urgently.  Please listen to Yakhwan(20377) for details."
locale.main_quest_flame_lv105.say_3	= "Long time no see.  I heard  you helped scholar to collect materials for Golden pouch.  Did you bring Golden pouch(31083)?"
locale.main_quest_flame_lv105.say_4	= "Here they are. Total 3 of them."
locale.main_quest_flame_lv105.say_5	= "I will let you know how to use Golden pouch(31083) later.  Now I need to tell you what to do.  Golden pouch(31083) has been made, but With red dragon's energy, Yamachon the flame lord(6091) is revived.  It's not a good situation for us.  I will use half of my demon slayer soldiers for this operation."
locale.main_quest_flame_lv105.say_6	= "My soldiers will take care of the monsters inside of the red dragon castle(zone1), But the elite monsters and Yamachon the flame lord(6091) are too much for them.  First of all, please eliminate 10 of each kind of the elite monsters.  fire beast(6005),fire monster(6006),flame beast(6007),flame monster(6008),super heat monster(6009)."
locale.main_quest_flame_lv105.say_7	= "Ok, I will."
locale.main_quest_flame_lv105.say_8	= "Destroy the elite monsters of The red dragon castle(zone1)."
locale.main_quest_flame_lv105.say_9	= "Destroy the elite monsters"
locale.main_quest_flame_lv105.say_10	= " Destroy the elite monsters of The red dragon castle(zone1)."
locale.main_quest_flame_lv105.say_11	= "Dungeon pass can not be re-issued."
locale.main_quest_flame_lv105.say_12	= "You still haven't eliminated all the elite monsters.  This must be done before we proceed to next step. Otherwise we can forget about golden pouch or red dragon...  Please hurry."
locale.main_quest_flame_lv105.say_13	= " Killed all the elite monsters in the red dragon castle(zone1) Report back to Yakhwan(20377)."
locale.main_quest_flame_lv105.say_14	= "Talk to Yakhwan(20377) from Evil dragon islands."
locale.main_quest_flame_lv105.say_15	= "Now we can go into the red dragon castle(zone1) and stop the Choma gang's evil plan.  Use Golden pouch to Red dragon.  Good job."
locale.main_quest_flame_lv105.say_16	= "The final battle"
locale.main_quest_flame_lv105.say_17	= "I seems like that Yamachon the flame lord(6091) is full of rage since you killed him and his elite force.  His howling can be heard from even outside of The red dragon castle(zone1).  Now you are Yamachon(6091)'s nemesis.  But it won't make much difference."
locale.main_quest_flame_lv105.say_18	= "What I need you to do this time is to defeat Yamachon the flame lord(6091).  Please be careful, he holds much grudge against you since you killed him once and he is revived by red dragon.  So please keep that in mind and do your best to accomplish the mission."
locale.main_quest_flame_lv105.say_19	= "Defeat Yamachon the flame lord(6091)."
locale.main_quest_flame_lv105.say_20	= "Defeat Yamachon the flame lord(6091)."
locale.main_quest_flame_lv105.say_21	= "Defeat Yamachon the flame lord(6091) in the red dragon castle(zone1)."
locale.main_quest_flame_lv105.say_22	= "Were you afraid of Yamachon the flame lord(6091)?  You can defeat Yamachon(6091).  Please complete the mission."
locale.main_quest_flame_lv105.say_23	= "Defeated Yamachon the flame lord(6091) in the red dragon castle(zone1).  Report back to Yakhwan(20377)."
locale.main_quest_flame_lv105.say_24	= "Great!!  Fantastic job!  I've just got the report from my servant's.  Now we just need to use Golden pouch to red dragon. Then it's over.  I will brace up my soldiers and let you know."
locale.main_quest_flame_lv105.say_25	= "Great achievement"
locale.main_quest_flame_lv105.say_26	= "Finally it's time.  Time to use the golden pouch and stop choma gang's evil plan.  Now I'm going to tell you how to use Golden pouch(31083)."
locale.main_quest_flame_lv105.say_27	= " Golden pouch that  you sent me last time, I set up magic spell for those pouches with my servants.  You can put spell on Golden pouch(31083) and also cause ignition.  What you need to do is make ignition.  You will be able to see the place red dragon is sealed from where you defeated Yamachon the flame lord(6091).  Throw Golden pouch(31083) with all your strength.  Since the energy inside the pouch is very unstable, it will cause the ignition. then my magic spell will activate Golden pouch."
locale.main_quest_flame_lv105.say_28	= "Apply Golden pouch to the red dragon in the red dragon castle(zone1)"
locale.main_quest_flame_lv105.say_29	= "Remaining Golden pouch:"
locale.main_quest_flame_lv105.say_30	= "Apply Golden pouch to the red dragon."
locale.main_quest_flame_lv105.say_31	= "March in to  the red dragon castle(zone1), and apply golden pouch(31083) to red dragon seal stone(20390)."
locale.main_quest_flame_lv105.say_32	= "Red dragon seal stone(20390): 1"
locale.main_quest_flame_lv105.say_33	= "Red dragon:"
locale.main_quest_flame_lv105.say_34	= "Grr..you are weak..grrrrr....  I've lost my power, but you can't use golden pouch on me with that weak power.  I will be unleashed and revived as well as Yamachon the flame lord(6091)!Hahahhahah!!"
locale.main_quest_flame_lv105.say_35	= "Failed to use Golden pouch to red dragon. Report back to Yakhwan(20377)."
locale.main_quest_flame_lv105.say_36	= "Welcome. Please tell me what happened back there."
locale.main_quest_flame_lv105.say_37	= "yes.  The ignition and magic spell activated as you planned.  And golden pouch seemed working.  But Golden pouch was devoured by red dragon's overwhelming power.  Red dragon said that he will be unleashed and revived as well as Yamachon the flame lord(6091) However, Golden pouch did damage him unexpectedly."
locale.main_quest_flame_lv105.say_38	= "I see.  Good job, We couldn't have done this without you.  I was going to discuss this matter with advisors and scholar.  Now what I can do is keep watch over it and figure out how to use Golden pouch.  I will call you when I find out the way to seal the red dragon completely with Golden pouch.  Thank you."

locale.snow_dungeon = {}
locale.snow_dungeon.say_1 = "Enter Nemere's Watchtower"
locale.snow_dungeon.say_2 =  "Nemere's Watchtower (TR) has a time limit of 1 hour."
locale.snow_dungeon.say_3 = "You left the dungeon because you don't have a ticket."
locale.snow_dungeon.say_4 = "In a few seconds you will be teleported to Time Rift Nemere's Throne Room"
locale.snow_dungeon.say_5 = "Nemere's Watchtower "
locale.snow_dungeon.say_6 = "Do you want to enter Nemere's Watchtower now?"
locale.snow_dungeon.say_7 = "In a few seconds you will be teleported to the second floor."
locale.snow_dungeon.say_8 = "In a few seconds you will be teleported to the fourth floor."
locale.snow_dungeon.say_9 = "In a few seconds you will be teleported to the fifth floor."
locale.snow_dungeon.say_10 = "The Metin of Cold has appeared!"
locale.snow_dungeon.say_11 = "In a few seconds you will be teleported to the third floor."
locale.snow_dungeon.say_12 = "That was the wrong key. Find the right one! "
locale.snow_dungeon.say_13 = "Done! Now open the second seal. "
locale.snow_dungeon.say_14 = "Done! Now open the third seal."
locale.snow_dungeon.say_15 = "Pay attention to the correct sequence! Try a different cube."
locale.snow_dungeon.say_16 = "Done! Now open the fourth seal."
locale.snow_dungeon.say_17 = "Done! Now open the fifth seal."
locale.snow_dungeon.say_18 = "In a few seconds you will be teleported to the sixth floor."
locale.snow_dungeon.say_19 = "In a few seconds you will be teleported to the seventh floor."
locale.snow_dungeon.say_20 = "His doubles disappear."
locale.snow_dungeon.say_21 = "In a few seconds you will be teleported to the eighth floor."
locale.snow_dungeon.say_22 = "In a few seconds you will be teleported to the ninth floor."
locale.snow_dungeon.say_23 = "Defeat Nemere, King of Frost and Ice."
locale.snow_dungeon.say_24 = "In a few seconds you will be teleported outside."
locale.snow_dungeon.say_25 = "The group will be teleported from the fortress once the time runs out."
locale.snow_dungeon.say_26 = "Nemere's Watchtower entry delay is %d min remaining."
locale.snow_dungeon.say_27 = "Your time in Nemere's Watchtower has elapsed."
locale.snow_dungeon.say_28 = "Time's up. Teleporting in 10 sec."
locale.snow_dungeon.say_29 = "Time's up in Nemere's Watchtower (RX).."
locale.snow_dungeon.say_30 = "Cannot proceed, the group leader has disappeared."
locale.snow_dungeon.say_31 = "Impossible to go further because the party leader has not reached lvl 104."
locale.snow_dungeon.say_32 = "Impossible to go further because the party leader has not completed all the quests of lvl 103."
locale.snow_dungeon.say_33 = "Are you ready to face the Frost King Nemere?"
locale.snow_dungeon.say_34 = "Enter"
locale.snow_dungeon.say_35 = "Do not enter"
locale.snow_dungeon.say_36 = "Nemere's Throne Room."
locale.snow_dungeon.say_37 = "Defeat all enemies!"
locale.snow_dungeon.say_38 = "Some frost monsters carry Frost Keys (TR). Take the keys from them and find the right one! Only Shamans, however, can use the key."
locale.snow_dungeon.say_39 = "To face Nemere, defeat all the monsters."
locale.snow_dungeon.say_39_1 = "Defeat all enemies! Blessing will fill you with power for the second wave"
locale.snow_dungeon.say_40 = "Open the seals on the Arctic Cube in the correct order to get to the next floor."
locale.snow_dungeon.say_41 = "Defeat the frost monsters and take their North Stars to open the seals!"
locale.snow_dungeon.say_42 = "Defeat all of the frost monsters and then destroy the Metin of Cold. Only Shamans can damage it."
locale.snow_dungeon.say_43 = "Find and defeat Szel (TR), the Lord of Ice and Cold. Only those who fight with the Dragon's Aid will be victorious."
locale.snow_dungeon.say_44 = "Defeat all of the frost monsters and find the Frostflower Key. Only Ninjas can drop it. Shamans and Ninjas can use it."
locale.snow_dungeon.say_45 = "Destroy the North Dragon Pillar. Only Ninjas and Shamans can damage it."
locale.snow_dungeon.say_46 = "Defeat Nemere, King of Frost and Ice."
locale.snow_dungeon.say_47 = "Unable to start dungeon with party members."
locale.snow_dungeon.say_48 = "Only Shamans can use the Frost Key."
locale.snow_dungeon.say_49 = "You are not a Shaman and or a Ninja!"
locale.snow_dungeon.say_50 = " and his group have defeated Nemere!"

locale.npc = {}
locale.npc.open_shop = "Open a shop"

locale.event_flame_dungeon_open = {}
locale.event_flame_dungeon_open.say_1 = "µµ¿°È­ÁöÀÇ ³­"
locale.event_flame_dungeon_open.say_2 = "¾Æ.. ÀÌ¾ß±â¸¦ µé¾ú´Â°¡..[ENTER]µµ¿°È­Áö¿¡ Å« À¯ÀûÀÌ ¹ß°ßµÆ´Ù°í ÇÏ´Â±¸¸¸...[ENTER]³ªµµ ÀÚ³×Ã³·³ ¿ë»ç¿´À¸¸é....[ENTER]±× À¯ÀûÀ» Á÷Á¢º¸°í ½ÍÁö¸¸ ³ªÀÇ ¿ª·®À¸·Î ºÎÁ·ÇÑµí ÇÏÀÌ..."
locale.event_flame_dungeon_open.say_3 = "Èì.... Àá½Ã ÈÄ¿¡ ´Ù½Ã ¿À¸é...[ENTER]³» µµ¿°È­Áö À¯ÀûÁöÀÇ ÁÂÇ¥°¡ ÀûÈù ÀÌµ¿¼­¸¦ ÇÏ³ª ÁÖ°Ú³×...[ENTER]±×°ÍÀ¸·Î ´Ù³à¿Í¼­ ³ª¿¡°Ô ¸»ÇØÁÖÁö ¾Ê°Ú´Â°¡?![ENTER]Á¤¸» ±Ã±ÝÇÏ±¸¸¸.... ÇãÇã" 
locale.event_flame_dungeon_open.say_4 = "ÀÌµ¿¼­¸¦ ÁÖ¼¼¿ä~!"
locale.event_flame_dungeon_open.say_5 = "¿ÀÈ£~!![ENTER]¿ë±â°¡ ÀÖ´Â ¸ÚÁø »ç¶÷ÀÌ·Î±¸¸Õ...[ENTER]µ¤°í Ã´¹ÚÇÏ¸ç, ¸¶¹°ÀÌ ³ÑÃÄ³ª´Â µµ¿°È­Áö¸¦ ÀÌ·¸°Ô °¡°Ú´Ù´Ï[ENTER]¾îÁö°£ÇÑ °­½ÉÀåÀÌ ¾Æ´Ï¸é ºÒ°¡´ÉÇÏÁö..[ENTER]¾îµðº¸ÀÚ...."
locale.event_flame_dungeon_open.say_6 = "ÀÚ~!!![ENTER]¿©±â ÀÖ³×~!! µµ¿°È­Áö À¯ÀûÁöÀÇ ÁÂÇ¥°¡ ±â·ÏµÈ ÀÌµ¿¼­ÀÏ¼¼[ENTER]±×¸®°í ´ýÀ¸·Î ÅëÇà±ÇÀ» ÁÙÅÍ´Ï Àß »ìÆìº¸°í ³ªÁß¿¡ ´Ù³à¿Â ÀÌ¾ß±â³ª ÇØÁÖ°Ô³ª~![ENTER]±×·³ ¸öÁ¶½É ÇÏ°Ô³ª~!!"
locale.event_flame_dungeon_open.say_7 = "¾îÇã~!!![ENTER]ÀÌ»ç¶÷ÀÌ~!! ¾Æ¹«¸® ³ª¶óµµ ÀÌµ¿¼­¸¦ ¸¸µå´Âµ¥´Â ÇÑ°è°¡ ÀÖ³×...[ENTER]ÇÏ·ç¿¡ ÇÑ¹ø¸¸ ÁÙ ¼ö ÀÖÀ¸´Ï ³»ÀÏ ¿À°Ô³ª..."
