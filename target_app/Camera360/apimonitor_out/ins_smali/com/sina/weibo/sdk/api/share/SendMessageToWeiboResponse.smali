.class public Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboResponse;
.super Lcom/sina/weibo/sdk/api/share/BaseResponse;
.source "SendMessageToWeiboResponse.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseResponse;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseResponse;-><init>()V
invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboResponse;->fromBundle(Landroid/os/Bundle;)V
return-void
.end method
.method final check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;)Z
.registers 4
const/4 v0, 0x1
return v0
.end method
.method public getType()I
.registers 2
const/4 v0, 0x1
return v0
.end method