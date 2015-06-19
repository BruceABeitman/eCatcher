.class final Lcom/google/zxing/e/a/a/a/q;
.super Lcom/google/zxing/e/a/a/a/r;
.source "DecodedNumeric.java"


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(III)V
    .registers 7

    const/16 v1, 0xa

    invoke-direct {p0, p1}, Lcom/google/zxing/e/a/a/a/r;-><init>(I)V

    iput p2, p0, Lcom/google/zxing/e/a/a/a/q;->a:I

    iput p3, p0, Lcom/google/zxing/e/a/a/a/q;->b:I

    iget v0, p0, Lcom/google/zxing/e/a/a/a/q;->a:I

    if-ltz v0, :cond_11

    iget v0, p0, Lcom/google/zxing/e/a/a/a/q;->a:I

    if-le v0, v1, :cond_26

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid firstDigit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iget v0, p0, Lcom/google/zxing/e/a/a/a/q;->b:I

    if-ltz v0, :cond_2e

    iget v0, p0, Lcom/google/zxing/e/a/a/a/q;->b:I

    if-le v0, v1, :cond_43

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid secondDigit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    return-void
.end method


# virtual methods
.method final a()Z
    .registers 3

    iget v0, p0, Lcom/google/zxing/e/a/a/a/q;->b:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
