.class public Lcom/pinguo/camera360/push/business/update/PushUpdateBean;
.super Ljava/lang/Object;
.source "PushUpdateBean.java"
.implements Lcom/pinguo/camera360/push/PushDataBean;
.field private static final KEY_LINK:Ljava/lang/String; = "link"
.field private static final KEY_MSG:Ljava/lang/String; = "msg"
.field private static final KEY_TIME_OTHER:Ljava/lang/String; = "alarmOther"
.field private static final KEY_TIME_WIFI:Ljava/lang/String; = "alarmWifi"
.field private static final KEY_TITLE:Ljava/lang/String; = "title"
.field private static final KEY_TYPE:Ljava/lang/String; = "type"
.field private static final KEY_VERSION_CODE:Ljava/lang/String; = "versionCode"
.field private static final TAG:Ljava/lang/String; = "newpush"
.field private link:Ljava/lang/String;
.field private msg:Ljava/lang/String;
.field private timeOther:I
.field private timeWifi:I
.field private title:Ljava/lang/String;
.field private versionCode:I
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->msg:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->title:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->link:Ljava/lang/String;
const/4 v0, 0x3
iput v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->timeWifi:I
const/4 v0, 0x7
iput v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->timeOther:I
const/16 v0, 0x1f5
iput v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->versionCode:I
return-void
.end method
.method public static getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/update/PushUpdateBean;
.registers 7
:try_start_0
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;
invoke-direct {v0}, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;-><init>()V
const-string/jumbo v3, "msg"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, v0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->msg:Ljava/lang/String;
const-string/jumbo v3, "title"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, v0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->title:Ljava/lang/String;
const-string/jumbo v3, "link"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, v0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->link:Ljava/lang/String;
const-string/jumbo v3, "alarmWifi"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v3
iput v3, v0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->timeWifi:I
const-string/jumbo v3, "newpush"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "timewifi: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v5, v0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->timeWifi:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "alarmOther"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v3
iput v3, v0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->timeOther:I
invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "versionCode"
invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_65
const-string/jumbo v3, "versionCode"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v3
iput v3, v0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->versionCode:I
:cond_65
:goto_65
:try_end_65
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_65} :catch_66
return-object v0
:catch_66
move-exception v1
const-string/jumbo v3, "newpush"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "push error:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
const/4 v0, 0x0
goto :goto_65
.end method
.method public static notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
.registers 18
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getData()Lcom/pinguo/camera360/push/PushDataBean;
move-result-object v6
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getNotifi()Lcom/pinguo/camera360/push/PushNotifyBean;
move-result-object v4
move-object v12, v6
check-cast v12, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;
invoke-virtual {v12}, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->getTitle()Ljava/lang/String;
move-result-object v10
move-object v12, v6
check-cast v12, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;
invoke-virtual {v12}, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->getLink()Ljava/lang/String;
move-result-object v2
move-object v12, v6
check-cast v12, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;
invoke-virtual {v12}, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->getMsg()Ljava/lang/String;
move-result-object v3
move-object v12, v6
check-cast v12, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;
invoke-virtual {v12}, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->getTimeWifi()I
move-result v9
move-object v12, v6
check-cast v12, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;
invoke-virtual {v12}, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->getTimeOther()I
move-result v8
check-cast v6, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;
invoke-virtual {v6}, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->getVersionCode()I
move-result v11
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v12
invoke-virtual {v12, v11}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCheckUpdateNewVersionCode(I)V
new-instance v1, Landroid/content/Intent;
const-class v12, Lcom/pinguo/camera360/push/utils/PushDialogActivity;
invoke-direct {v1, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
if-nez v2, :cond_43
const/4 v12, 0x2
:goto_42
return v12
:cond_43
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getShow()I
move-result v12
const/4 v13, 0x1
if-eq v12, v13, :cond_4b
const/4 v4, 0x0
:cond_4b
if-nez v4, :cond_82
new-instance v5, Lcom/pinguo/camera360/push/utils/PushPreference;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V
const-string/jumbo v12, "pref_push_update_show_back"
const/4 v13, 0x1
invoke-virtual {v5, v12, v13}, Lcom/pinguo/camera360/push/utils/PushPreference;->putInt(Ljava/lang/String;I)V
const-string/jumbo v12, "dialog_title"
invoke-virtual {v5, v12, v10}, Lcom/pinguo/camera360/push/utils/PushPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "btn_link_2"
invoke-virtual {v5, v12, v2}, Lcom/pinguo/camera360/push/utils/PushPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "dialog_msg"
invoke-virtual {v5, v12, v3}, Lcom/pinguo/camera360/push/utils/PushPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "dialog_alarm_wifi"
invoke-virtual {v5, v12, v9}, Lcom/pinguo/camera360/push/utils/PushPreference;->putInt(Ljava/lang/String;I)V
const-string/jumbo v12, "dialog_alarm_other"
invoke-virtual {v5, v12, v8}, Lcom/pinguo/camera360/push/utils/PushPreference;->putInt(Ljava/lang/String;I)V
const-string/jumbo v12, "dialog_version_code"
invoke-virtual {v5, v12, v11}, Lcom/pinguo/camera360/push/utils/PushPreference;->putInt(Ljava/lang/String;I)V
invoke-virtual {v5}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V
const/4 v12, 0x1
goto :goto_42
:cond_82
const-string/jumbo v12, "notify_title"
invoke-virtual {v4}, Lcom/pinguo/camera360/push/PushNotifyBean;->getTitle()Ljava/lang/String;
move-result-object v13
invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v12, "notify_msg"
invoke-virtual {v4}, Lcom/pinguo/camera360/push/PushNotifyBean;->getMsg()Ljava/lang/String;
move-result-object v13
invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v12, "notify_id"
move/from16 v0, p2
invoke-virtual {v1, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v12, "type"
const/4 v13, 0x7
invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v12, "dialog_title"
invoke-virtual {v1, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v12, "btn_link_2"
invoke-virtual {v1, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v12, "dialog_msg"
invoke-virtual {v1, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move/from16 v0, p2
invoke-static {p0, v1, v0}, Lcom/pinguo/camera360/push/utils/PushNotify;->showNotify(Landroid/content/Context;Landroid/content/Intent;I)Z
move-result v7
const-string/jumbo v12, "newpush"
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "push_update notify: "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v7, :cond_e3
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->setMessageId(Ljava/lang/String;)V
const/4 v12, 0x0
invoke-static {v12}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushUpdate(I)V
const/4 v12, 0x1
goto/16 :goto_42
:cond_e3
const/4 v12, 0x2
goto/16 :goto_42
.end method
.method public getLink()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->link:Ljava/lang/String;
return-object v0
.end method
.method public getMsg()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->msg:Ljava/lang/String;
return-object v0
.end method
.method public getTimeOther()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->timeOther:I
return v0
.end method
.method public getTimeWifi()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->timeWifi:I
return v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->title:Ljava/lang/String;
return-object v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->versionCode:I
return v0
.end method