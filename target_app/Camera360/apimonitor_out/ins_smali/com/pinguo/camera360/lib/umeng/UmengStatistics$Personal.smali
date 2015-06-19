.class public Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;
.super Ljava/lang/Object;
.source "UmengStatistics.java"
.field private static final PERSONAL_1_1:Ljava/lang/String; = "Personal_1_1"
.field private static final PERSONAL_1_10:Ljava/lang/String; = "Personal_1_10"
.field private static final PERSONAL_1_11:Ljava/lang/String; = "Personal_1_11"
.field private static final PERSONAL_1_12:Ljava/lang/String; = "Personal_1_12"
.field private static final PERSONAL_1_13:Ljava/lang/String; = "Personal_1_13"
.field private static final PERSONAL_1_14:Ljava/lang/String; = "Personal_1_14"
.field private static final PERSONAL_1_15:Ljava/lang/String; = "Personal_1_15"
.field private static final PERSONAL_1_16:Ljava/lang/String; = "Personal_1_16"
.field private static final PERSONAL_1_17:Ljava/lang/String; = "Personal_1_17"
.field private static final PERSONAL_1_18:Ljava/lang/String; = "Personal_1_18"
.field private static final PERSONAL_1_19:Ljava/lang/String; = "Personal_1_19"
.field private static final PERSONAL_1_2:Ljava/lang/String; = "Personal_1_2"
.field private static final PERSONAL_1_20:Ljava/lang/String; = "Personal_1_20"
.field private static final PERSONAL_1_21:Ljava/lang/String; = "Personal_1_21"
.field private static final PERSONAL_1_22:Ljava/lang/String; = "Personal_1_22"
.field private static final PERSONAL_1_23:Ljava/lang/String; = "Personal_1_23"
.field private static final PERSONAL_1_3:Ljava/lang/String; = "Personal_1_3"
.field private static final PERSONAL_1_4:Ljava/lang/String; = "Personal_1_4"
.field private static final PERSONAL_1_5:Ljava/lang/String; = "Personal_1_5"
.field private static final PERSONAL_1_6:Ljava/lang/String; = "Personal_1_6"
.field private static final PERSONAL_1_7:Ljava/lang/String; = "Personal_1_7"
.field private static final PERSONAL_1_8:Ljava/lang/String; = "Personal_1_8"
.field private static final PERSONAL_1_9:Ljava/lang/String; = "Personal_1_9"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static personalEmail(I)V
.registers 4
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_30
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "Personal_1_23"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Personal_1_23_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "success"
goto :goto_6
:pswitch_28
const-string/jumbo v0, "fail"
goto :goto_6
:pswitch_2c
const-string/jumbo v0, "back"
goto :goto_6
:pswitch_data_30
.packed-switch 0x0
:pswitch_24
:pswitch_28
:pswitch_2c
.end packed-switch
.end method
.method public static personalGender(I)V
.registers 4
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_34
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "Personal_1_21"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Personal_1_21_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "man"
goto :goto_6
:pswitch_28
const-string/jumbo v0, "woman"
goto :goto_6
:pswitch_2c
const-string/jumbo v0, "ok"
goto :goto_6
:pswitch_30
const-string/jumbo v0, "back"
goto :goto_6
:pswitch_data_34
.packed-switch 0x0
:pswitch_24
:pswitch_28
:pswitch_2c
:pswitch_30
.end packed-switch
.end method
.method public static personalLayBtnClick(I)V
.registers 4
const-string/jumbo v0, ""
sparse-switch p0, :sswitch_data_30
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "Personal_1_20"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Personal_1_20_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:sswitch_24
const-string/jumbo v0, "changeFace"
goto :goto_6
:sswitch_28
const-string/jumbo v0, "changeNickName"
goto :goto_6
:sswitch_2c
const-string/jumbo v0, "quit"
goto :goto_6
:sswitch_data_30
.sparse-switch
0x7f0a04f4 -> :sswitch_24
0x7f0a04f6 -> :sswitch_28
0x7f0a0503 -> :sswitch_2c
.end sparse-switch
.end method
.method public static personalLayClick(I)V
.registers 6
const-string/jumbo v0, ""
const-string/jumbo v1, ""
packed-switch p0, :pswitch_data_72
:goto_9
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->cloud:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v3, "_c360-adr-5.4.5_"
invoke-static {v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "Personal_1_1"
invoke-static {v2, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Personal_1_1_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_33
const-string/jumbo v0, "enter"
const-string/jumbo v1, ""
goto :goto_9
:pswitch_3a
const-string/jumbo v0, "back"
const-string/jumbo v1, "activity:personal_center_page action:enter activity_destination:camera_main  event_id:id_1_16_3"
goto :goto_9
:pswitch_41
const-string/jumbo v0, "header"
const-string/jumbo v1, "activity:personal_center_page action:click percenter:accountinf  event_id:id_1_16_1"
goto :goto_9
:pswitch_48
const-string/jumbo v0, "cloud"
const-string/jumbo v1, "activity:personal_center_page action:enter activity_destination:cloud_home  event_id:id_1_16_2"
goto :goto_9
:pswitch_4f
const-string/jumbo v0, "order"
const-string/jumbo v1, "activity:personal_center_page action:click percenter:ordertrack  event_id:id_1_16_4"
goto :goto_9
:pswitch_56
const-string/jumbo v0, "message"
const-string/jumbo v1, "activity:personal_center_page action:click percenter:messagecen  event_id:id_1_16_5"
goto :goto_9
:pswitch_5d
const-string/jumbo v0, "fans"
const-string/jumbo v1, "activity:personal_center_page action:click percenter:fangroup  event_id:id_1_16_6"
goto :goto_9
:pswitch_64
const-string/jumbo v0, "feedback"
const-string/jumbo v1, "activity:personal_center_page action:click percenter:userfeedback  event_id:id_1_16_7"
goto :goto_9
:pswitch_6b
const-string/jumbo v0, "nearby"
const-string/jumbo v1, ""
goto :goto_9
:pswitch_data_72
.packed-switch 0x0
:pswitch_33
:pswitch_3a
:pswitch_41
:pswitch_48
:pswitch_4f
:pswitch_56
:pswitch_5d
:pswitch_64
:pswitch_6b
.end packed-switch
.end method
.method public static personalLoginErrorTipsShow(I)V
.registers 5
const-string/jumbo v0, ""
const-string/jumbo v1, ""
if-nez p0, :cond_34
const-string/jumbo v0, "enter_email"
const-string/jumbo v1, "activity:member_login_page action:prompt cloud:enter_email event_id:id_5_8_3"
:cond_e
:goto_e
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->cloud:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v3, "_c360-adr-5.4.5_"
invoke-static {v2, v3, v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "Personal_1_13"
invoke-static {v2, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Personal_1_13_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:cond_34
const/4 v2, 0x1
if-ne p0, v2, :cond_3e
const-string/jumbo v0, "enter_password"
const-string/jumbo v1, "activity:member_login_page action:prompt cloud:enter_password event_id:id_5_8_4"
goto :goto_e
:cond_3e
const/4 v2, 0x2
if-ne p0, v2, :cond_e
const-string/jumbo v0, "password_error"
const-string/jumbo v1, "activity:member_login_page action:prompt cloud:password_incorrect event_id:id_5_8_5"
goto :goto_e
.end method
.method public static personalLoginLayBtnClick(I)V
.registers 5
const-string/jumbo v0, ""
const-string/jumbo v1, ""
if-nez p0, :cond_34
const-string/jumbo v0, "findpassword"
const-string/jumbo v1, "activity:member_login_page action:click cloud:forgot_password event_id:id_5_8_2"
:cond_e
:goto_e
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->cloud:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v3, "_c360-adr-5.4.5_"
invoke-static {v2, v3, v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "Personal_1_12"
invoke-static {v2, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Personal_1_12_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:cond_34
const/4 v2, 0x1
if-ne p0, v2, :cond_e
const-string/jumbo v0, "login"
const-string/jumbo v1, "activity:member_login_page action:click cloud:land event_id:id_5_8_1"
goto :goto_e
.end method
.method public static personalMessageClick(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "Personal_1_3"
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {}, Lcom/pinguo/camera360/push/utils/SystemUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "Personal_1_3_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/pinguo/camera360/push/utils/SystemUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static personalMessageRemove(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "activity:messagecen_page action:deletes percenter:information informationid:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " event_id:id_1_17_2"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->cloud:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
invoke-static {v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "Personal_1_4"
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Lcom/pinguo/camera360/push/utils/SystemUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Personal_1_4_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/push/utils/SystemUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static personalMessageShow(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "activity:messagecen_page action:view percenter:information informationid:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " event_id:id_1_17_1"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->cloud:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
invoke-static {v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "Personal_1_2"
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Lcom/pinguo/camera360/push/utils/SystemUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Personal_1_2_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/push/utils/SystemUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static personalPasswordFindBackLayEmailClick()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->cloud:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v1, "_c360-adr-5.4.5_"
const-string/jumbo v2, "activity:forgot_password_page action:click cloud:login_email event_id:id_5_9_2"
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "Personal_1_17"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "Personal_1_17"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static personalRegisterClick(I)V
.registers 6
const-string/jumbo v0, ""
const-string/jumbo v1, ""
packed-switch p0, :pswitch_data_68
:goto_9
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->cloud:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v3, "_c360-adr-5.4.5_"
invoke-static {v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "Personal_1_6"
invoke-static {v2, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Personal_1_6_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_33
const-string/jumbo v0, "FeedBack"
const-string/jumbo v1, "activity:user_feedback_page action:enter activity_destination:member_registration_page event_id:id_5_1_1"
goto :goto_9
:pswitch_3a
const-string/jumbo v0, "Store"
const-string/jumbo v1, "activity:effect_store action:enter activity_destination:member_registration_page event_id:id_5_1_2"
goto :goto_9
:pswitch_41
const-string/jumbo v0, "EffectDetail"
const-string/jumbo v1, "activity:effect_introduction_page action:enter activity_destination:member_registration_page event_id:id_5_1_3"
goto :goto_9
:pswitch_48
const-string/jumbo v0, "Setting"
const-string/jumbo v1, "activity:site_main action:enter activity_destination:member_registration_page event_id:id_5_1_4"
goto :goto_9
:pswitch_4f
const-string/jumbo v0, "Cart"
const-string/jumbo v1, "activity:document_cart_page action:enter activity_destination:member_registration_page event_id:id_5_1_5"
goto :goto_9
:pswitch_56
const-string/jumbo v0, "Center"
const-string/jumbo v1, "activity:personal_center_page action:enter activity_destination:member_registration_page event_id:id_5_1_6"
goto :goto_9
:pswitch_5d
const-string/jumbo v0, "Center_Cloud"
goto :goto_9
:pswitch_61
const-string/jumbo v0, "Gallery_Cloud"
const-string/jumbo v1, "activity:gallery_small_activity action:enter activity_destination:member_registration_page event_id:id_5_1_7"
goto :goto_9
:pswitch_data_68
.packed-switch 0x0
:pswitch_33
:pswitch_3a
:pswitch_41
:pswitch_48
:pswitch_4f
:pswitch_56
:pswitch_5d
:pswitch_61
.end packed-switch
.end method
.method public static personalRegisterErrorTips(I)V
.registers 5
const-string/jumbo v0, ""
const-string/jumbo v1, ""
packed-switch p0, :pswitch_data_44
:goto_9
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->cloud:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v3, "_c360-adr-5.4.5_"
invoke-static {v2, v3, v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "Personal_1_9"
invoke-static {v2, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Personal_1_9_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_2f
const-string/jumbo v0, "num_0_9"
const-string/jumbo v1, ""
goto :goto_9
:pswitch_36
const-string/jumbo v0, "email"
const-string/jumbo v1, "activity:member_registration_page action:prompt cloud:import_email event_id:id_5_4_1"
goto :goto_9
:pswitch_3d
const-string/jumbo v0, "already_regist"
const-string/jumbo v1, "activity:member_registration_page action:prompt cloud:email_registered event_id:id_5_4_2"
goto :goto_9
:pswitch_data_44
.packed-switch 0x0
:pswitch_2f
:pswitch_36
:pswitch_3d
.end packed-switch
.end method
.method public static personalRegisterLayBtnClick(I)V
.registers 5
const-string/jumbo v0, ""
const-string/jumbo v1, ""
sparse-switch p0, :sswitch_data_44
:goto_9
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->cloud:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v3, "_c360-adr-5.4.5_"
invoke-static {v2, v3, v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "Personal_1_8"
invoke-static {v2, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Personal_1_8_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:sswitch_2f
const-string/jumbo v0, "register"
const-string/jumbo v1, "activity:member_registration_page action:click cloud:create_account event_id:id_5_3_2"
goto :goto_9
:sswitch_36
const-string/jumbo v0, "login"
const-string/jumbo v1, "activity:member_registration_page action:click cloud:already_account event_id:id_5_3_1"
goto :goto_9
:sswitch_3d
const-string/jumbo v0, "back"
const-string/jumbo v1, "activity:member_registration_page action:click cloud:back event_id:id_5_3_3"
goto :goto_9
:sswitch_data_44
.sparse-switch
0x0 -> :sswitch_3d
0x7f0a02bd -> :sswitch_2f
0x7f0a02be -> :sswitch_36
.end sparse-switch
.end method
.method public static personalRegisterLayShow(I)V
.registers 4
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_40
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "Personal_1_7"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Personal_1_7_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "FeedBack"
goto :goto_6
:pswitch_28
const-string/jumbo v0, "Store"
goto :goto_6
:pswitch_2c
const-string/jumbo v0, "EffectDetail"
goto :goto_6
:pswitch_30
const-string/jumbo v0, "Setting"
goto :goto_6
:pswitch_34
const-string/jumbo v0, "Cart"
goto :goto_6
:pswitch_38
const-string/jumbo v0, "Center"
goto :goto_6
:pswitch_3c
const-string/jumbo v0, "Gallery"
goto :goto_6
:pswitch_data_40
.packed-switch 0x0
:pswitch_24
:pswitch_28
:pswitch_2c
:pswitch_30
:pswitch_34
:pswitch_38
:pswitch_3c
.end packed-switch
.end method
.method public static personalSignature(I)V
.registers 4
const-string/jumbo v0, ""
if-nez p0, :cond_26
const-string/jumbo v0, "ok"
:goto_8
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "Personal_1_22"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Personal_1_22_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:cond_26
const-string/jumbo v0, "back"
goto :goto_8
.end method