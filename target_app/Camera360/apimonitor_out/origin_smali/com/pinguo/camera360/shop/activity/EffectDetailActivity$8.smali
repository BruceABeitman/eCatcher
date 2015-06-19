.class Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->showInterruptDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    iput-object p2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->destroy()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;->val$context:Landroid/content/Context;

    #calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->doUseEffect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$18(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Landroid/content/Context;)V

    return-void
.end method
