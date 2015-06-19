.class public final Lcom/lenovo/anyshare/sdk/internal/ag;
.super Ljava/lang/Object;
.source "AlgorithmUtils.java"


# direct methods
.method public static a([II)I
    .registers 10

    const/4 v3, 0x0

    array-length v6, p0

    add-int/lit8 v1, v6, -0x1

    const/4 v2, -0x1

    :goto_5
    if-gt v3, v1, :cond_1d

    add-int v6, v3, v1

    int-to-long v4, v6

    const-wide/16 v6, 0x2

    div-long v6, v4, v6

    long-to-int v2, v6

    aget v0, p0, v2

    if-ne v0, p1, :cond_15

    move v6, v2

    :goto_14
    return v6

    :cond_15
    if-ge v0, p1, :cond_1a

    add-int/lit8 v3, v2, 0x1

    goto :goto_5

    :cond_1a
    add-int/lit8 v1, v2, -0x1

    goto :goto_5

    :cond_1d
    const/4 v6, -0x1

    goto :goto_14
.end method
