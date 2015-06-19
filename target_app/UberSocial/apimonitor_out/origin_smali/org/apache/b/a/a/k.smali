.class Lorg/apache/b/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/b/a/a/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/b/a/a/k;->a:[B

    iput v1, p0, Lorg/apache/b/a/a/k;->b:I

    iput v1, p0, Lorg/apache/b/a/a/k;->c:I

    return-void
.end method

.method private a(I)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lorg/apache/b/a/a/k;->a:[B

    array-length v1, v1

    if-lt v0, v1, :cond_8

    const/4 v0, 0x0

    :cond_8
    return v0
.end method

.method static a(Lorg/apache/b/a/a/k;I)I
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/b/a/a/k;->a(I)I

    move-result v0

    return v0
.end method

.method private b(I)I
    .registers 3

    add-int/lit8 v0, p1, -0x1

    if-gez v0, :cond_9

    iget-object v0, p0, Lorg/apache/b/a/a/k;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_9
    return v0
.end method

.method static b(Lorg/apache/b/a/a/k;I)I
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/b/a/a/k;->b(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .registers 3

    iget v0, p0, Lorg/apache/b/a/a/k;->c:I

    iget v1, p0, Lorg/apache/b/a/a/k;->b:I

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Lorg/apache/b/a/a/k;->a:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/b/a/a/k;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/b/a/a/k;->c:I

    add-int/2addr v0, v1

    :goto_f
    return v0

    :cond_10
    iget v0, p0, Lorg/apache/b/a/a/k;->c:I

    iget v1, p0, Lorg/apache/b/a/a/k;->b:I

    sub-int/2addr v0, v1

    goto :goto_f
.end method

.method public a(B)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/b/a/a/k;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/b/a/a/k;->a:[B

    array-length v2, v2

    if-lt v0, v2, :cond_39

    iget-object v0, p0, Lorg/apache/b/a/a/k;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    iget v0, p0, Lorg/apache/b/a/a/k;->b:I

    move v2, v1

    :cond_1a
    :goto_1a
    iget v4, p0, Lorg/apache/b/a/a/k;->c:I

    if-eq v0, v4, :cond_33

    iget-object v4, p0, Lorg/apache/b/a/a/k;->a:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v2

    iget-object v4, p0, Lorg/apache/b/a/a/k;->a:[B

    aput-byte v1, v4, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lorg/apache/b/a/a/k;->a:[B

    array-length v4, v4

    if-ne v0, v4, :cond_1a

    move v0, v1

    goto :goto_1a

    :cond_33
    iput-object v3, p0, Lorg/apache/b/a/a/k;->a:[B

    iput v1, p0, Lorg/apache/b/a/a/k;->b:I

    iput v2, p0, Lorg/apache/b/a/a/k;->c:I

    :cond_39
    iget-object v0, p0, Lorg/apache/b/a/a/k;->a:[B

    iget v2, p0, Lorg/apache/b/a/a/k;->c:I

    aput-byte p1, v0, v2

    iget v0, p0, Lorg/apache/b/a/a/k;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/b/a/a/k;->c:I

    iget v0, p0, Lorg/apache/b/a/a/k;->c:I

    iget-object v2, p0, Lorg/apache/b/a/a/k;->a:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4e

    iput v1, p0, Lorg/apache/b/a/a/k;->c:I

    :cond_4e
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/b/a/a/k;->a()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c()B
    .registers 3

    invoke-virtual {p0}, Lorg/apache/b/a/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lorg/apache/b/a/a/k;->a:[B

    iget v1, p0, Lorg/apache/b/a/a/k;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public d()B
    .registers 4

    invoke-virtual {p0}, Lorg/apache/b/a/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lorg/apache/b/a/a/k;->a:[B

    iget v1, p0, Lorg/apache/b/a/a/k;->b:I

    aget-byte v0, v0, v1

    iget v1, p0, Lorg/apache/b/a/a/k;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/b/a/a/k;->b:I

    iget v1, p0, Lorg/apache/b/a/a/k;->b:I

    iget-object v2, p0, Lorg/apache/b/a/a/k;->a:[B

    array-length v2, v2

    if-lt v1, v2, :cond_24

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/b/a/a/k;->b:I

    :cond_24
    return v0
.end method

.method public e()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/apache/b/a/a/l;

    invoke-direct {v0, p0}, Lorg/apache/b/a/a/l;-><init>(Lorg/apache/b/a/a/k;)V

    return-object v0
.end method
