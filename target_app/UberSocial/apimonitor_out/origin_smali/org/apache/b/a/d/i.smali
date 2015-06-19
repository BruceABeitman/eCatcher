.class public Lorg/apache/b/a/d/i;
.super Lorg/apache/b/a/d/e;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lorg/apache/b/a/d/a;


# direct methods
.method public constructor <init>(Lorg/apache/b/a/d/a;Ljava/lang/String;)V
    .registers 7

    const/16 v3, 0x2d

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/b/a/d/e;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/apache/b/a/d/a;->g()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Boundary is too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iput-object p1, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    iput-boolean v0, p0, Lorg/apache/b/a/d/i;->b:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/b/a/d/i;->c:I

    iput-boolean v0, p0, Lorg/apache/b/a/d/i;->d:Z

    iput v0, p0, Lorg/apache/b/a/d/i;->e:I

    iput-boolean v0, p0, Lorg/apache/b/a/d/i;->f:Z

    iput-boolean v0, p0, Lorg/apache/b/a/d/i;->g:Z

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/b/a/d/i;->a:[B

    iget-object v1, p0, Lorg/apache/b/a/d/i;->a:[B

    aput-byte v3, v1, v0

    iget-object v1, p0, Lorg/apache/b/a/d/i;->a:[B

    const/4 v2, 0x1

    aput-byte v3, v1, v2

    :goto_3a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5e

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4d

    const/16 v2, 0xa

    if-ne v1, v2, :cond_55

    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Boundary may not contain CR or LF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    iget-object v2, p0, Lorg/apache/b/a/d/i;->a:[B

    add-int/lit8 v3, v0, 0x2

    aput-byte v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_5e
    invoke-direct {p0}, Lorg/apache/b/a/d/i;->e()I

    return-void
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/b/a/d/i;->b:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/b/a/d/i;->d:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private d()Z
    .registers 3

    iget v0, p0, Lorg/apache/b/a/d/i;->c:I

    iget-object v1, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v1}, Lorg/apache/b/a/d/a;->d()I

    move-result v1

    if-le v0, v1, :cond_16

    iget v0, p0, Lorg/apache/b/a/d/i;->c:I

    iget-object v1, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v1}, Lorg/apache/b/a/d/a;->e()I

    move-result v1

    if-gt v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private e()I
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget-boolean v3, p0, Lorg/apache/b/a/d/i;->b:Z

    if-eqz v3, :cond_9

    move v0, v2

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0}, Lorg/apache/b/a/d/i;->d()Z

    move-result v3

    if-nez v3, :cond_44

    iget-object v3, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v3}, Lorg/apache/b/a/d/a;->a()I

    move-result v3

    :goto_15
    if-ne v3, v2, :cond_18

    move v0, v1

    :cond_18
    iput-boolean v0, p0, Lorg/apache/b/a/d/i;->b:Z

    iget-object v0, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    iget-object v4, p0, Lorg/apache/b/a/d/i;->a:[B

    invoke-virtual {v0, v4}, Lorg/apache/b/a/d/a;->a([B)I

    move-result v0

    :goto_22
    if-lez v0, :cond_46

    iget-object v4, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/b/a/d/a;->b(I)B

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_46

    iget-object v4, p0, Lorg/apache/b/a/d/i;->a:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    iget-object v5, p0, Lorg/apache/b/a/d/i;->a:[B

    iget-object v6, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v6}, Lorg/apache/b/a/d/a;->e()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v4, v5, v0, v6}, Lorg/apache/b/a/d/a;->a([BII)I

    move-result v0

    goto :goto_22

    :cond_44
    move v3, v0

    goto :goto_15

    :cond_46
    if-eq v0, v2, :cond_51

    iput v0, p0, Lorg/apache/b/a/d/i;->c:I

    iput-boolean v1, p0, Lorg/apache/b/a/d/i;->d:Z

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->f()V

    :goto_4f
    move v0, v3

    goto :goto_8

    :cond_51
    iget-boolean v0, p0, Lorg/apache/b/a/d/i;->b:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v0}, Lorg/apache/b/a/d/a;->e()I

    move-result v0

    iput v0, p0, Lorg/apache/b/a/d/i;->c:I

    goto :goto_4f

    :cond_5e
    iget-object v0, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v0}, Lorg/apache/b/a/d/a;->e()I

    move-result v0

    iget-object v1, p0, Lorg/apache/b/a/d/i;->a:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/b/a/d/i;->c:I

    goto :goto_4f
.end method

.method private f()V
    .registers 4

    iget-object v0, p0, Lorg/apache/b/a/d/i;->a:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/b/a/d/i;->e:I

    iget v0, p0, Lorg/apache/b/a/d/i;->c:I

    iget-object v1, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v1}, Lorg/apache/b/a/d/a;->d()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_2a

    iget-object v1, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    iget v2, p0, Lorg/apache/b/a/d/i;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/b/a/d/a;->b(I)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2a

    iget v1, p0, Lorg/apache/b/a/d/i;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/b/a/d/i;->e:I

    iget v1, p0, Lorg/apache/b/a/d/i;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/b/a/d/i;->c:I

    :cond_2a
    const/4 v1, 0x1

    if-le v0, v1, :cond_47

    iget-object v0, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    iget v1, p0, Lorg/apache/b/a/d/i;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/b/a/d/a;->b(I)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_47

    iget v0, p0, Lorg/apache/b/a/d/i;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/b/a/d/i;->e:I

    iget v0, p0, Lorg/apache/b/a/d/i;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/b/a/d/i;->c:I

    :cond_47
    return-void
.end method

