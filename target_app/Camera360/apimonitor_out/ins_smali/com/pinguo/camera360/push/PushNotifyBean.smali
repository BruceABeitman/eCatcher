.class public Lcom/pinguo/camera360/push/PushNotifyBean;
.super Ljava/lang/Object;
.source "PushNotifyBean.java"
.field private msg:Ljava/lang/String;
.field private title:Ljava/lang/String;
.method private constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/push/PushNotifyBean;->title:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/push/PushNotifyBean;->msg:Ljava/lang/String;
return-void
.end method
.method public static jsonToBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/PushNotifyBean;
.registers 6
const/4 v3, 0x0
if-nez p0, :cond_5
move-object v0, v3
:goto_4
return-object v0
:try_start_5
:cond_5
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/push/PushNotifyBean;
invoke-direct {v0}, Lcom/pinguo/camera360/push/PushNotifyBean;-><init>()V
const-string/jumbo v4, "title"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v0, Lcom/pinguo/camera360/push/PushNotifyBean;->title:Ljava/lang/String;
const-string/jumbo v4, "msg"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v0, Lcom/pinguo/camera360/push/PushNotifyBean;->msg:Ljava/lang/String;
:try_end_21
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22
goto :goto_4
:catch_22
move-exception v1
const-string/jumbo v4, "push"
invoke-static {v4, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v3
goto :goto_4
.end method
.method public getMsg()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/PushNotifyBean;->msg:Ljava/lang/String;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/PushNotifyBean;->title:Ljava/lang/String;
return-object v0
.end method