.class final Lcom/instagram/common/e/b/f;
.super Ljava/lang/Object;
.source "IgByteArray.java"


# instance fields
.field private final a:Lcom/instagram/common/e/b/g;

.field private final b:[B

.field private c:[B

.field private d:Z

.field private e:I


# direct methods
.method constructor <init>(Lcom/instagram/common/e/b/g;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/common/e/b/f;->a:Lcom/instagram/common/e/b/g;

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/instagram/common/e/b/f;->c:[B

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/instagram/common/e/b/f;->b:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/e/b/f;->d:Z

    return-void
.end method

.method private b(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/common/e/b/f;->c:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/instagram/common/e/b/f;->c:[B

    iget v2, p0, Lcom/instagram/common/e/b/f;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/instagram/common/e/b/f;->c:[B

    return-void
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/e/b/f;->d:Z

    iput v0, p0, Lcom/instagram/common/e/b/f;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    iget-boolean v0, p0, Lcom/instagram/common/e/b/f;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The buffer is already frozen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-gez p1, :cond_23

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative length detected : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    if-nez p1, :cond_26

    :goto_25
    return-void

    :cond_26
    iget v0, p0, Lcom/instagram/common/e/b/f;->e:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/instagram/common/e/b/f;->c:[B

    array-length v1, v1

    if-le v0, v1, :cond_31

    invoke-direct {p0, v0}, Lcom/instagram/common/e/b/f;->b(I)V

    :cond_31
    iget-object v1, p0, Lcom/instagram/common/e/b/f;->b:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/common/e/b/f;->c:[B

    iget v4, p0, Lcom/instagram/common/e/b/f;->e:I

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/instagram/common/e/b/f;->e:I

    goto :goto_25
.end method

.method public final a()[B
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/b/f;->b:[B

    return-object v0
.end method

.method public final b()[B
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/b/f;->c:[B

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/instagram/common/e/b/f;->e:I

    return v0
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/e/b/f;->d:Z

    return-void
.end method

.method public final e()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/common/e/b/f;->f()V

    iget-object v0, p0, Lcom/instagram/common/e/b/f;->a:Lcom/instagram/common/e/b/g;

    invoke-virtual {v0, p0}, Lcom/instagram/common/e/b/g;->a(Lcom/instagram/common/e/b/f;)V

    return-void
.end method
