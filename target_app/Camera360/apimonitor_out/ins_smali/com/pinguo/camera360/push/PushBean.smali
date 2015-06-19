.class public Lcom/pinguo/camera360/push/PushBean;
.super Ljava/lang/Object;
.source "PushBean.java"
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd HH:mm"
.field public static final PUSH_TYPE_ACTIVITY:I = 0x4
.field public static final PUSH_TYPE_DIALOG:I = 0x3
.field public static final PUSH_TYPE_SCENE:I = 0x5
.field public static final PUSH_TYPE_SIMPLE:I = 0x1
.field public static final PUSH_TYPE_THEME:I = 0x6
.field public static final PUSH_TYPE_UPDATE:I = 0x7
.field public static final PUSH_TYPE_WAKEUP:I = 0x8
.field public static final PUSH_TYPE_WEB:I = 0x2
.field private data:Lcom/pinguo/camera360/push/PushDataBean;
.field private from:Ljava/util/Date;
.field private id:Ljava/lang/String;
.field private json:Ljava/lang/String;
.field private notifi:Lcom/pinguo/camera360/push/PushNotifyBean;
.field private show:I
.field private to:Ljava/util/Date;
.field private type:I
.method private constructor <init>()V
.registers 3
const/4 v1, -0x1
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->json:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->id:Ljava/lang/String;
iput v1, p0, Lcom/pinguo/camera360/push/PushBean;->show:I
iput v1, p0, Lcom/pinguo/camera360/push/PushBean;->type:I
iput-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->from:Ljava/util/Date;
iput-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->to:Ljava/util/Date;
iput-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->notifi:Lcom/pinguo/camera360/push/PushNotifyBean;
iput-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->data:Lcom/pinguo/camera360/push/PushDataBean;
return-void
.end method
.method public static getPushBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/PushBean;
.registers 10
const/4 v5, 0x0
const-string/jumbo v6, "newpush"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "PushBean json:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-nez p0, :cond_1b
move-object v0, v5
:goto_1a
return-object v0
:try_start_1b
:cond_1b
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/push/PushBean;
invoke-direct {v0}, Lcom/pinguo/camera360/push/PushBean;-><init>()V
iput-object p0, v0, Lcom/pinguo/camera360/push/PushBean;->json:Ljava/lang/String;
const-string/jumbo v6, "id"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
iput-object v6, v0, Lcom/pinguo/camera360/push/PushBean;->id:Ljava/lang/String;
const-string/jumbo v6, "type"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v6
iput v6, v0, Lcom/pinguo/camera360/push/PushBean;->type:I
const-string/jumbo v6, "from"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "yyyyMMdd HH:mm"
invoke-static {v6, v7}, Lcom/pinguo/lib/util/TimeUtils;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
move-result-object v6
iput-object v6, v0, Lcom/pinguo/camera360/push/PushBean;->from:Ljava/util/Date;
iget-object v6, v0, Lcom/pinguo/camera360/push/PushBean;->from:Ljava/util/Date;
:try_end_4f
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4f} :catch_89
if-nez v6, :cond_53
move-object v0, v5
goto :goto_1a
:try_start_53
:cond_53
const-string/jumbo v6, "to"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "yyyyMMdd HH:mm"
invoke-static {v6, v7}, Lcom/pinguo/lib/util/TimeUtils;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
move-result-object v6
iput-object v6, v0, Lcom/pinguo/camera360/push/PushBean;->to:Ljava/util/Date;
:try_end_63
.catch Lorg/json/JSONException; {:try_start_53 .. :try_end_63} :catch_84
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_63} :catch_89
:goto_63
:try_start_63
const-string/jumbo v6, "show"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v6
iput v6, v0, Lcom/pinguo/camera360/push/PushBean;->show:I
iget v6, v0, Lcom/pinguo/camera360/push/PushBean;->show:I
const/4 v7, 0x1
if-ne v6, v7, :cond_94
const-string/jumbo v6, "notify"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/pinguo/camera360/push/PushNotifyBean;->jsonToBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/PushNotifyBean;
move-result-object v3
if-nez v3, :cond_92
move-object v0, v5
goto :goto_1a
:catch_84
move-exception v2
const/4 v6, 0x0
iput-object v6, v0, Lcom/pinguo/camera360/push/PushBean;->to:Ljava/util/Date;
:try_end_88
.catch Ljava/lang/Exception; {:try_start_63 .. :try_end_88} :catch_89
goto :goto_63
:catch_89
move-exception v2
const-string/jumbo v6, "push"
invoke-static {v6, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v5
goto :goto_1a
:try_start_92
:cond_92
iput-object v3, v0, Lcom/pinguo/camera360/push/PushBean;->notifi:Lcom/pinguo/camera360/push/PushNotifyBean;
:cond_94
const-string/jumbo v6, "data"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
iget v7, v0, Lcom/pinguo/camera360/push/PushBean;->type:I
invoke-static {v6, v7}, Lcom/pinguo/camera360/push/PushBean;->getPushDataBean(Ljava/lang/String;I)Lcom/pinguo/camera360/push/PushDataBean;
move-result-object v1
if-nez v1, :cond_a6
move-object v0, v5
goto/16 :goto_1a
:cond_a6
iput-object v1, v0, Lcom/pinguo/camera360/push/PushBean;->data:Lcom/pinguo/camera360/push/PushDataBean;
:try_end_a8
.catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a8} :catch_89
goto/16 :goto_1a
.end method
.method public static getPushDataBean(Ljava/lang/String;I)Lcom/pinguo/camera360/push/PushDataBean;
.registers 3
packed-switch p1, :pswitch_data_2e
const/4 v0, 0x0
:goto_4
return-object v0
:pswitch_5
invoke-static {p0}, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;->getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;
move-result-object v0
goto :goto_4
:pswitch_a
invoke-static {p0}, Lcom/pinguo/camera360/push/business/web/PushWebBean;->getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/web/PushWebBean;
move-result-object v0
goto :goto_4
:pswitch_f
invoke-static {p0}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;
move-result-object v0
goto :goto_4
:pswitch_14
invoke-static {p0}, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/activity/PushActivityBean;
move-result-object v0
goto :goto_4
:pswitch_19
invoke-static {p0}, Lcom/pinguo/camera360/push/business/scene/PushSceneBean;->getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/scene/PushSceneBean;
move-result-object v0
goto :goto_4
:pswitch_1e
invoke-static {p0}, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/theme/PushThemeBean;
move-result-object v0
goto :goto_4
:pswitch_23
invoke-static {p0}, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/update/PushUpdateBean;
move-result-object v0
goto :goto_4
:pswitch_28
invoke-static {p0}, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;
move-result-object v0
goto :goto_4
nop
:pswitch_data_2e
.packed-switch 0x1
:pswitch_5
:pswitch_a
:pswitch_f
:pswitch_14
:pswitch_19
:pswitch_1e
:pswitch_23
:pswitch_28
.end packed-switch
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-nez p1, :cond_9
move v1, v2
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_15
move v1, v2
goto :goto_4
:cond_15
move-object v0, p1
check-cast v0, Lcom/pinguo/camera360/push/PushBean;
iget-object v3, p0, Lcom/pinguo/camera360/push/PushBean;->id:Ljava/lang/String;
if-nez v3, :cond_22
iget-object v3, v0, Lcom/pinguo/camera360/push/PushBean;->id:Ljava/lang/String;
if-eqz v3, :cond_4
move v1, v2
goto :goto_4
:cond_22
iget-object v3, p0, Lcom/pinguo/camera360/push/PushBean;->id:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/push/PushBean;->id:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
move v1, v2
goto :goto_4
.end method
.method public getData()Lcom/pinguo/camera360/push/PushDataBean;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->data:Lcom/pinguo/camera360/push/PushDataBean;
return-object v0
.end method
.method public getFrom()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->from:Ljava/util/Date;
return-object v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->id:Ljava/lang/String;
return-object v0
.end method
.method public getJson()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->json:Ljava/lang/String;
return-object v0
.end method
.method public getNotifi()Lcom/pinguo/camera360/push/PushNotifyBean;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->notifi:Lcom/pinguo/camera360/push/PushNotifyBean;
return-object v0
.end method
.method public getShow()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/push/PushBean;->show:I
return v0
.end method
.method public getTo()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/PushBean;->to:Ljava/util/Date;
return-object v0
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/push/PushBean;->type:I
return v0
.end method
.method public hashCode()I
.registers 4
const/16 v0, 0x1f
const/4 v1, 0x1
iget-object v2, p0, Lcom/pinguo/camera360/push/PushBean;->id:Ljava/lang/String;
if-nez v2, :cond_b
const/4 v2, 0x0
:goto_8
add-int/lit8 v1, v2, 0x1f
return v1
:cond_b
iget-object v2, p0, Lcom/pinguo/camera360/push/PushBean;->id:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
goto :goto_8
.end method