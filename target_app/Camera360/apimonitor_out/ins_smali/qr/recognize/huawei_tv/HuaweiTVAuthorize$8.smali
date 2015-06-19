.class  Lqr/recognize/huawei_tv/HuaweiTVAuthorize$8;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
.method constructor <init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V
.registers 2
iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$8;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lqr/recognize/huawei_tv/HuaweiTVAuthorize$8; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$8;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
new-instance v1, Landroid/content/Intent;
const-string/jumbo v2, "android.settings.WIFI_SETTINGS"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lqr/recognize/huawei_tv/HuaweiTVAuthorize$8; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method