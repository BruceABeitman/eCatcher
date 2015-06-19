.class  Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
.field private final synthetic val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
.field private final synthetic val$view:Landroid/view/View;
.method constructor <init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iput-object p3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->val$view:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2; onClick "
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
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->val$view:Landroid/view/View;
#calls: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->doUseEffect(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$8(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
const-string v1, " - Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method