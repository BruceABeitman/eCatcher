.class public final Lcom/twidroid/net/a/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x14

.field public static final b:I = 0x1388


# instance fields
.field c:[J

.field d:I

.field e:J

.field f:J


# direct methods
.method public constructor <init>([J)V
    .registers 6

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/twidroid/net/a/c/i;->d:I

    iput-wide v2, p0, Lcom/twidroid/net/a/c/i;->e:J

    iput-wide v2, p0, Lcom/twidroid/net/a/c/i;->f:J

    iput-object p1, p0, Lcom/twidroid/net/a/c/i;->c:[J

    iget-object v0, p0, Lcom/twidroid/net/a/c/i;->c:[J

    if-nez v0, :cond_16

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/twidroid/net/a/c/i;->c:[J

    :cond_16
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/twidroid/net/a/c/i;->e:J

    return-void
.end method

.method public a()[J
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twidroid/net/a/c/i;->c:[J

    if-nez v0, :cond_8

    new-array v0, v2, [J

    :goto_7
    return-object v0

    :cond_8
    iget v6, p0, Lcom/twidroid/net/a/c/i;->d:I

    iput v2, p0, Lcom/twidroid/net/a/c/i;->d:I

    iget-object v0, p0, Lcom/twidroid/net/a/c/i;->c:[J

    array-length v0, v0

    new-array v5, v0, [J

    invoke-virtual {p0}, Lcom/twidroid/net/a/c/i;->b()[J

    move-result-object v0

    move v1, v2

    :goto_16
    array-length v3, v0

    if-lez v3, :cond_2d

    move v3, v2

    :goto_1a
    array-length v4, v0

    if-ge v3, v4, :cond_28

    aget-wide v7, v0, v3

    aput-wide v7, v5, v1

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_1a

    :cond_28
    invoke-virtual {p0}, Lcom/twidroid/net/a/c/i;->b()[J

    move-result-object v0

    goto :goto_16

    :cond_2d
    iput v6, p0, Lcom/twidroid/net/a/c/i;->d:I

    move-object v0, v5

    goto :goto_7
.end method

.method public a(I)[J
    .registers 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/twidroid/net/a/c/i;->d:I

    iget-object v2, p0, Lcom/twidroid/net/a/c/i;->c:[J

    array-length v2, v2

    if-lt v0, v2, :cond_b

    new-array v0, v1, [J

    :goto_a
    return-object v0

    :cond_b
    iget v0, p0, Lcom/twidroid/net/a/c/i;->d:I

    add-int/2addr v0, p1

    iget-object v2, p0, Lcom/twidroid/net/a/c/i;->c:[J

    array-length v2, v2

    if-le v0, v2, :cond_16

    iget-object v0, p0, Lcom/twidroid/net/a/c/i;->c:[J

    array-length v0, v0

    :cond_16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_30

    iget v2, p0, Lcom/twidroid/net/a/c/i;->d:I

    sub-int v2, v0, v2

    new-array v0, v2, [J

    :goto_22
    if-ge v1, v2, :cond_38

    iget-object v3, p0, Lcom/twidroid/net/a/c/i;->c:[J

    iget v4, p0, Lcom/twidroid/net/a/c/i;->d:I

    add-int/2addr v4, v1

    aget-wide v3, v3, v4

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_30
    iget-object v1, p0, Lcom/twidroid/net/a/c/i;->c:[J

    iget v2, p0, Lcom/twidroid/net/a/c/i;->d:I

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    :cond_38
    iget v1, p0, Lcom/twidroid/net/a/c/i;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/twidroid/net/a/c/i;->d:I

    goto :goto_a
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/twidroid/net/a/c/i;->f:J

    return-void
.end method

.method public b()[J
    .registers 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/i;->a(I)[J

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/net/a/c/i;->d:I

    return-void
.end method

.method public d()Z
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/twidroid/net/a/c/i;->d:I

    iget-object v2, p0, Lcom/twidroid/net/a/c/i;->c:[J

    array-length v2, v2

    if-lt v0, v2, :cond_9

    :goto_8
    return v1

    :cond_9
    iget v0, p0, Lcom/twidroid/net/a/c/i;->d:I

    add-int/lit8 v0, v0, 0x14

    iget-object v2, p0, Lcom/twidroid/net/a/c/i;->c:[J

    array-length v2, v2

    if-le v0, v2, :cond_15

    iget-object v0, p0, Lcom/twidroid/net/a/c/i;->c:[J

    array-length v0, v0

    :cond_15
    iget v2, p0, Lcom/twidroid/net/a/c/i;->d:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1b
    move v1, v0

    goto :goto_8

    :cond_1d
    move v0, v1

    goto :goto_1b
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/twidroid/net/a/c/i;->d:I

    return v0
.end method

.method public f()J
    .registers 3

    iget-wide v0, p0, Lcom/twidroid/net/a/c/i;->e:J

    return-wide v0
.end method

.method public g()J
    .registers 3

    iget-wide v0, p0, Lcom/twidroid/net/a/c/i;->f:J

    return-wide v0
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/a/c/i;->c:[J

    array-length v0, v0

    return v0
.end method
