.class public Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;
.super Ljava/lang/Object;
.source "UmengStatistics.java"
.field private static final PASSPORT_1_1:Ljava/lang/String; = "passport_1_1"
.field private static final PASSPORT_1_10:Ljava/lang/String; = "passport_1_10"
.field private static final PASSPORT_1_11:Ljava/lang/String; = "passport_1_11"
.field private static final PASSPORT_1_12:Ljava/lang/String; = "passport_1_12"
.field private static final PASSPORT_1_13:Ljava/lang/String; = "passport_1_13"
.field private static final PASSPORT_1_14:Ljava/lang/String; = "passport_1_14"
.field private static final PASSPORT_1_15:Ljava/lang/String; = "passport_1_15"
.field private static final PASSPORT_1_16:Ljava/lang/String; = "passport_1_16"
.field private static final PASSPORT_1_17:Ljava/lang/String; = "passport_1_17"
.field private static final PASSPORT_1_18:Ljava/lang/String; = "passport_1_18"
.field private static final PASSPORT_1_19:Ljava/lang/String; = "passport_1_19"
.field private static final PASSPORT_1_2:Ljava/lang/String; = "passport_1_2"
.field private static final PASSPORT_1_20:Ljava/lang/String; = "passport_1_20"
.field private static final PASSPORT_1_21:Ljava/lang/String; = "passport_1_21"
.field private static final PASSPORT_1_22:Ljava/lang/String; = "passport_1_22"
.field private static final PASSPORT_1_23:Ljava/lang/String; = "passport_1_23"
.field private static final PASSPORT_1_3:Ljava/lang/String; = "passport_1_3"
.field private static final PASSPORT_1_4:Ljava/lang/String; = "passport_1_4"
.field private static final PASSPORT_1_5:Ljava/lang/String; = "passport_1_5"
.field private static final PASSPORT_1_6:Ljava/lang/String; = "passport_1_6"
.field private static final PASSPORT_1_7:Ljava/lang/String; = "passport_1_7"
.field private static final PASSPORT_1_8:Ljava/lang/String; = "passport_1_8"
.field private static final PASSPORT_1_9:Ljava/lang/String; = "passport_1_9"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static passportAdressLay(I)V
.registers 4
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_34
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "passport_1_21"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "passport_1_21_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "PV"
goto :goto_6
:pswitch_28
const-string/jumbo v0, "save_click"
goto :goto_6
:pswitch_2c
const-string/jumbo v0, "save_success"
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
.method public static passportCartLay()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "passport_1_19"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "passport_1_19"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static passportCartLayBtnClick(I)V
.registers 6
const-string/jumbo v0, ""
const-string/jumbo v1, ""
sparse-switch p0, :sswitch_data_5a
:goto_9
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1e
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v3, "_c360-adr-5.4.5_"
invoke-static {v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
:cond_1e
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "passport_1_13"
invoke-static {v2, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "passport_1_13_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:sswitch_3c
const-string/jumbo v0, "btn_share"
const-string/jumbo v1, ""
goto :goto_9
:sswitch_43
const-string/jumbo v0, "btn_back"
const-string/jumbo v1, "activity:document_cart_page action:click idphoto:back event_id:id_13_8_2"
goto :goto_9
:sswitch_4a
const-string/jumbo v0, "btn_make"
const-string/jumbo v1, "activity:document_cart_page action:click idphoto:nowmaking event_id:id_13_8_1"
goto :goto_9
:sswitch_51
const-string/jumbo v0, "make_login"
goto :goto_9
:sswitch_55
const-string/jumbo v0, "make_no_login"
goto :goto_9
nop
:sswitch_data_5a
.sparse-switch
0x0 -> :sswitch_3c
0x1 -> :sswitch_43
0x2 -> :sswitch_51
0x3 -> :sswitch_55
0x7f0a01b2 -> :sswitch_4a
.end sparse-switch
.end method
.method public static passportCatLoginSuccessToNextLay(I)V
.registers 4
const-string/jumbo v0, ""
if-nez p0, :cond_26
const-string/jumbo v0, "address"
:goto_8
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "passport_1_22"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "passport_1_22_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:cond_26
const-string/jumbo v0, "order"
goto :goto_8
.end method
.method public static passportCatLoginedNextLay(I)V
.registers 4
const-string/jumbo v0, ""
if-nez p0, :cond_26
const-string/jumbo v0, "address"
:goto_8
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "passport_1_23"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "passport_1_23_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:cond_26
const-string/jumbo v0, "order"
goto :goto_8
.end method
.method public static passportCheckAddress()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "passport_1_14"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "passport_1_14"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static passportClothesFunction(I)V
.registers 5
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_24
:goto_6
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
invoke-static {v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
return-void
:pswitch_13
const-string/jumbo v0, "activity:idphoto_clothedit_page action:click idphoto:cancel event_id:id_13_6_2"
goto :goto_6
:pswitch_17
const-string/jumbo v0, "activity:idphoto_clothedit_page action:click idphoto:menswear event_id:id_13_6_3"
goto :goto_6
:pswitch_1b
const-string/jumbo v0, "activity:idphoto_clothedit_page action:click idphoto:womenswear event_id:id_13_6_4"
goto :goto_6
:pswitch_1f
const-string/jumbo v0, "activity:idphoto_clothedit_page action:click idphoto:apply event_id:id_13_6_1"
goto :goto_6
nop
:pswitch_data_24
.packed-switch 0x0
:pswitch_13
:pswitch_17
:pswitch_1b
:pswitch_1f
.end packed-switch
.end method
.method public static passportClothesManUse(I)V
.registers 5
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_34
:goto_6
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
invoke-static {v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
return-void
:pswitch_13
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:male0 event_id:id_13_6_5_0"
goto :goto_6
:pswitch_17
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:male1 event_id:id_13_6_5_1"
goto :goto_6
:pswitch_1b
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:male2 event_id:id_13_6_5_2"
goto :goto_6
:pswitch_1f
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:male3 event_id:id_13_6_5_3"
goto :goto_6
:pswitch_23
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:male4 event_id:id_13_6_5_4"
goto :goto_6
:pswitch_27
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:male5 event_id:id_13_6_5_5"
goto :goto_6
:pswitch_2b
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:male6 event_id:id_13_6_5_6"
goto :goto_6
:pswitch_2f
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:male7 event_id:id_13_6_5_7"
goto :goto_6
nop
:pswitch_data_34
.packed-switch 0x0
:pswitch_13
:pswitch_17
:pswitch_1b
:pswitch_1f
:pswitch_23
:pswitch_27
:pswitch_2b
:pswitch_2f
.end packed-switch
.end method
.method public static passportClothesWomanUse(I)V
.registers 5
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_34
:goto_6
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
invoke-static {v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
return-void
:pswitch_13
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:female0 event_id:id_13_6_6_0"
goto :goto_6
:pswitch_17
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:female1 event_id:id_13_6_6_1"
goto :goto_6
:pswitch_1b
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:female2 event_id:id_13_6_6_2"
goto :goto_6
:pswitch_1f
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:female3 event_id:id_13_6_6_3"
goto :goto_6
:pswitch_23
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:female4 event_id:id_13_6_6_4"
goto :goto_6
:pswitch_27
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:female5 event_id:id_13_6_6_5"
goto :goto_6
:pswitch_2b
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:female6 event_id:id_13_6_6_6"
goto :goto_6
:pswitch_2f
const-string/jumbo v0, "activity:idphoto_clothedit_page action:use idphoto:female7 event_id:id_13_6_6_7"
goto :goto_6
nop
:pswitch_data_34
.packed-switch 0x0
:pswitch_13
:pswitch_17
:pswitch_1b
:pswitch_1f
:pswitch_23
:pswitch_27
:pswitch_2b
:pswitch_2f
.end packed-switch
.end method
.method public static passportEdgeFunction(I)V
.registers 5
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_24
:goto_6
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
invoke-static {v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
return-void
:pswitch_13
const-string/jumbo v0, "activity:idphoto_bgedit_page action:click idphoto:erase event_id:id_13_4_1"
goto :goto_6
:pswitch_17
const-string/jumbo v0, "activity:idphoto_bgedit_page action:click idphoto:restore event_id:id_13_4_2"
goto :goto_6
:pswitch_1b
const-string/jumbo v0, "activity:idphoto_bgedit_page action:click idphoto:apply event_id:id_13_4_3"
goto :goto_6
:pswitch_1f
const-string/jumbo v0, "activity:idphoto_bgedit_page action:click idphoto:cancel event_id:id_13_4_4"
goto :goto_6
nop
:pswitch_data_24
.packed-switch 0x0
:pswitch_13
:pswitch_17
:pswitch_1b
:pswitch_1f
.end packed-switch
.end method
.method public static passportEditBtnClick()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v1, "_c360-adr-5.4.5_"
const-string/jumbo v2, "activity:idphoto_edit_page action:click idphoto:saveproduce event_id:id_13_3_5"
invoke-static {v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "passport_1_4"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "passport_1_4"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static passportEditLayClick(I)V
.registers 6
const-string/jumbo v0, ""
const-string/jumbo v1, ""
packed-switch p0, :pswitch_data_48
:goto_9
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v3, "_c360-adr-5.4.5_"
invoke-static {v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "passport_1_5"
invoke-static {v2, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "passport_1_5_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_33
const-string/jumbo v0, "skin"
const-string/jumbo v1, "activity:idphoto_edit_page action:click idphoto:beauty event_id:id_13_3_3"
goto :goto_9
:pswitch_3a
const-string/jumbo v0, "edge"
const-string/jumbo v1, "activity:idphoto_edit_page action:click idphoto:background event_id:id_13_3_2"
goto :goto_9
:pswitch_41
const-string/jumbo v0, "clothes"
const-string/jumbo v1, "activity:idphoto_edit_page action:click idphoto:clothing event_id:id_13_3_4"
goto :goto_9
:pswitch_data_48
.packed-switch 0x7f0a0301
:pswitch_41
:pswitch_33
:pswitch_3a
.end packed-switch
.end method
.method public static passportEditLayUse(I)V
.registers 4
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_30
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "passport_1_6"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "passport_1_6_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "edge"
goto :goto_6
:pswitch_28
const-string/jumbo v0, "skin"
goto :goto_6
:pswitch_2c
const-string/jumbo v0, "clothes"
goto :goto_6
:pswitch_data_30
.packed-switch 0x0
:pswitch_24
:pswitch_28
:pswitch_2c
.end packed-switch
.end method
.method public static passportFaceBeautifulFunctionClick(I)V
.registers 4
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_30
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "passport_1_7"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "passport_1_7_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "skin_white"
goto :goto_6
:pswitch_28
const-string/jumbo v0, "skin_edge_face"
goto :goto_6
:pswitch_2c
const-string/jumbo v0, "skin_beauty"
goto :goto_6
:pswitch_data_30
.packed-switch 0x7f0a0305
:pswitch_24
:pswitch_2c
:pswitch_28
.end packed-switch
.end method
.method public static passportFaceCheckSuccess()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v1, "_c360-adr-5.4.5_"
const-string/jumbo v2, "activity:idphoto_edit_page action:click idphoto:face_detection other:success event_id:id_13_3_1"
invoke-static {v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "passport_1_3"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "passport_1_3"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static passportGalleryLayBtnClick(I)V
.registers 6
const-string/jumbo v0, ""
const-string/jumbo v1, ""
sparse-switch p0, :sswitch_data_48
:goto_9
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v3, "_c360-adr-5.4.5_"
invoke-static {v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "passport_1_2"
invoke-static {v2, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "passport_1_2_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:sswitch_33
const-string/jumbo v0, "camera"
const-string/jumbo v1, "activity:idphoto_album_page action:enter activity_destination:camera_main event_id:id_13_2_4"
goto :goto_9
:sswitch_3a
const-string/jumbo v0, "delete"
const-string/jumbo v1, "activity:idphoto_album_page action:click idphoto:delete event_id:id_13_2_1"
goto :goto_9
:sswitch_41
const-string/jumbo v0, "make"
const-string/jumbo v1, "activity:idphoto_album_page action:click idphoto:nowmaking event_id:id_13_2_3"
goto :goto_9
:sswitch_data_48
.sparse-switch
0x7f0a00b1 -> :sswitch_33
0x7f0a02e3 -> :sswitch_3a
0x7f0a02e5 -> :sswitch_41
.end sparse-switch
.end method
.method public static passportGuideBtnClick(I)V
.registers 6
const-string/jumbo v0, ""
const-string/jumbo v1, ""
packed-switch p0, :pswitch_data_48
:goto_9
sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v3, "_c360-adr-5.4.5_"
invoke-static {v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "passport_1_1"
invoke-static {v2, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "passport_1_1_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_33
const-string/jumbo v0, "start"
const-string/jumbo v1, "activity:camera_main action:click idphoto:boot_animation event_id:id_13_1"
goto :goto_9
:pswitch_3a
const-string/jumbo v0, "make"
const-string/jumbo v1, "activity:passport_guide_page action:click idphoto:nowmaking event_id:id_13_10_1"
goto :goto_9
:pswitch_41
const-string/jumbo v0, "skip"
const-string/jumbo v1, "activity:passport_guide_page action:click idphoto:skip event_id:id_13_10_2"
goto :goto_9
:pswitch_data_48
.packed-switch 0x0
:pswitch_33
:pswitch_3a
:pswitch_41
.end packed-switch
.end method
.method public static passportPayFinishDialogShow()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "passport_1_9"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "passport_1_9"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static passportPayLayBtnClick(I)V
.registers 5
const-string/jumbo v0, ""
const-string/jumbo v1, ""
packed-switch p0, :pswitch_data_3c
:goto_9
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "passport_1_8"
invoke-static {v2, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "passport_1_8_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_27
const-string/jumbo v0, "wxpay"
const-string/jumbo v1, ""
goto :goto_9
:pswitch_2e
const-string/jumbo v0, "alipay"
const-string/jumbo v1, ""
goto :goto_9
:pswitch_35
const-string/jumbo v0, "cancel"
const-string/jumbo v1, ""
goto :goto_9
:pswitch_data_3c
.packed-switch 0x7f0a03a5
:pswitch_2e
:pswitch_27
:pswitch_35
.end packed-switch
.end method
.method public static passportPlayBtn()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "passport_1_11"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "passport_1_11"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static passportPromeClick(I)V
.registers 4
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_38
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "passport_1_16"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "passport_1_16_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "pv"
goto :goto_6
:pswitch_28
const-string/jumbo v0, "none"
goto :goto_6
:pswitch_2c
const-string/jumbo v0, "share"
goto :goto_6
:pswitch_30
const-string/jumbo v0, "code"
goto :goto_6
:pswitch_34
const-string/jumbo v0, "back"
goto :goto_6
:pswitch_data_38
.packed-switch 0x0
:pswitch_24
:pswitch_28
:pswitch_2c
:pswitch_30
:pswitch_34
.end packed-switch
.end method
.method public static passportPromoSelected(I)V
.registers 4
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_30
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "passport_1_17"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "passport_1_17_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "none"
goto :goto_6
:pswitch_28
const-string/jumbo v0, "share"
goto :goto_6
:pswitch_2c
const-string/jumbo v0, "code"
goto :goto_6
:pswitch_data_30
.packed-switch 0x0
:pswitch_24
:pswitch_28
:pswitch_2c
.end packed-switch
.end method
.method public static passportPromoUseSuccess()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "passport_1_18"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "passport_1_18"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static passportSelectedLay()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "passport_1_20"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "passport_1_20"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static passportSelectedLayBtnClick()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "passport_1_10"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "passport_1_10"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static passportSelectedTabClick(ILjava/lang/String;)V
.registers 6
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_3c
:goto_6
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
invoke-static {v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "passport_1_12"
invoke-static {v1, v2, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "passport_1_12_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_30
const-string/jumbo v0, "activity:document_select_page action:click idphoto:determine event_id:id_13_7_1"
goto :goto_6
:pswitch_34
const-string/jumbo v0, "activity:document_select_page action:click idphoto:common event_id:id_13_7_2"
goto :goto_6
:pswitch_38
const-string/jumbo v0, "activity:document_select_page action:click idphoto:size event_id:id_13_7_3"
goto :goto_6
:pswitch_data_3c
.packed-switch 0x7f0a01b8
:pswitch_30
:pswitch_34
:pswitch_38
.end packed-switch
.end method
.method public static passportShareFree()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "passport_1_15"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "passport_1_15"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static passportSkinFunction(I)V
.registers 5
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_28
:goto_6
sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->commerce:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v2, "_c360-adr-5.4.5_"
invoke-static {v0}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
return-void
:pswitch_13
const-string/jumbo v0, "activity:idphoto_beautyedit_page action:click idphoto:cancel event_id:id_13_5_5"
goto :goto_6
:pswitch_17
const-string/jumbo v0, "activity:idphoto_beautyedit_page action:click idphoto:apply event_id:id_13_5_4"
goto :goto_6
:pswitch_1b
const-string/jumbo v0, "activity:idphoto_beautyedit_page action:click idphoto:whitening event_id:id_13_5_2"
goto :goto_6
:pswitch_1f
const-string/jumbo v0, "activity:idphoto_beautyedit_page action:click idphoto:facelift event_id:id_13_5_3"
goto :goto_6
:pswitch_23
const-string/jumbo v0, "activity:idphoto_bgedit_page action:click idphoto:skin_beauty event_id:id_13_5_1"
goto :goto_6
nop
:pswitch_data_28
.packed-switch 0x0
:pswitch_13
:pswitch_17
:pswitch_1b
:pswitch_1f
:pswitch_23
.end packed-switch
.end method