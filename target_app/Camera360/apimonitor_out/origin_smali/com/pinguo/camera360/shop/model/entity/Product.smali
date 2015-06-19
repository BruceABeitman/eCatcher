.class public Lcom/pinguo/camera360/shop/model/entity/Product;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public categoryId:Ljava/lang/String;

.field public coin:I

.field public description:Ljava/lang/String;

.field public detail:Ljava/lang/String;

.field public downloadPath:Ljava/lang/String;

.field public expireTime:Ljava/lang/String;

.field public guid:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public imageList:[Ljava/lang/String;

.field public imageList2:[Ljava/lang/String;

.field public index:I

.field public installProgress:I

.field public installTime:J

.field public installation:I

.field public itemCount:I

.field private transient mPregenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient mPregenMap2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public opTime:Ljava/lang/String;

.field public pregen:[Ljava/lang/String;

.field public pregen2:[Ljava/lang/String;

.field public price:I

.field public productId:Ljava/lang/String;

.field public promoteType:I

.field public purchaseHistory:I

.field public purchaseType:I

.field public recommendType:I

.field public requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

.field public totalPrice:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/shop/model/entity/Product;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/shop/model/entity/Product;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->mPregenMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->mPregenMap2:Ljava/util/Map;

    return-void
.end method

.method private loadPregenMap()V
    .registers 15

    iget-object v7, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->pregen:[Ljava/lang/String;

    if-nez v7, :cond_d

    sget-object v7, Lcom/pinguo/camera360/shop/model/entity/Product;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Pregen object is null, exit load pregen map"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->mPregenMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->pregen:[Ljava/lang/String;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v9, :cond_c

    aget-object v5, v8, v7

    const-string/jumbo v10, "::"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_62

    const/4 v10, 0x0

    aget-object v4, v0, v10

    const/4 v10, 0x1

    aget-object v6, v0, v10

    const-string/jumbo v10, "-"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_62

    array-length v10, v3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_62

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_65

    const/4 v2, 0x0

    :goto_46
    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_71

    const/4 v1, 0x0

    :goto_50
    iget-object v10, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->mPregenMap:Ljava/util/Map;

    new-instance v11, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_65
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_46

    :cond_71
    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_50
.end method

.method private loadPregenMap2()V
    .registers 15

    iget-object v7, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->pregen2:[Ljava/lang/String;

    if-nez v7, :cond_d

    sget-object v7, Lcom/pinguo/camera360/shop/model/entity/Product;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Pregen object is null, exit load pregen map"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->mPregenMap2:Ljava/util/Map;

    iget-object v8, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->pregen2:[Ljava/lang/String;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v9, :cond_c

    aget-object v5, v8, v7

    const-string/jumbo v10, "::"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_64

    const/4 v10, 0x0

    aget-object v4, v0, v10

    const/4 v10, 0x1

    aget-object v6, v0, v10

    const-string/jumbo v10, "-"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_64

    array-length v10, v3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_64

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v10, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->mPregenMap2:Ljava/util/Map;

    new-instance v11, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_18
.end method

.method private loadPregenMaps()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/entity/Product;->loadPregenMap()V

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/entity/Product;->loadPregenMap2()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/pinguo/camera360/shop/model/entity/Product;

    move-object v2, v0
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_9} :catch_a

    :goto_9
    return-object v2

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_9
.end method

.method public getPregen(III)Ljava/lang/String;
    .registers 9

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->mPregenMap:Ljava/util/Map;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->mPregenMap2:Ljava/util/Map;

    if-nez v2, :cond_b

    :cond_8
    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/entity/Product;->loadPregenMaps()V

    :cond_b
    const/4 v2, 0x1

    if-ne p3, v2, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->mPregenMap:Ljava/util/Map;

    :goto_10
    if-nez v0, :cond_35

    const-string/jumbo v1, ""

    :cond_15
    :goto_15
    return-object v1

    :cond_16
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/Product;->mPregenMap2:Ljava/util/Map;

    goto :goto_10

    :cond_1c
    sget-object v2, Lcom/pinguo/camera360/shop/model/entity/Product;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Param error: flag is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, ""

    goto :goto_15

    :cond_35
    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_15

    const-string/jumbo v1, ""

    goto :goto_15
.end method
