.class public final Lcom/google/zxing/f/a/a/a;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# instance fields
.field public final a:Lcom/google/zxing/f/a/a/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/zxing/f/a/a/b;->a:Lcom/google/zxing/f/a/a/b;

    iput-object v0, p0, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/f/a/a/c;)[I
    .registers 7

    iget-object v0, p1, Lcom/google/zxing/f/a/a/c;->b:[I

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    new-array v3, v2, [I

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_9
    iget-object v4, p0, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;

    iget v4, v4, Lcom/google/zxing/f/a/a/b;->f:I

    if-ge v0, v4, :cond_24

    if-ge v1, v2, :cond_24

    invoke-virtual {p1, v0}, Lcom/google/zxing/f/a/a/c;->b(I)I

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, p0, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;

    invoke-virtual {v4, v0}, Lcom/google/zxing/f/a/a/b;->a(I)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_24
    if-eq v1, v2, :cond_2b

    invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;

    move-result-object v0

    throw v0

    :cond_2b
    return-object v3
.end method

.method public final a(Lcom/google/zxing/f/a/a/c;Lcom/google/zxing/f/a/a/c;[I)[I
    .registers 12

    const/4 v1, 0x0

    iget-object v0, p2, Lcom/google/zxing/f/a/a/c;->b:[I

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    new-array v3, v2, [I

    const/4 v0, 0x1

    :goto_9
    if-gt v0, v2, :cond_1c

    sub-int v4, v2, v0

    iget-object v5, p0, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;

    invoke-virtual {p2, v0}, Lcom/google/zxing/f/a/a/c;->a(I)I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lcom/google/zxing/f/a/a/b;->d(II)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    new-instance v2, Lcom/google/zxing/f/a/a/c;

    iget-object v0, p0, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;

    invoke-direct {v2, v0, v3}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V

    array-length v3, p3

    new-array v4, v3, [I

    move v0, v1

    :goto_27
    if-ge v0, v3, :cond_50

    iget-object v5, p0, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;

    aget v6, p3, v0

    invoke-virtual {v5, v6}, Lcom/google/zxing/f/a/a/b;->a(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;

    invoke-virtual {p1, v5}, Lcom/google/zxing/f/a/a/c;->b(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Lcom/google/zxing/f/a/a/b;->c(II)I

    move-result v6

    iget-object v7, p0, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;

    invoke-virtual {v2, v5}, Lcom/google/zxing/f/a/a/c;->b(I)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/google/zxing/f/a/a/b;->a(I)I

    move-result v5

    iget-object v7, p0, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;

    invoke-virtual {v7, v6, v5}, Lcom/google/zxing/f/a/a/b;->d(II)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_50
    return-object v4
.end method
