.class public abstract Lcom/google/zxing/g;
.super Ljava/lang/Object;
.source "LuminanceSource.java"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/g;->a:I

    iput p2, p0, Lcom/google/zxing/g;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public abstract a(I[B)[B
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/zxing/g;->a:I

    new-array v0, v0, [B

    new-instance v5, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/zxing/g;->b:I

    iget v3, p0, Lcom/google/zxing/g;->a:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v0

    move v0, v1

    :goto_13
    iget v3, p0, Lcom/google/zxing/g;->b:I

    if-ge v0, v3, :cond_49

    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/g;->a(I[B)[B

    move-result-object v2

    move v3, v1

    :goto_1c
    iget v4, p0, Lcom/google/zxing/g;->a:I

    if-ge v3, v4, :cond_41

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x40

    if-ge v4, v6, :cond_30

    const/16 v4, 0x23

    :goto_2a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_30
    const/16 v6, 0x80

    if-ge v4, v6, :cond_37

    const/16 v4, 0x2b

    goto :goto_2a

    :cond_37
    const/16 v6, 0xc0

    if-ge v4, v6, :cond_3e

    const/16 v4, 0x2e

    goto :goto_2a

    :cond_3e
    const/16 v4, 0x20

    goto :goto_2a

    :cond_41
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
