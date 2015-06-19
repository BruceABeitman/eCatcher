.class public final Lcom/userzoom/cd;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/userzoom/k;

.field private c:[B

.field private d:[C


# direct methods
.method public constructor <init>(Lcom/userzoom/k;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/userzoom/cd;->c:[B

    iput-object v0, p0, Lcom/userzoom/cd;->d:[C

    iput-object p1, p0, Lcom/userzoom/cd;->b:Lcom/userzoom/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/userzoom/cd;->a:Z

    return-void
.end method


# virtual methods
.method public final a([B)V
    .registers 4

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/userzoom/cd;->c:[B

    if-eq p1, v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/userzoom/cd;->c:[B

    iget-object v0, p0, Lcom/userzoom/cd;->b:Lcom/userzoom/k;

    sget-object v1, Lcom/userzoom/D;->a:Lcom/userzoom/D;

    invoke-virtual {v0, v1, p1}, Lcom/userzoom/k;->a(Lcom/userzoom/D;[B)V

    :cond_18
    return-void
.end method

.method public final a([C)V
    .registers 4

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/userzoom/cd;->d:[C

    if-eq p1, v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/userzoom/cd;->d:[C

    iget-object v0, p0, Lcom/userzoom/cd;->b:Lcom/userzoom/k;

    sget-object v1, Lcom/userzoom/E;->a:Lcom/userzoom/E;

    invoke-virtual {v0, v1, p1}, Lcom/userzoom/k;->a(Lcom/userzoom/E;[C)V

    :cond_18
    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/userzoom/cd;->a:Z

    return v0
.end method

.method public final b()[B
    .registers 3

    iget-object v0, p0, Lcom/userzoom/cd;->c:[B

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocWriteEncodingBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/userzoom/cd;->b:Lcom/userzoom/k;

    sget-object v1, Lcom/userzoom/D;->a:Lcom/userzoom/D;

    invoke-virtual {v0, v1}, Lcom/userzoom/k;->a(Lcom/userzoom/D;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/userzoom/cd;->c:[B

    iget-object v0, p0, Lcom/userzoom/cd;->c:[B

    return-object v0
.end method

.method public final c()[C
    .registers 4

    iget-object v0, p0, Lcom/userzoom/cd;->d:[C

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/userzoom/cd;->b:Lcom/userzoom/k;

    sget-object v1, Lcom/userzoom/E;->a:Lcom/userzoom/E;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/userzoom/k;->a(Lcom/userzoom/E;I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/userzoom/cd;->d:[C

    iget-object v0, p0, Lcom/userzoom/cd;->d:[C

    return-object v0
.end method
