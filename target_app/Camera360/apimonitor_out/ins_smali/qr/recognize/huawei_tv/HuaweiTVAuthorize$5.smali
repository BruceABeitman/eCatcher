.class  Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
.method constructor <init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V
.registers 2
iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
const/4 v1, 0x1
#setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsClickLoginCloudBtn:Z
invoke-static {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$6(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
const/16 v1, 0x1b9e
const/16 v2, -0x3e7
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/login/StartLoginPageAdapter;->launchLoginPageAdapte(Landroid/app/Activity;II)V
const-string v1, " - Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method