.class public interface abstract Lcom/pinguo/camera360/shop/model/IShopModel;
.super Ljava/lang/Object;
.source "IShopModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;,
        Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;,
        Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
    }
.end annotation


# virtual methods
.method public abstract buy(Lcom/pinguo/camera360/shop/model/entity/Product;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getIndex(Z)I
.end method

.method public abstract getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
.end method

.method public abstract getShopType()Lcom/pinguo/camera360/shop/model/entity/ShopType;
.end method

.method public abstract install(Lcom/pinguo/camera360/shop/model/entity/Product;)V
.end method

.method public abstract installTry(Lcom/pinguo/camera360/shop/model/entity/Product;)V
.end method

.method public abstract loadProductList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract needInterrupt()Z
.end method

.method public abstract registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
.end method

.method public abstract uninstall(Lcom/pinguo/camera360/shop/model/entity/Product;)V
.end method

.method public abstract uninstallBatch(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/shop/model/entity/Product;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregistListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
.end method

.method public abstract update()Z
.end method

.method public abstract update(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)Z
.end method
