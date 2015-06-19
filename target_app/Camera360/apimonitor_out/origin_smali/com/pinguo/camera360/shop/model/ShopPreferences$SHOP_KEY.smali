.class final enum Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;
.super Ljava/lang/Enum;
.source "ShopPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/shop/model/ShopPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SHOP_KEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE_INDEX:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

.field public static final enum LAST_SUCCESS_DOWNLOAD_TIME:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

.field public static final enum LAST_SUCCESS_LOAD_TIME:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

.field public static final enum SHOWN_VERSION_IN_SHOP_OF_CATEGORY_:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

.field public static final enum SHOWN_VERSION_IN_SHOP_OF_PRODUCT_:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    const-string/jumbo v1, "ACTIVE_INDEX"

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->ACTIVE_INDEX:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    new-instance v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    const-string/jumbo v1, "LAST_SUCCESS_DOWNLOAD_TIME"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->LAST_SUCCESS_DOWNLOAD_TIME:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    new-instance v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    const-string/jumbo v1, "LAST_SUCCESS_LOAD_TIME"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->LAST_SUCCESS_LOAD_TIME:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    new-instance v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    const-string/jumbo v1, "SHOWN_VERSION_IN_SHOP_OF_PRODUCT_"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->SHOWN_VERSION_IN_SHOP_OF_PRODUCT_:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    new-instance v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    const-string/jumbo v1, "SHOWN_VERSION_IN_SHOP_OF_CATEGORY_"

    invoke-direct {v0, v1, v6}, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->SHOWN_VERSION_IN_SHOP_OF_CATEGORY_:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->ACTIVE_INDEX:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->LAST_SUCCESS_DOWNLOAD_TIME:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->LAST_SUCCESS_LOAD_TIME:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->SHOWN_VERSION_IN_SHOP_OF_PRODUCT_:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->SHOWN_VERSION_IN_SHOP_OF_CATEGORY_:Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->ENUM$VALUES:[Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;->ENUM$VALUES:[Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/shop/model/ShopPreferences$SHOP_KEY;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
