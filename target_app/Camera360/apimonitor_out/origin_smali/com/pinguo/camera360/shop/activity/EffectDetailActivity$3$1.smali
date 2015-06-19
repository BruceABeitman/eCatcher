.class Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->onRightBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->uninstall(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v2, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->uninstall:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    new-instance v3, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1$1;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1$1;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    return-void
.end method
