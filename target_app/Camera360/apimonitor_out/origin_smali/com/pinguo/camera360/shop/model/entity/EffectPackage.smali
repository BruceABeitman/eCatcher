.class public Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
.super Lcom/pinguo/camera360/shop/model/entity/Product;
.source "EffectPackage.java"


# instance fields
.field public effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/effect/model/entity/Effect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/entity/Product;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/shop/model/entity/Product;)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/entity/Product;-><init>()V

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->productId:Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->description:Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->icon:Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->detail:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->detail:Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->imageList:[Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->imageList:[Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->imageList2:[Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->imageList2:[Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->pregen:[Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->pregen:[Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->pregen2:[Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->pregen2:[Ljava/lang/String;

    iget v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->price:I

    iput v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->price:I

    iget v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->coin:I

    iput v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->coin:I

    iget v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->purchaseType:I

    iput v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->purchaseType:I

    iget v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->promoteType:I

    iput v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->promoteType:I

    iget v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->recommendType:I

    iput v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->recommendType:I

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->categoryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->categoryId:Ljava/lang/String;

    iget v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->itemCount:I

    iput v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->itemCount:I

    iget v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->index:I

    iput v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->index:I

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->opTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->opTime:Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->expireTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->expireTime:Ljava/lang/String;

    iget v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->purchaseHistory:I

    iput v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->purchaseHistory:I

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->downloadPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->downloadPath:Ljava/lang/String;

    iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    return-void
.end method
