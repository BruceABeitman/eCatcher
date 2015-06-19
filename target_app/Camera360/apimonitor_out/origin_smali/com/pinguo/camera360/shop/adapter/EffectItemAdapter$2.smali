.class Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->showInterruptDialog(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

.field private final synthetic val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iput-object p2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    iput-object p3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->destroy()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$2;->val$view:Landroid/view/View;

    #calls: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->doUseEffect(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$8(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V

    return-void
.end method
