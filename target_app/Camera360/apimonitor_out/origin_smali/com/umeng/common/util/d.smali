.class public abstract Lcom/umeng/common/util/d;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# static fields
.field private static final a:I = 0x2

.field public static final b:I = 0x4c

.field public static final c:I = 0x40

.field protected static final d:I = 0xff

.field protected static final e:B = 0x3dt

.field private static final m:I = 0x2000


# instance fields
.field protected final f:B

.field protected final g:I

.field protected h:[B

.field protected i:I

.field protected j:Z

.field protected k:I

.field protected l:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:I


# direct methods
.method protected constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/umeng/common/util/d;->f:B

    iput p1, p0, Lcom/umeng/common/util/d;->n:I

    iput p2, p0, Lcom/umeng/common/util/d;->o:I

    if-lez p3, :cond_17

    if-lez p4, :cond_17

    div-int v0, p3, p2

    mul-int/2addr v0, p2

    :goto_12
    iput v0, p0, Lcom/umeng/common/util/d;->g:I

    iput p4, p0, Lcom/umeng/common/util/d;->p:I

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private a()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/umeng/common/util/d;->h:[B

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/umeng/common/util/d;->d()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/umeng/common/util/d;->h:[B

    iput v3, p0, Lcom/umeng/common/util/d;->i:I

    iput v3, p0, Lcom/umeng/common/util/d;->q:I

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/umeng/common/util/d;->h:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/umeng/common/util/d;->h:[B

    iget-object v2, p0, Lcom/umeng/common/util/d;->h:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/umeng/common/util/d;->h:[B

    goto :goto_11
.end method

.method protected static c(B)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method private e()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/common/util/d;->h:[B

    iput v1, p0, Lcom/umeng/common/util/d;->i:I

    iput v1, p0, Lcom/umeng/common/util/d;->q:I

    iput v1, p0, Lcom/umeng/common/util/d;->k:I

    iput v1, p0, Lcom/umeng/common/util/d;->l:I

    iput-boolean v1, p0, Lcom/umeng/common/util/d;->j:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p1, [B

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/umeng/common/util/d;->l([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .registers 4

    iget-object v0, p0, Lcom/umeng/common/util/d;->h:[B

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/umeng/common/util/d;->h:[B

    array-length v0, v0

    iget v1, p0, Lcom/umeng/common/util/d;->i:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_f

    :cond_c
    invoke-direct {p0}, Lcom/umeng/common/util/d;->a()V

    :cond_f
    return-void
.end method

.method abstract a([BII)V
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p1, [B

    if-eqz v0, :cond_b

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/umeng/common/util/d;->k([B)[B

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/common/util/d;->c(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_a

    :cond_16
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract b([BII)V
.end method

.method b()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/common/util/d;->h:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract b(B)Z
.end method

.method public b([BZ)Z
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p1

    if-lt v0, v2, :cond_7

    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/umeng/common/util/d;->b(B)Z

    move-result v2

    if-nez v2, :cond_1f

    if-eqz p2, :cond_6

    aget-byte v2, p1, v0

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1f

    aget-byte v2, p1, v0

    invoke-static {v2}, Lcom/umeng/common/util/d;->c(B)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method c()I
    .registers 3

    iget-object v0, p0, Lcom/umeng/common/util/d;->h:[B

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/umeng/common/util/d;->i:I

    iget v1, p0, Lcom/umeng/common/util/d;->q:I

    sub-int/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method c([BII)I
    .registers 7

    iget-object v0, p0, Lcom/umeng/common/util/d;->h:[B

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/umeng/common/util/d;->c()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/umeng/common/util/d;->h:[B

    iget v2, p0, Lcom/umeng/common/util/d;->q:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/umeng/common/util/d;->q:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/umeng/common/util/d;->q:I

    iget v1, p0, Lcom/umeng/common/util/d;->q:I

    iget v2, p0, Lcom/umeng/common/util/d;->i:I

    if-lt v1, v2, :cond_21

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/umeng/common/util/d;->h:[B

    :cond_21
    :goto_21
    return v0

    :cond_22
    iget-boolean v0, p0, Lcom/umeng/common/util/d;->j:Z

    if-eqz v0, :cond_28

    const/4 v0, -0x1

    goto :goto_21

    :cond_28
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public c(Ljava/lang/String;)[B
    .registers 3

    invoke-static {p1}, Lcom/umeng/common/util/a;->f(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/common/util/d;->k([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected d()I
    .registers 2

    const/16 v0, 0x2000

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Lcom/umeng/common/util/a;->f(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/common/util/d;->b([BZ)Z

    move-result v0

    return v0
.end method

.method public j([B)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/umeng/common/util/d;->l([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/util/a;->f([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k([B)[B
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/umeng/common/util/d;->e()V

    if-eqz p1, :cond_9

    array-length v0, p1

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-object p1

    :cond_a
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/common/util/d;->b([BII)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/common/util/d;->b([BII)V

    iget v0, p0, Lcom/umeng/common/util/d;->i:I

    new-array p1, v0, [B

    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/common/util/d;->c([BII)I

    goto :goto_9
.end method

.method public l([B)[B
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/umeng/common/util/d;->e()V

    if-eqz p1, :cond_9

    array-length v0, p1

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-object p1

    :cond_a
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lcom/umeng/common/util/d;->a([BII)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v2, v0}, Lcom/umeng/common/util/d;->a([BII)V

    iget v0, p0, Lcom/umeng/common/util/d;->i:I

    iget v1, p0, Lcom/umeng/common/util/d;->q:I

    sub-int/2addr v0, v1

    new-array p1, v0, [B

    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lcom/umeng/common/util/d;->c([BII)I

    goto :goto_9
.end method

.method public m([B)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/umeng/common/util/d;->l([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/util/a;->f([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected n([B)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v1

    :cond_4
    move v0, v1

    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_3

    const/16 v2, 0x3d

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_16

    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/umeng/common/util/d;->b(B)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_16
    const/4 v1, 0x1

    goto :goto_3

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public o([B)J
    .registers 8

    array-length v0, p1

    iget v1, p0, Lcom/umeng/common/util/d;->n:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/umeng/common/util/d;->n:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/umeng/common/util/d;->o:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/umeng/common/util/d;->g:I

    if-lez v2, :cond_22

    iget v2, p0, Lcom/umeng/common/util/d;->g:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/umeng/common/util/d;->g:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcom/umeng/common/util/d;->p:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_22
    return-wide v0
.end method
