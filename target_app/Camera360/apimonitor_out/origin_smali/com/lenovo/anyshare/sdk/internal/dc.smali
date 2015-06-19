.class public Lcom/lenovo/anyshare/sdk/internal/dc;
.super Ljava/lang/Object;
.source "PackageDecoder.java"


# instance fields
.field private a:I

.field private b:Lcom/lenovo/anyshare/sdk/internal/dd;

.field private c:Z

.field private d:[S

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Lcom/lenovo/anyshare/sdk/internal/cv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/lenovo/anyshare/sdk/internal/dd;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->a:I

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->b:Lcom/lenovo/anyshare/sdk/internal/dd;

    return-void
.end method

.method private a([Lcom/lenovo/anyshare/sdk/internal/db$a;)I
    .registers 6

    const/4 v1, -0x1

    if-nez p1, :cond_5

    move v0, v1

    :cond_4
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3a

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-boolean v2, v2, Lcom/lenovo/anyshare/sdk/internal/cv;->b:Z

    if-eqz v2, :cond_37

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cw;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-byte v2, v2, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-byte v3, v3, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B

    if-ne v2, v3, :cond_37

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-boolean v2, v2, Lcom/lenovo/anyshare/sdk/internal/cv;->b:Z

    if-eqz v2, :cond_37

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cw;->b:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-byte v2, v2, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-byte v3, v3, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B

    if-eq v2, v3, :cond_4

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3a
    move v0, v1

    goto :goto_4
.end method

.method private a([Lcom/lenovo/anyshare/sdk/internal/db$a;I)I
    .registers 7

    const/4 v1, -0x1

    if-nez p1, :cond_5

    move v0, v1

    :cond_4
    :goto_4
    return v0

    :cond_5
    move v0, p2

    :goto_6
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3a

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-boolean v2, v2, Lcom/lenovo/anyshare/sdk/internal/cv;->b:Z

    if-eqz v2, :cond_37

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cw;->c:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-byte v2, v2, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-byte v3, v3, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B

    if-ne v2, v3, :cond_37

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-boolean v2, v2, Lcom/lenovo/anyshare/sdk/internal/cv;->b:Z

    if-eqz v2, :cond_37

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cw;->d:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-byte v2, v2, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-byte v3, v3, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B

    if-eq v2, v3, :cond_4

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3a
    move v0, v1

    goto :goto_4
.end method

.method private a([Lcom/lenovo/anyshare/sdk/internal/db$a;II)I
    .registers 7

    const/4 v2, -0x1

    if-nez p1, :cond_5

    const/4 v0, 0x0

    :cond_4
    return v0

    :cond_5
    if-ne p2, v2, :cond_8

    const/4 p2, 0x0

    :cond_8
    if-ne p3, v2, :cond_d

    array-length v2, p1

    add-int/lit8 p3, v2, -0x1

    :cond_d
    const/4 v0, 0x0

    move v1, p2

    :goto_f
    if-gt v1, p3, :cond_4

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-boolean v2, v2, Lcom/lenovo/anyshare/sdk/internal/cv;->b:Z

    if-nez v2, :cond_1b

    add-int/lit8 v0, v0, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method private a([Lcom/lenovo/anyshare/sdk/internal/db$a;IILjava/util/List;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/lenovo/anyshare/sdk/internal/db$a;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-nez p1, :cond_5

    :goto_4
    return v7

    :cond_5
    if-ne p2, v8, :cond_8

    const/4 p2, 0x0

    :cond_8
    if-ne p3, v8, :cond_d

    array-length v8, p1

    add-int/lit8 p3, v8, -0x1

    :cond_d
    sub-int v8, p3, p2

    add-int/lit8 v0, v8, 0x1

    new-array v4, v0, [Lcom/lenovo/anyshare/sdk/internal/db$a;

    invoke-static {p1, p2, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v7, v4, v7

    iget v1, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->c:I

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_27

    aget-object v7, v4, v2

    iget v8, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->c:I

    sub-int/2addr v8, v1

    iput v8, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_27
    add-int/lit8 v7, v0, -0x1

    aget-object v7, v4, v7

    iget v7, v7, Lcom/lenovo/anyshare/sdk/internal/db$a;->c:I

    add-int/lit8 v8, v0, -0x1

    aget-object v8, v4, v8

    iget v8, v8, Lcom/lenovo/anyshare/sdk/internal/db$a;->b:I

    add-int v5, v7, v8

    int-to-double v7, v5

    sget-wide v9, Lcom/lenovo/anyshare/sdk/internal/db;->a:D

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v6, v7

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v6, :cond_65

    invoke-direct {p0, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/dc;->b([Lcom/lenovo/anyshare/sdk/internal/db$a;I)Lcom/lenovo/anyshare/sdk/internal/db$a;

    move-result-object v3

    if-eqz v3, :cond_5b

    iget-object v7, v3, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-boolean v7, v7, Lcom/lenovo/anyshare/sdk/internal/cv;->b:Z

    if-eqz v7, :cond_5b

    iget-object v7, v3, Lcom/lenovo/anyshare/sdk/internal/db$a;->a:Lcom/lenovo/anyshare/sdk/internal/cv;

    iget-byte v7, v7, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_5b
    const/16 v7, 0x30

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_65
    const/4 v7, 0x1

    goto :goto_4
.end method

.method private b([Lcom/lenovo/anyshare/sdk/internal/db$a;I)Lcom/lenovo/anyshare/sdk/internal/db$a;
    .registers 11

    int-to-double v2, p2

    sget-wide v4, Lcom/lenovo/anyshare/sdk/internal/db;->a:D

    mul-double/2addr v2, v4

    sget-wide v4, Lcom/lenovo/anyshare/sdk/internal/db;->a:D

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    const/4 v1, 0x0

    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    aget-object v2, p1, v1

    iget v2, v2, Lcom/lenovo/anyshare/sdk/internal/db$a;->c:I

    if-lt v0, v2, :cond_27

    aget-object v2, p1, v1

    iget v2, v2, Lcom/lenovo/anyshare/sdk/internal/db$a;->c:I

    aget-object v3, p1, v1

    iget v3, v3, Lcom/lenovo/anyshare/sdk/internal/db$a;->b:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_27

    aget-object v2, p1, v1

    :goto_26
    return-object v2

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2a
    const/4 v2, 0x0

    goto :goto_26
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->c:Z

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private b([S)[S
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->d:[S

    if-nez v1, :cond_6

    :goto_5
    return-object p1

    :cond_6
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->d:[S

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [S

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->d:[S

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->d:[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->d:[S

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    goto :goto_5
.end method

.method private c([S)V
    .registers 3

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/de;->a([S)[S

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->d:[S

    return-void
.end method

.method private c()[Lcom/lenovo/anyshare/sdk/internal/cv;
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_17

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/lenovo/anyshare/sdk/internal/cv;

    array-length v4, v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    const/4 v4, 0x1

    if-ge v1, v4, :cond_1c

    const/4 v3, 0x0

    :cond_1b
    return-object v3

    :cond_1c
    new-array v3, v1, [Lcom/lenovo/anyshare/sdk/internal/cv;

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_20
    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1b

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/lenovo/anyshare/sdk/internal/cv;

    array-length v4, v4

    invoke-static {v5, v6, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/lenovo/anyshare/sdk/internal/cv;

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/de;->a()V

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/dc;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->d:[S

    return-void
.end method

.method public a([S)V
    .registers 16

    const/4 v13, -0x1

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/dc;->b([S)[S

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lenovo/anyshare/sdk/internal/dc;->c([S)V

    iget v10, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->a:I

    invoke-static {v10, v6}, Lcom/lenovo/anyshare/sdk/internal/de;->a(I[S)[Lcom/lenovo/anyshare/sdk/internal/cv;

    move-result-object v8

    iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v10, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->c:Z

    if-nez v10, :cond_35

    iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_35

    iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    add-int/lit8 v7, v10, -0x1

    move v4, v7

    :goto_2b
    if-ltz v4, :cond_35

    iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->e:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    :cond_35
    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/dc;->c()[Lcom/lenovo/anyshare/sdk/internal/cv;

    move-result-object v9

    invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/db;->a([Lcom/lenovo/anyshare/sdk/internal/cv;)[Lcom/lenovo/anyshare/sdk/internal/db$a;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lenovo/anyshare/sdk/internal/dc;->a([Lcom/lenovo/anyshare/sdk/internal/db$a;)I

    move-result v7

    iget-boolean v10, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->c:Z

    if-nez v10, :cond_ae

    if-ne v7, v13, :cond_48

    :cond_47
    :goto_47
    return-void

    :cond_48
    iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->b:Lcom/lenovo/anyshare/sdk/internal/dd;

    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/lenovo/anyshare/sdk/internal/dd;->a(I[B)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->c:Z

    :cond_53
    add-int/lit8 v10, v7, 0x2

    invoke-direct {p0, v5, v10}, Lcom/lenovo/anyshare/sdk/internal/dc;->a([Lcom/lenovo/anyshare/sdk/internal/db$a;I)I

    move-result v3

    if-ne v3, v13, :cond_65

    add-int/lit8 v10, v7, 0x2

    invoke-direct {p0, v5, v10, v13}, Lcom/lenovo/anyshare/sdk/internal/dc;->a([Lcom/lenovo/anyshare/sdk/internal/db$a;II)I

    move-result v10

    const/16 v11, 0x64

    if-le v10, v11, :cond_47

    :cond_65
    if-ne v3, v13, :cond_bd

    array-length v10, v5

    add-int/lit8 v3, v10, -0x1

    :goto_6a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v10, v7, 0x2

    invoke-direct {p0, v5, v10, v3, v1}, Lcom/lenovo/anyshare/sdk/internal/dc;->a([Lcom/lenovo/anyshare/sdk/internal/db$a;IILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_c6

    const-string/jumbo v10, "PackageDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "decode(): Decoded key = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    new-array v2, v10, [B

    const/4 v4, 0x0

    :goto_9c
    array-length v10, v2

    if-ge v4, v10, :cond_c0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    aput-byte v10, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    :cond_ae
    if-ne v7, v13, :cond_53

    const-string/jumbo v10, "PackageDecoder"

    const-string/jumbo v11, "doDecode(): start sign is true but there is no start key."

    invoke-static {v10, v11}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->c:Z

    goto :goto_47

    :cond_bd
    add-int/lit8 v3, v3, -0x1

    goto :goto_6a

    :cond_c0
    iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/dc;->b:Lcom/lenovo/anyshare/sdk/internal/dd;

    const/4 v11, 0x6

    invoke-interface {v10, v11, v2}, Lcom/lenovo/anyshare/sdk/internal/dd;->a(I[B)V

    :cond_c6
    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/dc;->b()V

    goto/16 :goto_47
.end method
