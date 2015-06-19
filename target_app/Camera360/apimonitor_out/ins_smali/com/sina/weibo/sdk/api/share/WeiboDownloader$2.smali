.class  Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;
.super Ljava/lang/Object;
.source "WeiboDownloader.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field private final synthetic val$listener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;
.method constructor <init>(Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)V
.registers 2
iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;->val$listener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;->val$listener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;->val$listener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;
invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;->onCancel()V
:cond_9
const-string v1, " - Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method