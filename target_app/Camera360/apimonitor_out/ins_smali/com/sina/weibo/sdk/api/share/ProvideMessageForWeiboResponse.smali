.class public Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;
.super Lcom/sina/weibo/sdk/api/share/BaseResponse;
.source "ProvideMessageForWeiboResponse.java"
.field public message:Lcom/sina/weibo/sdk/api/WeiboMessage;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseResponse;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseResponse;-><init>()V
invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;->fromBundle(Landroid/os/Bundle;)V
return-void
.end method
.method final check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;
if-nez v1, :cond_6
:goto_5
:cond_5
return v0
:cond_6
if-eqz p2, :cond_15
iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;->reqPackageName:Ljava/lang/String;
invoke-virtual {p2, v1}, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->setPackageName(Ljava/lang/String;)V
iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;
invoke-virtual {p2, p1, v1}, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/WeiboMessage;)Z
move-result v1
if-eqz v1, :cond_5
:cond_15
iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;
invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/WeiboMessage;->checkArgs()Z
move-result v0
goto :goto_5
.end method
.method public fromBundle(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/share/BaseResponse;->fromBundle(Landroid/os/Bundle;)V
new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMessage;
invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMessage;-><init>(Landroid/os/Bundle;)V
iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;
return-void
.end method
.method public getType()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public toBundle(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/share/BaseResponse;->toBundle(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;
invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMessage;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
return-void
.end method