.class public final enum Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
.super Ljava/lang/Enum;
.source "IShopModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/shop/model/IShopModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SHOP_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

.field public static final enum camera:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

.field public static final enum effect:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    const-string/jumbo v1, "camera"

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->camera:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    new-instance v0, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    const-string/jumbo v1, "effect"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->effect:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    sget-object v1, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->camera:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->effect:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->ENUM$VALUES:[Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->ENUM$VALUES:[Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
