.class public Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;
.super Ljava/lang/Object;
.source "PushWakeUpBean.java"
.implements Lcom/pinguo/camera360/push/PushDataBean;
.field private static final KEY_DAYS:Ljava/lang/String; = "days"
.field private static final KEY_MSG:Ljava/lang/String; = "msg"
.field public static final KEY_PUSH_WAKE_NEXT_TIME:Ljava/lang/String; = "pref_push_wake_next_time"
.field private static final KEY_TITLE:Ljava/lang/String; = "title"
.field private static final TAG:Ljava/lang/String; = "newpush"
.field public static final WAKEUP:Ljava/lang/String; = "pushWakeUp"
.field private days:I
.field private msg:Ljava/lang/String;
.field private title:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0xf
iput v0, p0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->days:I
iput-object v1, p0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->title:Ljava/lang/String;
iput-object v1, p0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->msg:Ljava/lang/String;
return-void
.end method
.method public static getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;
.registers 7
:try_start_0
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;
invoke-direct {v0}, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;-><init>()V
const-string/jumbo v3, "days"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v3
iput v3, v0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->days:I
const-string/jumbo v3, "title"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, v0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->title:Ljava/lang/String;
const-string/jumbo v3, "msg"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, v0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->msg:Ljava/lang/String;
:goto_25
:try_end_25
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26
return-object v0
:catch_26
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
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
const/4 v0, 0x0
goto :goto_25
.end method
.method public static notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
.registers 14
const/4 v7, 0x2
const/4 v6, 0x1
invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getData()Lcom/pinguo/camera360/push/PushDataBean;
move-result-object v4
invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getNotifi()Lcom/pinguo/camera360/push/PushNotifyBean;
move-result-object v2
instance-of v8, v4, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;
if-eqz v8, :cond_7b
move-object v0, v4
check-cast v0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;
new-instance v3, Lcom/pinguo/camera360/push/utils/PushPreference;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V
const-string/jumbo v8, "key_weak_up_days"
iget v9, v0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->days:I
invoke-virtual {v3, v8, v9}, Lcom/pinguo/camera360/push/utils/PushPreference;->putInt(Ljava/lang/String;I)V
const-string/jumbo v8, "key_weak_up_title"
iget-object v9, v0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->title:Ljava/lang/String;
invoke-virtual {v3, v8, v9}, Lcom/pinguo/camera360/push/utils/PushPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v8, "key_weak_up_msg"
iget-object v9, v0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->msg:Ljava/lang/String;
invoke-virtual {v3, v8, v9}, Lcom/pinguo/camera360/push/utils/PushPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V
if-eqz v2, :cond_78
invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v1
const-string/jumbo v8, "notify_title"
invoke-virtual {v2}, Lcom/pinguo/camera360/push/PushNotifyBean;->getTitle()Ljava/lang/String;
move-result-object v9
invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v8, "notify_msg"
invoke-virtual {v2}, Lcom/pinguo/camera360/push/PushNotifyBean;->getMsg()Ljava/lang/String;
move-result-object v9
invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v8, "notify_id"
invoke-virtual {v1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-static {p0, v1, p2}, Lcom/pinguo/camera360/push/utils/PushNotify;->showNotify(Landroid/content/Context;Landroid/content/Intent;I)Z
move-result v5
const-string/jumbo v8, "newpush"
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "push_wake_up notify: "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v5, :cond_79
invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->setMessageId(Ljava/lang/String;)V
const/4 v7, 0x0
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushWakeUp(I)V
:cond_78
:goto_78
return v6
:cond_79
move v6, v7
goto :goto_78
:cond_7b
move v6, v7
goto :goto_78
.end method
.method public getDays()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->days:I
return v0
.end method
.method public getMsg()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->msg:Ljava/lang/String;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->title:Ljava/lang/String;
return-object v0
.end method