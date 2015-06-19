.class  Lcom/pinguo/camera360/updateOnline/UpdateReturnBean$1;
.super Ljava/lang/Object;
.source "UpdateReturnBean.java"
.implements Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;
.field final synthetic this$0:Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;
.field private final synthetic val$activity:Landroid/app/Activity;
.method constructor <init>(Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;Landroid/app/Activity;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean$1;->this$0:Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;
iput-object p2, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean$1;->val$activity:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClickCancelUpdate()V
.registers 1
return-void
.end method
.method public onClickPatchUpdate()V
.registers 1
return-void
.end method
.method public onClickUpdate()V
.registers 9
const/16 v7, 0x7d0
const/4 v6, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v0
const-wide/16 v2, 0x0
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v4
invoke-virtual {v4, v0}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J
move-result-wide v4
cmp-long v2, v2, v4
if-nez v2, :cond_36
const-string/jumbo v2, "appDownLoad"
const-string/jumbo v3, "Storage can not used"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean$1;->val$activity:Landroid/app/Activity;
iget-object v3, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean$1;->val$activity:Landroid/app/Activity;
const v4, 0x7f0800e9
invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3, v6}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
invoke-virtual {v1, v7}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
:goto_35
return-void
:cond_36
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean$1;->this$0:Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;
iget-object v3, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean$1;->val$activity:Landroid/app/Activity;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->doUpdate(Landroid/content/Context;)V
new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean$1;->val$activity:Landroid/app/Activity;
iget-object v3, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean$1;->val$activity:Landroid/app/Activity;
const v4, 0x7f0802fe
invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3, v6}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
invoke-virtual {v1, v7}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
goto :goto_35
.end method