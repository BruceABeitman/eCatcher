.class  Lcom/sina/weibo/sdk/auth/WeiboDialog$1;
.super Ljava/lang/Object;
.source "WeiboDialog.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;
.method constructor <init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;)V
.registers 2
iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/sina/weibo/sdk/auth/WeiboDialog$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;
invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->dismiss()V
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;
#getter for: Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$0(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
move-result-object v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;
#getter for: Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$0(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
move-result-object v0
invoke-interface {v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V
:cond_16
const-string v1, " - Lcom/sina/weibo/sdk/auth/WeiboDialog$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method