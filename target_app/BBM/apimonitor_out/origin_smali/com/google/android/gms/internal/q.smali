.class Lcom/google/android/gms/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/o;


# instance fields
.field private kv:Lcom/google/android/gms/internal/jz;

.field private kw:[B

.field private final kx:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/q;->kx:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/q;->reset()V

    return-void
.end method


# virtual methods
.method public b(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->kv:Lcom/google/android/gms/internal/jz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/jz;->b(IJ)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->kv:Lcom/google/android/gms/internal/jz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V

    return-void
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/q;->kx:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/q;->kw:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->kw:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/jz;->o([B)Lcom/google/android/gms/internal/jz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/q;->kv:Lcom/google/android/gms/internal/jz;

    return-void
.end method

.method public z()[B
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->kv:Lcom/google/android/gms/internal/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jz;->kM()I

    move-result v0

    if-gez v0, :cond_f

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_f
    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->kw:[B

    :goto_13
    return-object v0

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/q;->kw:[B

    array-length v1, v1

    sub-int v0, v1, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/q;->kw:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13
.end method