.method private g()V
    .registers 9

    const/16 v7, 0x2d

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/apache/b/a/d/i;->g:Z

    if-nez v0, :cond_50

    iput-boolean v1, p0, Lorg/apache/b/a/d/i;->g:Z

    iget-object v0, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    iget v2, p0, Lorg/apache/b/a/d/i;->e:I

    invoke-virtual {v0, v2}, Lorg/apache/b/a/d/a;->c(I)I

    move v0, v1

    :goto_14
    iget-object v2, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v2}, Lorg/apache/b/a/d/a;->f()I

    move-result v2

    if-le v2, v1, :cond_5f

    iget-object v2, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    iget-object v3, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v3}, Lorg/apache/b/a/d/a;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/b/a/d/a;->b(I)B

    move-result v2

    iget-object v3, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    iget-object v4, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v4}, Lorg/apache/b/a/d/a;->d()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/b/a/d/a;->b(I)B

    move-result v3

    if-eqz v0, :cond_45

    if-ne v2, v7, :cond_45

    if-ne v3, v7, :cond_45

    iput-boolean v1, p0, Lorg/apache/b/a/d/i;->f:Z

    iget-object v0, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v0, v5}, Lorg/apache/b/a/d/a;->c(I)I

    const/4 v0, 0x0

    goto :goto_14

    :cond_45
    const/16 v4, 0xd

    if-ne v2, v4, :cond_51

    if-ne v3, v6, :cond_51

    iget-object v0, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v0, v5}, Lorg/apache/b/a/d/a;->c(I)I

    :cond_50
    :goto_50
    return-void

    :cond_51
    if-ne v2, v6, :cond_59

    iget-object v0, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v0, v1}, Lorg/apache/b/a/d/a;->c(I)I

    goto :goto_50

    :cond_59
    iget-object v2, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v2, v1}, Lorg/apache/b/a/d/a;->c(I)I

    goto :goto_14

    :cond_5f
    iget-boolean v2, p0, Lorg/apache/b/a/d/i;->b:Z

    if-nez v2, :cond_50

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->e()I

    goto :goto_14
.end method


# virtual methods
.method public a(Lorg/apache/b/a/g/a;)I
    .registers 10

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v1, p0, Lorg/apache/b/a/d/i;->g:Z

    if-eqz v1, :cond_12

    move v1, v2

    :cond_11
    :goto_11
    return v1

    :cond_12
    invoke-direct {p0}, Lorg/apache/b/a/d/i;->c()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->d()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->g()V

    move v1, v2

    goto :goto_11

    :cond_23
    move v4, v0

    move v1, v0

    :cond_25
    :goto_25
    if-nez v4, :cond_41

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->d()Z

    move-result v3

    if-nez v3, :cond_47

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->e()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->d()Z

    move-result v3

    if-nez v3, :cond_47

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->c()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->g()V

    move v0, v2

    :cond_41
    if-nez v1, :cond_11

    if-ne v0, v2, :cond_11

    move v1, v2

    goto :goto_11

    :cond_47
    iget v3, p0, Lorg/apache/b/a/d/i;->c:I

    iget-object v5, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v5}, Lorg/apache/b/a/d/a;->d()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    const/16 v6, 0xa

    iget-object v7, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v7}, Lorg/apache/b/a/d/a;->d()I

    move-result v7

    invoke-virtual {v5, v6, v7, v3}, Lorg/apache/b/a/d/a;->a(BII)I

    move-result v5

    if-eq v5, v2, :cond_6a

    const/4 v4, 0x1

    add-int/lit8 v3, v5, 0x1

    iget-object v5, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v5}, Lorg/apache/b/a/d/a;->d()I

    move-result v5

    sub-int/2addr v3, v5

    :cond_6a
    if-lez v3, :cond_25

    iget-object v5, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v5}, Lorg/apache/b/a/d/a;->c()[B

    move-result-object v5

    iget-object v6, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v6}, Lorg/apache/b/a/d/a;->d()I

    move-result v6

    invoke-virtual {p1, v5, v6, v3}, Lorg/apache/b/a/g/a;->a([BII)V

    iget-object v5, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v5, v3}, Lorg/apache/b/a/d/a;->c(I)I

    add-int/2addr v1, v3

    goto :goto_25
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/b/a/d/i;->f:Z

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/b/a/d/i;->b:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v0}, Lorg/apache/b/a/d/a;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 3

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/apache/b/a/d/i;->g:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lorg/apache/b/a/d/i;->c()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->d()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->g()V

    goto :goto_5

    :cond_16
    invoke-direct {p0}, Lorg/apache/b/a/d/i;->e()I

    :cond_19
    invoke-direct {p0}, Lorg/apache/b/a/d/i;->d()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v0, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v0}, Lorg/apache/b/a/d/a;->read()I

    move-result v0

    goto :goto_5

    :cond_26
    invoke-direct {p0}, Lorg/apache/b/a/d/i;->c()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->g()V

    goto :goto_5
.end method

.method public read([BII)I
    .registers 6

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/apache/b/a/d/i;->g:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lorg/apache/b/a/d/i;->c()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->d()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->g()V

    goto :goto_5

    :cond_16
    invoke-direct {p0}, Lorg/apache/b/a/d/i;->e()I

    invoke-direct {p0}, Lorg/apache/b/a/d/i;->d()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/b/a/d/i;->read([BII)I

    move-result v0

    goto :goto_5

    :cond_24
    iget v0, p0, Lorg/apache/b/a/d/i;->c:I

    iget-object v1, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v1}, Lorg/apache/b/a/d/a;->d()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/b/a/d/i;->h:Lorg/apache/b/a/d/a;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/b/a/d/a;->read([BII)I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "MimeBoundaryInputStream, boundary "

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lorg/apache/b/a/d/i;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_18

    iget-object v2, p0, Lorg/apache/b/a/d/i;->a:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
