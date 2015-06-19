.class  Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
return-object v0
.end method
.method public onBackClick()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->setBackResult()V
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$7(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->finish()V
return-void
.end method
.method public onRightBtnClick()V
.registers 7
const/4 v3, 0x1
const/4 v5, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isNeedShowUninstallHintToastEffect()Z
move-result v0
if-eqz v0, :cond_13
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setNeedShowUninstallHintToastEffect(Z)V
:cond_13
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-gt v0, v3, :cond_30
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
const v1, 0x7f08026a
invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_2f
return-void
:cond_30
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
const v2, 0x7f08025e
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v4}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v4
iget-object v4, v4, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;
aput-object v4, v3, v5
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const v2, 0x7f080300
const v3, 0x7f080002
new-instance v4, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;)V
const/4 v5, 0x0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto :goto_2f
.end method