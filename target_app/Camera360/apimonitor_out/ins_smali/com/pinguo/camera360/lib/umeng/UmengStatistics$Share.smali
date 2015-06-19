.class public Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;
.super Ljava/lang/Object;
.source "UmengStatistics.java"
.field private static final SHARE_6_1:Ljava/lang/String; = "share_6_1"
.field private static final SHARE_6_10:Ljava/lang/String; = "share_6_10"
.field private static final SHARE_6_11:Ljava/lang/String; = "share_6_11"
.field private static final SHARE_6_12:Ljava/lang/String; = "share_6_12"
.field private static final SHARE_6_13:Ljava/lang/String; = "share_6_13"
.field private static final SHARE_6_14:Ljava/lang/String; = "share_6_14"
.field private static final SHARE_6_15:Ljava/lang/String; = "share_6_15"
.field private static final SHARE_6_16:Ljava/lang/String; = "share_6_16"
.field private static final SHARE_6_17:Ljava/lang/String; = "share_6_17"
.field private static final SHARE_6_18:Ljava/lang/String; = "share_6_18"
.field private static final SHARE_6_19:Ljava/lang/String; = "share_6_19"
.field private static final SHARE_6_2:Ljava/lang/String; = "share_6_2"
.field private static final SHARE_6_20:Ljava/lang/String; = "share_6_20"
.field private static final SHARE_6_21:Ljava/lang/String; = "share_6_21"
.field private static final SHARE_6_22:Ljava/lang/String; = "share_6_22"
.field private static final SHARE_6_23:Ljava/lang/String; = "share_6_23"
.field private static final SHARE_6_24:Ljava/lang/String; = "share_6_24"
.field private static final SHARE_6_25:Ljava/lang/String; = "share_6_25"
.field private static final SHARE_6_3:Ljava/lang/String; = "share_6_3"
.field private static final SHARE_6_4:Ljava/lang/String; = "share_6_4"
.field private static final SHARE_6_5:Ljava/lang/String; = "share_6_5"
.field private static final SHARE_6_6:Ljava/lang/String; = "share_6_6"
.field private static final SHARE_6_7:Ljava/lang/String; = "share_6_7"
.field private static final SHARE_6_8:Ljava/lang/String; = "share_6_8"
.field private static final SHARE_6_9:Ljava/lang/String; = "share_6_9"
.field private static final SHARE_ITEM_BEETALK_BUZZ:Ljava/lang/String; = "beetalk_buzz"
.field private static final SHARE_ITEM_BEETALK_CHAT:Ljava/lang/String; = "beetalk_chat"
.field private static final SHARE_ITEM_FRIEND:Ljava/lang/String; = "friend"
.field private static final SHARE_ITEM_LOCAL_INSTAGRAM:Ljava/lang/String; = "instagram"
.field private static final SHARE_ITEM_OTHER:Ljava/lang/String; = "other"
.field private static final SHARE_ITEM_QQ:Ljava/lang/String; = "qq"
.field private static final SHARE_ITEM_SITE:Ljava/lang/String; = "site"
.field private static final SHARE_ITEM_WEICHAT:Ljava/lang/String; = "weichat"
.field private static final SHARE_LAY_BTN_ADD_SITE:Ljava/lang/String; = "share_lay_btn_add_site"
.field private static final SHARE_LAY_BTN_AT:Ljava/lang/String; = "@"
.field private static final SHARE_LAY_BTN_BACK:Ljava/lang/String; = "share_lay_btn_back"
.field private static final SHARE_LAY_BTN_CANCEL:Ljava/lang/String; = "share_lay_btn_cancel"
.field private static final SHARE_LAY_BTN_FRIEND:Ljava/lang/String; = "share_lay_btn_friend"
.field private static final SHARE_LAY_BTN_LOCATION:Ljava/lang/String; = "share_lay_btn_location"
.field private static final SHARE_LAY_BTN_SHARE:Ljava/lang/String; = "share_lay_btn_share"
.field private static final SHARE_LAY_BTN_TEMPLATE:Ljava/lang/String; = "share_lay_btn_template"
.field private static final SHARE_LAY_BTN_TOPIC:Ljava/lang/String; = "share_lay_btn_topic"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static shareLay()V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "share_6_1"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v1, "_c360-adr-5.4.5_"
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->show:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_1:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityAction(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "share_6_1"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static shareLayBtnClick(I)V
.registers 8
const-string/jumbo v0, ""
sparse-switch p0, :sswitch_data_ca
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "share_6_4"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "share_6_4_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:sswitch_24
const-string/jumbo v0, "share_lay_btn_share"
goto :goto_6
:sswitch_28
const-string/jumbo v0, "share_lay_btn_cancel"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_14:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
invoke-static {v3, v4, v0, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionItem(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_42
const-string/jumbo v0, "share_lay_btn_location"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_18_1:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
invoke-static {v3, v4, v0, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionItem(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_5c
const-string/jumbo v0, "@"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_20_1:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
invoke-static {v3, v4, v0, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionItem(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:sswitch_76
const-string/jumbo v0, "share_lay_btn_template"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->enter:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_theme_template:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_21:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionActivity(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$activity;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
:sswitch_93
const-string/jumbo v0, "share_lay_btn_topic"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_19_1:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
invoke-static {v3, v4, v0, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionItem(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
:sswitch_ae
const-string/jumbo v0, "share_lay_btn_add_site"
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_15:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
invoke-static {v3, v4, v0, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionItem(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
nop
:sswitch_data_ca
.sparse-switch
0x7f0a0061 -> :sswitch_28
0x7f0a00c4 -> :sswitch_24
0x7f0a00cb -> :sswitch_42
0x7f0a00ce -> :sswitch_5c
0x7f0a00d2 -> :sswitch_93
0x7f0a00d5 -> :sswitch_76
0x7f0a00dd -> :sswitch_ae
.end sparse-switch
.end method
.method public static shareNowFail(Ljava/lang/String;)V
.registers 9
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "share_6_3"
invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v7, "_c360-adr-5.4.5_"
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$share;->share_now:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$other;->fail:Lcom/pinguo/camera360/lib/feedback/F$other;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_2_2:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
move-object v3, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShareStringOther(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Ljava/lang/String;Lcom/pinguo/camera360/lib/feedback/F$other;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v6, v7, v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "share_6_3_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static shareNowSuccess(Ljava/lang/String;)V
.registers 9
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "share_6_2"
invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v7, "_c360-adr-5.4.5_"
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$share;->share_now:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$other;->success:Lcom/pinguo/camera360/lib/feedback/F$other;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_2_1:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
move-object v3, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShareStringOther(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Ljava/lang/String;Lcom/pinguo/camera360/lib/feedback/F$other;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v6, v7, v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "share_6_2_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static shareSiteBindFail(Ljava/lang/String;)V
.registers 9
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "share_6_6"
invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v7, "_c360-adr-5.4.5_"
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$share;->binding_site:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$other;->fail:Lcom/pinguo/camera360/lib/feedback/F$other;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_16_2:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
move-object v3, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShareStringOther(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Ljava/lang/String;Lcom/pinguo/camera360/lib/feedback/F$other;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v6, v7, v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "share_6_6_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static shareSiteBindSuccess(Ljava/lang/String;)V
.registers 9
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "share_6_5"
invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v7, "_c360-adr-5.4.5_"
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$share;->binding_site:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$other;->success:Lcom/pinguo/camera360/lib/feedback/F$other;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_16_1:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
move-object v3, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShareStringOther(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Ljava/lang/String;Lcom/pinguo/camera360/lib/feedback/F$other;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v6, v7, v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "share_6_5_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static shareSiteSelectAfterGalleryBigPic(I)V
.registers 8
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_5c
:goto_6
:pswitch_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "share_6_12"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_preview:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$share;->share:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_35:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v0, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShareString(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "share_6_12_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_3c
const-string/jumbo v0, "qq"
goto :goto_6
:pswitch_40
const-string/jumbo v0, "weichat"
goto :goto_6
:pswitch_44
const-string/jumbo v0, "friend"
goto :goto_6
:pswitch_48
const-string/jumbo v0, "site"
goto :goto_6
:pswitch_4c
const-string/jumbo v0, "other"
goto :goto_6
:pswitch_50
const-string/jumbo v0, "instagram"
goto :goto_6
:pswitch_54
const-string/jumbo v0, "beetalk_chat"
goto :goto_6
:pswitch_58
const-string/jumbo v0, "beetalk_buzz"
goto :goto_6
:pswitch_data_5c
.packed-switch 0x0
:pswitch_3c
:pswitch_40
:pswitch_44
:pswitch_50
:pswitch_54
:pswitch_58
:pswitch_6
:pswitch_48
:pswitch_4c
.end packed-switch
.end method
.method public static shareSiteSelectAfterPhotoEdit(I)V
.registers 8
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_5c
:goto_6
:pswitch_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "share_6_13"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_preview:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$share;->share:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_36:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v0, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShareString(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "share_6_13_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_3c
const-string/jumbo v0, "qq"
goto :goto_6
:pswitch_40
const-string/jumbo v0, "weichat"
goto :goto_6
:pswitch_44
const-string/jumbo v0, "friend"
goto :goto_6
:pswitch_48
const-string/jumbo v0, "site"
goto :goto_6
:pswitch_4c
const-string/jumbo v0, "other"
goto :goto_6
:pswitch_50
const-string/jumbo v0, "instagram"
goto :goto_6
:pswitch_54
const-string/jumbo v0, "beetalk_chat"
goto :goto_6
:pswitch_58
const-string/jumbo v0, "beetalk_buzz"
goto :goto_6
:pswitch_data_5c
.packed-switch 0x0
:pswitch_3c
:pswitch_40
:pswitch_44
:pswitch_50
:pswitch_54
:pswitch_58
:pswitch_6
:pswitch_48
:pswitch_4c
.end packed-switch
.end method
.method public static shareSiteSelectAfterTakePicture(I)V
.registers 8
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_5c
:goto_6
:pswitch_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "share_6_11"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_preview:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$share;->share:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_34:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v4, v5, v0, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShareString(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "share_6_11_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_3c
const-string/jumbo v0, "qq"
goto :goto_6
:pswitch_40
const-string/jumbo v0, "weichat"
goto :goto_6
:pswitch_44
const-string/jumbo v0, "friend"
goto :goto_6
:pswitch_48
const-string/jumbo v0, "site"
goto :goto_6
:pswitch_4c
const-string/jumbo v0, "other"
goto :goto_6
:pswitch_50
const-string/jumbo v0, "instagram"
goto :goto_6
:pswitch_54
const-string/jumbo v0, "beetalk_chat"
goto :goto_6
:pswitch_58
const-string/jumbo v0, "beetalk_buzz"
goto :goto_6
:pswitch_data_5c
.packed-switch 0x0
:pswitch_3c
:pswitch_40
:pswitch_44
:pswitch_50
:pswitch_54
:pswitch_58
:pswitch_6
:pswitch_48
:pswitch_4c
.end packed-switch
.end method
.method public static shareSiteUnUse(Ljava/lang/String;)V
.registers 7
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "share_6_7"
invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v1, "_c360-adr-5.4.5_"
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$share;->site_disabled:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_17:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
invoke-static {v2, v3, v4, p0, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShareString(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "share_6_7_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static shareThemeTemplateSelected(Ljava/lang/String;)V
.registers 9
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "share_6_9"
invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v7, "_c360-adr-5.4.5_"
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$share;->share_template:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_24_1:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
move-object v4, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShareActionString(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v6, v7, v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "share_6_9_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static shareThemeTemplateUsed(Ljava/lang/String;)V
.registers 9
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "share_6_10"
invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/lib/feedback/F$key;->share:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v7, "_c360-adr-5.4.5_"
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$activity;->share_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$share;->share_template:Lcom/pinguo/camera360/lib/feedback/F$share;
sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->use:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->id_6_24_2:Lcom/pinguo/camera360/lib/feedback/FeventId$share;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$share;->name()Ljava/lang/String;
move-result-object v5
move-object v4, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionShareActionString(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$share;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v6, v7, v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "share_6_10_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method