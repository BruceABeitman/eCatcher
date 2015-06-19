.class  Lqr/recognize/huawei_tv/HuaweiTVAuthorize$16;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
.method constructor <init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V
.registers 2
iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$16;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$16;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
#getter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;
invoke-static {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$4(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Lqr/recognize/huawei_tv/HuaweiTvModel;
move-result-object v0
iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$16;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
#getter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mScanResult:Ljava/lang/String;
invoke-static {v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$5(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTvModel;->openSocket(Ljava/lang/String;)V
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$16;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
#getter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;
invoke-static {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$4(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Lqr/recognize/huawei_tv/HuaweiTvModel;
move-result-object v0
iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$16;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
invoke-static {v1}, Lorg/pinguo/cloudshare/support/HelperConsole;->loadLocalKey(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTvModel;->sendToken(Ljava/lang/String;)V
return-void
.end method