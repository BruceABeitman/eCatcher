.class public final Lcom/google/zxing/e/f;
.super Lcom/google/zxing/e/p;
.source "EAN8Reader.java"


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/zxing/e/p;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/e/f;->a:[I

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/zxing/b/a;[ILjava/lang/StringBuilder;)I
    .registers 14

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/zxing/e/f;->a:[I

    aput v1, v4, v1

    aput v1, v4, v8

    const/4 v0, 0x2

    aput v1, v4, v0

    const/4 v0, 0x3

    aput v1, v4, v0

    iget v5, p1, Lcom/google/zxing/b/a;->b:I

    aget v0, p2, v8

    move v3, v1

    :goto_14
    if-ge v3, v9, :cond_34

    if-ge v0, v5, :cond_34

    sget-object v2, Lcom/google/zxing/e/f;->d:[[I

    invoke-static {p1, v4, v0, v2}, Lcom/google/zxing/e/f;->a(Lcom/google/zxing/b/a;[II[[I)I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v6, v4

    move v2, v0

    move v0, v1

    :goto_27
    if-ge v0, v6, :cond_2f

    aget v7, v4, v0

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_2f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_14

    :cond_34
    sget-object v2, Lcom/google/zxing/e/f;->c:[I

    invoke-static {p1, v0, v8, v2}, Lcom/google/zxing/e/f;->a(Lcom/google/zxing/b/a;IZ[I)[I

    move-result-object v0

    aget v0, v0, v8

    move v3, v1

    :goto_3d
    if-ge v3, v9, :cond_5d

    if-ge v0, v5, :cond_5d

    sget-object v2, Lcom/google/zxing/e/f;->d:[[I

    invoke-static {p1, v4, v0, v2}, Lcom/google/zxing/e/f;->a(Lcom/google/zxing/b/a;[II[[I)I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v6, v4

    move v2, v0

    move v0, v1

    :goto_50
    if-ge v0, v6, :cond_58

    aget v7, v4, v0

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_58
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_3d

    :cond_5d
    return v0
.end method

.method final b()Lcom/google/zxing/a;
    .registers 2

    sget-object v0, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;

    return-object v0
.end method
