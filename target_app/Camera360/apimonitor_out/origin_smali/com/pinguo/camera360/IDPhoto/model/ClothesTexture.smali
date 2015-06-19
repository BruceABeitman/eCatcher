.class public Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;
.super Ljava/lang/Object;
.source "ClothesTexture.java"


# instance fields
.field private resId:I

.field private thumbnailResId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v1, p1, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;

    if-eqz v1, :cond_15

    move-object v0, p1

    check-cast v0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;

    iget v1, v0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->resId:I

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->resId:I

    if-ne v1, v2, :cond_15

    iget v1, v0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->thumbnailResId:I

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->thumbnailResId:I

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getResId()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->resId:I

    return v0
.end method

.method public getThumbnailResId()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->thumbnailResId:I

    return v0
.end method

.method public isResIdOfMine(I)Z
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->resId:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setResId(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->resId:I

    return-void
.end method

.method public setThumbnailResId(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->thumbnailResId:I

    return-void
.end method
