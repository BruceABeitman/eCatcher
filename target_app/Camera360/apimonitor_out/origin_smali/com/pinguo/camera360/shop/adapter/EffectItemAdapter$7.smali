.class Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"

# interfaces
.implements Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->doInstall(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iput-object p2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    iput-object p3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Z)V
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iget-object v3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    #calls: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->checkEngineMin(Lcom/pinguo/camera360/shop/model/entity/Product;)Z
    invoke-static {v2, v3}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$9(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    #getter for: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$1(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v3, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_45

    new-instance v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iget-object v3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    invoke-direct {v0, v2, v3, v1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;-><init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/ViewGroup;)V

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    #getter for: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$1(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v3, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v3, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v4, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    invoke-virtual {v2, v3, v4, v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    :cond_45
    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->install(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    :goto_4e
    return-void

    :cond_4f
    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    const/4 v3, 0x4

    iput v3, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    const/4 v3, 0x0

    iput v3, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->installProgress:I

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$7;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->notifyDataSetChanged()V

    goto :goto_4e
.end method

.method public onProgress(I)V
    .registers 2

    return-void
.end method
