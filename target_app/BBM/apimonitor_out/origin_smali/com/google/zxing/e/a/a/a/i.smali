.class abstract Lcom/google/zxing/e/a/a/a/i;
.super Lcom/google/zxing/e/a/a/a/h;
.source "AI01weightDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/zxing/b/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/zxing/e/a/a/a/h;-><init>(Lcom/google/zxing/b/a;)V

    return-void
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method protected abstract a(Ljava/lang/StringBuilder;I)V
.end method

.method protected final b(Ljava/lang/StringBuilder;II)V
    .registers 8

    iget-object v0, p0, Lcom/google/zxing/e/a/a/a/j;->b:Lcom/google/zxing/e/a/a/a/t;

    invoke-virtual {v0, p2, p3}, Lcom/google/zxing/e/a/a/a/t;->a(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/e/a/a/a/i;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/e/a/a/a/i;->a(I)I

    move-result v2

    const v1, 0x186a0

    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x5

    if-ge v0, v3, :cond_22

    div-int v3, v2, v1

    if-nez v3, :cond_1d

    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
