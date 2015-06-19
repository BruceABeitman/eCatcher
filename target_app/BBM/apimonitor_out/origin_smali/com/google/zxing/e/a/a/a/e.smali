.class public final Lcom/google/zxing/e/a/a/a/e;
.super Lcom/google/zxing/e/a/a/a/i;
.source "AI013x0x1xDecoder.java"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/zxing/b/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/zxing/e/a/a/a/i;-><init>(Lcom/google/zxing/b/a;)V

    iput-object p3, p0, Lcom/google/zxing/e/a/a/a/e;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/e/a/a/a/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(I)I
    .registers 3

    const v0, 0x186a0

    rem-int v0, p1, v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .registers 7

    const/16 v5, 0x30

    iget-object v0, p0, Lcom/google/zxing/e/a/a/a/j;->a:Lcom/google/zxing/b/a;

    iget v0, v0, Lcom/google/zxing/b/a;->b:I

    const/16 v1, 0x54

    if-eq v0, v1, :cond_f

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/e/a/a/a/e;->b(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/zxing/e/a/a/a/e;->b(Ljava/lang/StringBuilder;II)V

    iget-object v1, p0, Lcom/google/zxing/e/a/a/a/j;->b:Lcom/google/zxing/e/a/a/a/t;

    const/16 v2, 0x44

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/e/a/a/a/t;->a(II)I

    move-result v1

    const v2, 0x9600

    if-eq v1, v2, :cond_64

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/zxing/e/a/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, v1, 0x20

    div-int/lit8 v1, v1, 0x20

    rem-int/lit8 v3, v1, 0xc

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v1, v1, 0xc

    div-int/lit8 v4, v1, 0xa

    if-nez v4, :cond_4d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 v1, v3, 0xa

    if-nez v1, :cond_57

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 v1, v2, 0xa

    if-nez v1, :cond_61

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/StringBuilder;I)V
    .registers 5

    const v0, 0x186a0

    div-int v0, p2, v0

    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/e/a/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
