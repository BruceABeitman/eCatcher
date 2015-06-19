.class  Lcom/pinguo/camera360/camera/view/EffectSelectView$3;
.super Ljava/lang/Object;
.source "EffectSelectView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
.field private final synthetic val$guideTvBox:Landroid/view/View;
.method constructor <init>(Lcom/pinguo/camera360/camera/view/EffectSelectView;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$3;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
iput-object p2, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$3;->val$guideTvBox:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/view/EffectSelectView$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$3;->val$guideTvBox:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAddMoreEffectTipsVisibility(Z)V
const-string v1, " - Lcom/pinguo/camera360/camera/view/EffectSelectView$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method