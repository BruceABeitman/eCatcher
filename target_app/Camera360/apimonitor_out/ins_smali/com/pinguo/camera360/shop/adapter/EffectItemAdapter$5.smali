.class  Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
.field private final synthetic val$context:Landroid/content/Context;
.field private final synthetic val$position:I
.method constructor <init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Landroid/content/Context;I)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;->val$context:Landroid/content/Context;
iput p3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;->val$position:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;->val$context:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
const/16 v1, 0x3f1
iget v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;->val$position:I
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/login/StartLoginPageAdapter;->launchLoginPageAdapte(Landroid/app/Activity;II)V
const-string v1, " - Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method