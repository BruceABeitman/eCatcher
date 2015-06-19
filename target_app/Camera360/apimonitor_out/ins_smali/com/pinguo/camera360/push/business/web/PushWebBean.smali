.class public Lcom/pinguo/camera360/push/business/web/PushWebBean;
.super Ljava/lang/Object;
.source "PushWebBean.java"
.implements Lcom/pinguo/camera360/push/PushDataBean;
.field public static final KEY_BACK_LINK:Ljava/lang/String; = "return"
.field public static final KEY_LINK:Ljava/lang/String; = "link"
.field public static final KEY_TITLE:Ljava/lang/String; = "title"
.field private backLink:Ljava/lang/String;
.field private link:Ljava/lang/String;
.field private title:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebBean;->title:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebBean;->link:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebBean;->backLink:Ljava/lang/String;
return-void
.end method
.method public static getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/web/PushWebBean;
.registers 7
:try_start_0
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/push/business/web/PushWebBean;
invoke-direct {v0}, Lcom/pinguo/camera360/push/business/web/PushWebBean;-><init>()V
const-string/jumbo v3, "title"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, v0, Lcom/pinguo/camera360/push/business/web/PushWebBean;->title:Ljava/lang/String;
const-string/jumbo v3, "link"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, v0, Lcom/pinguo/camera360/push/business/web/PushWebBean;->link:Ljava/lang/String;
const-string/jumbo v3, "return"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, v0, Lcom/pinguo/camera360/push/business/web/PushWebBean;->backLink:Ljava/lang/String;
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
.method public static notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)V
.registers 13
invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getData()Lcom/pinguo/camera360/push/PushDataBean;
move-result-object v4
invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getNotifi()Lcom/pinguo/camera360/push/PushNotifyBean;
move-result-object v3
move-object v7, v4
check-cast v7, Lcom/pinguo/camera360/push/business/web/PushWebBean;
invoke-virtual {v7}, Lcom/pinguo/camera360/push/business/web/PushWebBean;->getTitle()Ljava/lang/String;
move-result-object v6
move-object v7, v4
check-cast v7, Lcom/pinguo/camera360/push/business/web/PushWebBean;
invoke-virtual {v7}, Lcom/pinguo/camera360/push/business/web/PushWebBean;->getLink()Ljava/lang/String;
move-result-object v2
check-cast v4, Lcom/pinguo/camera360/push/business/web/PushWebBean;
invoke-virtual {v4}, Lcom/pinguo/camera360/push/business/web/PushWebBean;->getBackLink()Ljava/lang/String;
move-result-object v0
const-string/jumbo v7, "newpush"
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "link: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Landroid/content/Intent;
const-class v7, Lcom/pinguo/camera360/push/business/web/PushWebActivity;
invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v7, 0x2400
invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string/jumbo v7, "title"
invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v7, "url"
invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v7, "return"
invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v7, "notify_title"
invoke-virtual {v3}, Lcom/pinguo/camera360/push/PushNotifyBean;->getTitle()Ljava/lang/String;
move-result-object v8
invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v7, "notify_msg"
invoke-virtual {v3}, Lcom/pinguo/camera360/push/PushNotifyBean;->getMsg()Ljava/lang/String;
move-result-object v8
invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v7, "notify_id"
invoke-virtual {v1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-static {p0, v1, p2}, Lcom/pinguo/camera360/push/utils/PushNotify;->showNotify(Landroid/content/Context;Landroid/content/Intent;I)Z
move-result v5
if-eqz v5, :cond_82
invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->setMessageId(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->setMessageId(Ljava/lang/String;)V
const/4 v7, 0x0
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushWebView(I)V
:cond_82
const-string/jumbo v7, "newpush"
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "push_web notify: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public getBackLink()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebBean;->backLink:Ljava/lang/String;
return-object v0
.end method
.method public getLink()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebBean;->link:Ljava/lang/String;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebBean;->title:Ljava/lang/String;
return-object v0
.end method