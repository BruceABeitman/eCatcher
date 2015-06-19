.class  Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
.field private final synthetic val$view:Landroid/view/View;
.method constructor <init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4;->val$view:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4;->val$view:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;-><init>(Landroid/content/Context;)V
invoke-static {v0}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager;->manualUpdate(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V
const-string v1, " - Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method