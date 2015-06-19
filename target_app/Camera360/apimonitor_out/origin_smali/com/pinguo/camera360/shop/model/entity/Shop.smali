.class public Lcom/pinguo/camera360/shop/model/entity/Shop;
.super Ljava/lang/Object;
.source "Shop.java"


# instance fields
.field public shopJsons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/shop/model/entity/ShopJson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/Shop;->shopJsons:Ljava/util/Map;

    return-void
.end method
