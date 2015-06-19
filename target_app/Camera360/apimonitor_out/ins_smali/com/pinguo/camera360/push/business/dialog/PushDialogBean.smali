.class public Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;
.super Ljava/lang/Object;
.source "PushDialogBean.java"
.implements Lcom/pinguo/camera360/push/PushDataBean;
.field private static final KEY_BUTTON:Ljava/lang/String; = "buttons"
.field public static final KEY_DIALOG_ALARM_LAST:Ljava/lang/String; = "dialog_alarm_last"
.field public static final KEY_DIALOG_ALARM_OTHER:Ljava/lang/String; = "dialog_alarm_other"
.field public static final KEY_DIALOG_ALARM_TIME:J = 0x5265c00L
.field public static final KEY_DIALOG_ALARM_WIFI:Ljava/lang/String; = "dialog_alarm_wifi"
.field public static final KEY_DIALOG_BUTTON_1_LINK:Ljava/lang/String; = "btn_link_1"
.field public static final KEY_DIALOG_BUTTON_1_TXT:Ljava/lang/String; = "btn_txt_1"
.field public static final KEY_DIALOG_BUTTON_2_LINK:Ljava/lang/String; = "btn_link_2"
.field public static final KEY_DIALOG_BUTTON_2_TXT:Ljava/lang/String; = "btn_txt_2"
.field public static final KEY_DIALOG_MSG:Ljava/lang/String; = "dialog_msg"
.field public static final KEY_DIALOG_TITLE:Ljava/lang/String; = "dialog_title"
.field public static final KEY_DIALOG_VERSION_CODE:Ljava/lang/String; = "dialog_version_code"
.field public static final KEY_LINK:Ljava/lang/String; = "link"
.field private static final KEY_MSG:Ljava/lang/String; = "msg"
.field public static final KEY_NEED_SHOW_BACK:Ljava/lang/String; = "pref_push_update_show_back"
.field private static final KEY_TITLE:Ljava/lang/String; = "title"
.field private static final KEY_TXT:Ljava/lang/String; = "text"
.field private static final KEY_TYPE:Ljava/lang/String; = "type"
.field public static final KEY_UPDATE_VERSION:Ljava/lang/String; = "pref_push_update_version"
.field private static final TAG:Ljava/lang/String; = "newpush"
.field private static buttons:[Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
.field private msg:Ljava/lang/String;
.field private title:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->buttons:[Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->title:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->msg:Ljava/lang/String;
return-void
.end method
.method public static getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;
.registers 11
:try_start_0
const-string/jumbo v6, "newpush"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "dialog push\uff1a "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;
invoke-direct {v0}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;-><init>()V
const-string/jumbo v6, "title"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
iput-object v6, v0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->title:Ljava/lang/String;
const-string/jumbo v6, "msg"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
iput-object v6, v0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->msg:Ljava/lang/String;
const-string/jumbo v6, "buttons"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v5
new-array v6, v5, [Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
sput-object v6, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->buttons:[Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
const-string/jumbo v6, "newpush"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "jsonArray\uff1a "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x0
:goto_5c
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v6
if-lt v2, v6, :cond_63
:goto_62
return-object v0
:cond_63
const-string/jumbo v6, "newpush"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "jsonArray:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v8
const-string/jumbo v9, "text"
invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->buttons:[Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
new-instance v7, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
invoke-direct {v7}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;-><init>()V
aput-object v7, v6, v2
sget-object v6, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->buttons:[Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
aget-object v6, v6, v2
invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v7
const-string/jumbo v8, "text"
invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
#setter for: Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->txt:Ljava/lang/String;
invoke-static {v6, v7}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->access$0(Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->buttons:[Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
aget-object v6, v6, v2
invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v7
const-string/jumbo v8, "link"
invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
#setter for: Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->link:Ljava/lang/String;
invoke-static {v6, v7}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->access$1(Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;Ljava/lang/String;)V
:try_end_b1
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b1} :catch_b4
add-int/lit8 v2, v2, 0x1
goto :goto_5c
:catch_b4
move-exception v1
const-string/jumbo v6, "newpush"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "push error:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
const/4 v0, 0x0
goto :goto_62
.end method
.method public static notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
.registers 20
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getData()Lcom/pinguo/camera360/push/PushDataBean;
move-result-object v11
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getNotifi()Lcom/pinguo/camera360/push/PushNotifyBean;
move-result-object v10
move-object v14, v11
check-cast v14, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;
invoke-virtual {v14}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->getTitle()Ljava/lang/String;
move-result-object v13
move-object v14, v11
check-cast v14, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;
invoke-virtual {v14}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->getMsg()Ljava/lang/String;
move-result-object v9
check-cast v11, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;
invoke-virtual {v11}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->getButtons()[Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
move-result-object v8
const-string/jumbo v4, ""
const-string/jumbo v2, ""
const/4 v14, 0x0
:try_start_23
aget-object v14, v8, v14
invoke-virtual {v14}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->getLink()Ljava/lang/String;
move-result-object v2
const/4 v14, 0x0
aget-object v14, v8, v14
invoke-virtual {v14}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->getTxt()Ljava/lang/String;
:try_end_2f
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_e8
move-result-object v4
:goto_30
const/4 v14, 0x1
aget-object v14, v8, v14
invoke-virtual {v14}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->getTxt()Ljava/lang/String;
move-result-object v5
const/4 v14, 0x1
aget-object v14, v8, v14
invoke-virtual {v14}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->getLink()Ljava/lang/String;
move-result-object v3
const-string/jumbo v14, "newpush"
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "jsonArray\uff1a "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v7, Landroid/content/Intent;
const-class v14, Lcom/pinguo/camera360/push/utils/PushDialogActivity;
move-object/from16 v0, p0
invoke-direct {v7, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v14, "type"
const/4 v15, 0x3
invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v14, "dialog_title"
invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v14, "dialog_msg"
invoke-virtual {v7, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v14, "btn_txt_1"
invoke-virtual {v7, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v14, "btn_link_1"
invoke-virtual {v7, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v14, "btn_txt_2"
invoke-virtual {v7, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v14, "btn_link_2"
invoke-virtual {v7, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v14, "notify_title"
invoke-virtual {v10}, Lcom/pinguo/camera360/push/PushNotifyBean;->getTitle()Ljava/lang/String;
move-result-object v15
invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v14, "notify_msg"
invoke-virtual {v10}, Lcom/pinguo/camera360/push/PushNotifyBean;->getMsg()Ljava/lang/String;
move-result-object v15
invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v14, "notify_id"
move/from16 v0, p2
invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-object/from16 v0, p0
move/from16 v1, p2
invoke-static {v0, v7, v1}, Lcom/pinguo/camera360/push/utils/PushNotify;->showNotify(Landroid/content/Context;Landroid/content/Intent;I)Z
move-result v12
const-string/jumbo v14, "newpush"
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "push_dialog notify: "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v12, :cond_104
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->setMessageId(Ljava/lang/String;)V
const/4 v14, 0x3
invoke-static {v14}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushDialog(I)V
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->setMessageId(Ljava/lang/String;)V
const/4 v14, 0x0
invoke-static {v14}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushDialogView(I)V
const/4 v14, 0x1
:goto_e7
return v14
:catch_e8
move-exception v6
const-string/jumbo v14, "newpush"
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "error "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_30
:cond_104
const/4 v14, 0x2
goto :goto_e7
.end method
.method public getButtons()[Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
.registers 2
sget-object v0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->buttons:[Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
return-object v0
.end method
.method public getMsg()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->msg:Ljava/lang/String;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->title:Ljava/lang/String;
return-object v0
.end method