.class public Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;
.super Lcom/sina/weibo/sdk/api/share/BaseRequest;
.source "SendMultiMessageToWeiboRequest.java"
.field public multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseRequest;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseRequest;-><init>()V
invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->fromBundle(Landroid/os/Bundle;)V
return-void
.end method
.method final check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
if-eqz p2, :cond_10
iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
invoke-virtual {p2, p1, v1}, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Z
move-result v1
if-eqz v1, :cond_5
:cond_10
iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->checkArgs()Z
move-result v0
goto :goto_5
.end method
.method public fromBundle(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/share/BaseRequest;->fromBundle(Landroid/os/Bundle;)V
new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>(Landroid/os/Bundle;)V
iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
return-void
.end method
.method public getType()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public toBundle(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/share/BaseRequest;->toBundle(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
return-void
.end method