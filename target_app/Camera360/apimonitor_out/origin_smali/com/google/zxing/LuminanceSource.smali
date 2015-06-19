.class public abstract Lcom/google/zxing/LuminanceSource;
.super Ljava/lang/Object;
.source "LuminanceSource.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/LuminanceSource;->width:I

    iput p2, p0, Lcom/google/zxing/LuminanceSource;->height:I

    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .registers 7

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This luminance source does not support cropping."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getHeight()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/LuminanceSource;->height:I

    return v0
.end method

.method public abstract getMatrix()[B
.end method

.method public abstract getRow(I[B)[B
.end method

.method public final getWidth()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/LuminanceSource;->width:I

    return v0
.end method

.method public invert()Lcom/google/zxing/LuminanceSource;
    .registers 2

    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public isCropSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRotateSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This luminance source does not support rotation by 90 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This luminance source does not support rotation by 45 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    iget v6, p0, Lcom/google/zxing/LuminanceSource;->width:I

    new-array v3, v6, [B

    new-instance v2, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/google/zxing/LuminanceSource;->height:I

    iget v7, p0, Lcom/google/zxing/LuminanceSource;->width:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    :goto_11
    iget v6, p0, Lcom/google/zxing/LuminanceSource;->height:I

    if-ge v5, v6, :cond_47

    invoke-virtual {p0, v5, v3}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v3

    const/4 v4, 0x0

    :goto_1a
    iget v6, p0, Lcom/google/zxing/LuminanceSource;->width:I

    if-ge v4, v6, :cond_3f

    aget-byte v6, v3, v4

    and-int/lit16 v1, v6, 0xff

    const/16 v6, 0x40

    if-ge v1, v6, :cond_2e

    const/16 v0, 0x23

    :goto_28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2e
    const/16 v6, 0x80

    if-ge v1, v6, :cond_35

    const/16 v0, 0x2b

    goto :goto_28

    :cond_35
    const/16 v6, 0xc0

    if-ge v1, v6, :cond_3c

    const/16 v0, 0x2e

    goto :goto_28

    :cond_3c
    const/16 v0, 0x20

    goto :goto_28

    :cond_3f
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
