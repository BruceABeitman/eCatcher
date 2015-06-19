.class  Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
.field private final synthetic val$context:Landroid/content/Context;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
iput-object p2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;->val$context:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->destroy()V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;->val$context:Landroid/content/Context;
#calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->doUseEffect(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$18(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method