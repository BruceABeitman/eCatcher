.class Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;
.super Ljava/lang/Object;
.source "AbstractShopModel.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/model/AbstractShopModel;->update(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;

.field private final synthetic val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/model/AbstractShopModel;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;

    iput-object p2, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;)Lcom/pinguo/camera360/shop/model/AbstractShopModel;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .registers 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "success"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->verifyJsonObject(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;-><init>(Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->execute([Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;

    :cond_39
    :goto_39
    return-void

    :cond_3a
    invoke-static {}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Update shop json fail! Json string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    invoke-interface {v0, v3}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onPostExecute(Z)V

    goto :goto_39
.end method
