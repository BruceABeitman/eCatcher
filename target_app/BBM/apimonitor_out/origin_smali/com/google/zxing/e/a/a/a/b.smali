.class public final Lcom/google/zxing/e/a/a/a/b;
.super Lcom/google/zxing/e/a/a/a/f;
.source "AI01320xDecoder.java"


# direct methods
.method public constructor <init>(Lcom/google/zxing/b/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/zxing/e/a/a/a/f;-><init>(Lcom/google/zxing/b/a;)V

    return-void
.end method


# virtual methods
.method protected final a(I)I
    .registers 3

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_5

    :goto_4
    return p1

    :cond_5
    add-int/lit16 p1, p1, -0x2710

    goto :goto_4
.end method

.method protected final a(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/16 v0, 0x2710

    if-ge p2, v0, :cond_a

    const-string v0, "(3202)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    return-void

    :cond_a
    const-string v0, "(3203)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9
.end method
