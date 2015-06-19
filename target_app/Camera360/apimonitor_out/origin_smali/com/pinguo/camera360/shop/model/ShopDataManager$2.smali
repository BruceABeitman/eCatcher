.class Lcom/pinguo/camera360/shop/model/ShopDataManager$2;
.super Ljava/lang/Object;
.source "ShopDataManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/model/ShopDataManager;->updateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;

.field private final synthetic val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$2;->this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    iput-object p2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$2;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Get front image download url failed!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$2;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$2;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onPostExecute(Z)V

    :cond_27
    return-void
.end method
