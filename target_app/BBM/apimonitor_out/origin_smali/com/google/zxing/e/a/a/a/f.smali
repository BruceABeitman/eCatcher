.class abstract Lcom/google/zxing/e/a/a/a/f;
.super Lcom/google/zxing/e/a/a/a/i;
.source "AI013x0xDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/zxing/b/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/zxing/e/a/a/a/i;-><init>(Lcom/google/zxing/b/a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/e/a/a/a/j;->a:Lcom/google/zxing/b/a;

    iget v0, v0, Lcom/google/zxing/b/a;->b:I

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_d

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/e/a/a/a/f;->b(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x2d

    const/16 v2, 0xf

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/zxing/e/a/a/a/f;->b(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
