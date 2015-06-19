.class  Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
.method constructor <init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V
.registers 2
iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
#getter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsAuthorizeSucc:Z
invoke-static {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$3(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->retryAuthorize()V
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->startAuthorize()V
:cond_12
const-string v1, " - Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method