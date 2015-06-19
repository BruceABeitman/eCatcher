.class  Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"
.implements Landroid/content/DialogInterface$OnKeyListener;
.field final synthetic this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
.method constructor <init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V
.registers 2
iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x4
if-ne p2, v0, :cond_21
invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
const/4 v1, 0x1
#setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsCancelCloudLoginByBackKey:Z
invoke-static {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$8(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V
invoke-static {}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$0()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "End user click the back key to dismiss the dialog"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->finish()V
:cond_21
const/4 v0, 0x0
move v2, v0
const-string v1, " - Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method