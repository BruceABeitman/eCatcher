.class public Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.super Ljava/lang/Object;
.source "SizeInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected height:I

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    iput v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    iput p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    iput p2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    return-void
.end method

.method public static isValidSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static parseSize(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    goto :goto_3
.end method

.method public static parseSize(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
    .registers 8

    const/4 v3, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v3

    :cond_4
    const/16 v4, 0x78

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_26

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    goto :goto_3

    :cond_26
    sget-object v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Invalid size parameter string="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    instance-of v3, p1, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    iget v4, v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    if-eq v3, v4, :cond_16

    move v1, v2

    goto :goto_4

    :cond_16
    iget v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    iget v4, v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    return v0
.end method

.method public getMaxLength()I
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    iget v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    if-le v0, v1, :cond_9

    iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    goto :goto_8
.end method

.method public getMinLength()I
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    iget v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    if-le v0, v1, :cond_9

    iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    goto :goto_8
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    add-int v0, v1, v2

    return v0
.end method

.method public makeCopy()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    iget v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    goto :goto_6
.end method

.method public set(II)V
    .registers 3

    iput p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    iput p2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->width:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
