.class public abstract Lcom/sina/weibo/sdk/api/share/BaseResponse;
.super Lcom/sina/weibo/sdk/api/share/Base;
.source "BaseResponse.java"
.field public errCode:I
.field public errMsg:Ljava/lang/String;
.field public reqPackageName:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/Base;-><init>()V
return-void
.end method
.method public fromBundle(Landroid/os/Bundle;)V
.registers 3
const-string/jumbo v0, "_weibo_resp_errcode"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I
const-string/jumbo v0, "_weibo_resp_errstr"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errMsg:Ljava/lang/String;
const-string/jumbo v0, "_weibo_transaction"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/BaseResponse;->transaction:Ljava/lang/String;
const-string/jumbo v0, "_weibo_appPackage"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/BaseResponse;->reqPackageName:Ljava/lang/String;
return-void
.end method
.method public toBundle(Landroid/os/Bundle;)V
.registers 4
const-string/jumbo v0, "_weibo_command_type"
invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/BaseResponse;->getType()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v0, "_weibo_resp_errcode"
iget v1, p0, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v0, "_weibo_resp_errstr"
iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errMsg:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "_weibo_transaction"
iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/BaseResponse;->transaction:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method