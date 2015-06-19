.class public final Lcom/fasterxml/jackson/a/d/l;
.super Lcom/fasterxml/jackson/a/d/c;
.source "WriterBasedJsonGenerator.java"


# static fields
.field protected static final l:[C


# instance fields
.field protected final m:Ljava/io/Writer;

.field protected n:[C

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:[C

.field protected s:Lcom/fasterxml/jackson/a/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->g()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/d/l;->l:[C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/a/c/d;ILcom/fasterxml/jackson/a/s;Ljava/io/Writer;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/c;-><init>(Lcom/fasterxml/jackson/a/c/d;ILcom/fasterxml/jackson/a/s;)V

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iput-object p4, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/c/d;->i()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    return-void
.end method

.method private a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[B)I
    .registers 15

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x3

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    add-int/lit8 v8, v1, -0x6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v1

    shr-int/lit8 v2, v1, 0x2

    move v6, v2

    move v5, v3

    move v1, v3

    move v2, v3

    :goto_11
    if-le v2, v0, :cond_1e

    array-length v0, p3

    invoke-static {p2, p3, v2, v1, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/io/InputStream;[BIII)I

    move-result v1

    const/4 v0, 0x3

    if-lt v1, v0, :cond_6c

    add-int/lit8 v0, v1, -0x3

    move v2, v3

    :cond_1e
    iget v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v7, v8, :cond_25

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_25
    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p3, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v9, 0x1

    aget-byte v9, p3, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v2, v9

    add-int/lit8 v5, v5, 0x3

    iget-object v9, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v10, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v2, v9, v10}, Lcom/fasterxml/jackson/a/a;->a(I[CI)I

    move-result v2

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v6, -0x1

    if-gtz v2, :cond_69

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v9, 0x5c

    aput-char v9, v2, v6

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v9, 0x6e

    aput-char v9, v2, v6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    :cond_69
    move v6, v2

    move v2, v7

    goto :goto_11

    :cond_6c
    if-lez v1, :cond_93

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v0, v8, :cond_75

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_75
    aget-byte v0, p3, v3

    shl-int/lit8 v0, v0, 0x10

    if-ge v4, v1, :cond_91

    aget-byte v1, p3, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    :goto_83
    add-int v2, v5, v1

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/fasterxml/jackson/a/a;->a(II[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    move v0, v2

    :goto_90
    return v0

    :cond_91
    move v1, v4

    goto :goto_83

    :cond_93
    move v0, v5

    goto :goto_90
.end method

.method private a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[BI)I
    .registers 14

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x3

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    add-int/lit8 v6, v2, -0x6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    move v4, v2

    move v2, v3

    move v3, p4

    :goto_10
    const/4 v5, 0x2

    if-le v3, v5, :cond_6d

    if-le v2, v0, :cond_1f

    invoke-static {p2, p3, v2, v1, v3}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/io/InputStream;[BIII)I

    move-result v1

    const/4 v2, 0x0

    const/4 v0, 0x3

    if-lt v1, v0, :cond_6d

    add-int/lit8 v0, v1, -0x3

    :cond_1f
    iget v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v5, v6, :cond_26

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_26
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, v7, 0x1

    aget-byte v7, p3, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    add-int/lit8 v3, v3, -0x3

    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v8, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v2, v7, v8}, Lcom/fasterxml/jackson/a/a;->a(I[CI)I

    move-result v2

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v4, -0x1

    if-gtz v2, :cond_6a

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v7, 0x5c

    aput-char v7, v2, v4

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v7, 0x6e

    aput-char v7, v2, v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    :cond_6a
    move v4, v2

    move v2, v5

    goto :goto_10

    :cond_6d
    if-lez v3, :cond_9c

    invoke-static {p2, p3, v2, v1, v3}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/io/InputStream;[BIII)I

    move-result v1

    if-lez v1, :cond_9c

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v0, v6, :cond_7c

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_7c
    const/4 v0, 0x0

    aget-byte v0, p3, v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v2, 0x1

    if-ge v2, v1, :cond_9a

    const/4 v1, 0x1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    :goto_8d
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/fasterxml/jackson/a/a;->a(II[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int v0, v3, v1

    :goto_99
    return v0

    :cond_9a
    const/4 v1, 0x1

    goto :goto_8d

    :cond_9c
    move v0, v3

    goto :goto_99
.end method

.method private static a(Ljava/io/InputStream;[BIII)I
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_e

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    aput-byte v3, p1, v0

    move v0, v1

    move p2, v2

    goto :goto_1

    :cond_e
    array-length v1, p1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_13
    sub-int v2, v1, v0

    if-eqz v2, :cond_1d

    invoke-virtual {p0, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    add-int/2addr v0, v2

    const/4 v2, 0x3

    if-lt v0, v2, :cond_13

    goto :goto_1d
.end method

.method private a([CIICI)I
    .registers 13

    const/16 v5, 0x30

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    if-ltz p5, :cond_29

    if-le p2, v3, :cond_18

    if-ge p2, p3, :cond_18

    add-int/lit8 p2, p2, -0x2

    const/16 v0, 0x5c

    aput-char v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    int-to-char v1, p5

    aput-char v1, p1, v0

    :goto_17
    return p2

    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->r:[C

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->f()[C

    move-result-object v0

    :cond_20
    int-to-char v1, p5

    aput-char v1, v0, v3

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_17

    :cond_29
    const/4 v0, -0x2

    if-eq p5, v0, :cond_db

    const/4 v0, 0x5

    if-le p2, v0, :cond_7c

    if-ge p2, p3, :cond_7c

    add-int/lit8 v0, p2, -0x6

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x5c

    aput-char v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, p1, v1

    const/16 v1, 0xff

    if-le p4, v1, :cond_73

    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, p1, v2

    and-int/lit16 v1, p4, 0xff

    int-to-char p4, v1

    :goto_5e
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v3, p4, 0x4

    aget-char v2, v2, v3

    aput-char v2, p1, v0

    sget-object v0, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v2, p4, 0xf

    aget-char v0, v0, v2

    aput-char v0, p1, v1

    add-int/lit8 p2, v1, -0x5

    goto :goto_17

    :cond_73
    add-int/lit8 v1, v0, 0x1

    aput-char v5, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-char v5, p1, v1

    goto :goto_5e

    :cond_7c
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->r:[C

    if-nez v0, :cond_84

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->f()[C

    move-result-object v0

    :cond_84
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    const/16 v1, 0xff

    if-le p4, v1, :cond_c3

    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p4, 0xff

    const/16 v3, 0xa

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v5, v1, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    const/16 v1, 0xc

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    const/16 v1, 0xd

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_17

    :cond_c3
    sget-object v1, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v2, p4, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v3, p4, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_17

    :cond_db
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-nez v0, :cond_f7

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    :goto_e9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p2, v1, :cond_101

    if-ge p2, p3, :cond_101

    sub-int/2addr p2, v1

    invoke-virtual {v0, v2, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_17

    :cond_f7
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    goto :goto_e9

    :cond_101
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_17
.end method

.method private a(CI)V
    .registers 11

    const/16 v7, 0x5c

    const/16 v3, 0x30

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x6

    if-ltz p2, :cond_35

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v0, v4, :cond_1f

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    add-int/lit8 v2, v0, 0x1

    aput-char v7, v1, v0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    int-to-char v1, p2

    aput-char v1, v0, v2

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->r:[C

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->f()[C

    move-result-object v0

    :cond_27
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    const/4 v1, 0x1

    int-to-char v2, p2

    aput-char v2, v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_1e

    :cond_35
    const/4 v0, -0x2

    if-eq p2, v0, :cond_e8

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v0, v6, :cond_89

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    aput-char v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    const/16 v2, 0xff

    if-le p1, v2, :cond_80

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v1, v0

    and-int/lit16 v2, p1, 0xff

    int-to-char p1, v2

    :goto_6b
    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v3, p1, 0x4

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    goto :goto_1e

    :cond_80
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_6b

    :cond_89
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->r:[C

    if-nez v0, :cond_91

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->f()[C

    move-result-object v0

    :cond_91
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    const/16 v1, 0xff

    if-le p1, v1, :cond_d0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p1, 0xff

    const/16 v3, 0xa

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v5, v1, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    const/16 v1, 0xc

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    const/16 v1, 0xd

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_1e

    :cond_d0
    sget-object v1, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_1e

    :cond_e8
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-nez v0, :cond_10a

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    :goto_f6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v2, v1, :cond_114

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {v0, v5, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_1e

    :cond_10a
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    goto :goto_f6

    :cond_114
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method private a(I)V
    .registers 6

    const/16 v3, 0x22

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_d

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_d
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    return-void
.end method

.method private a(II)V
    .registers 12

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    array-length v0, v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_d
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-ge v0, v1, :cond_43

    :cond_11
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aget-char v4, v0, v4

    if-ge v4, v3, :cond_37

    aget v0, v2, v4

    if-eqz v0, :cond_3b

    :goto_1d
    iget v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_2d

    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v8, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/Writer;->write([CII)V

    :cond_2d
    iget v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-direct {p0, v4, v0}, Lcom/fasterxml/jackson/a/d/l;->a(CI)V

    goto :goto_d

    :cond_37
    if-le v4, p2, :cond_3b

    const/4 v0, -0x1

    goto :goto_1d

    :cond_3b
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v0, v1, :cond_11

    :cond_43
    return-void
.end method

.method private a(J)V
    .registers 7

    const/16 v3, 0x22

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_d

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_d
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(J[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    return-void
.end method

.method private a(Lcom/fasterxml/jackson/a/a;[BII)V
    .registers 11

    add-int/lit8 v1, p4, -0x3

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    add-int/lit8 v2, v0, -0x6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    :cond_c
    :goto_c
    if-gt p3, v1, :cond_58

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v3, v2, :cond_15

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_15
    add-int/lit8 v3, p3, 0x1

    aget-byte v4, p2, p3

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 p3, v5, 0x1

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/fasterxml/jackson/a/a;->a(I[CI)I

    move-result v3

    iput v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v4, 0x5c

    aput-char v4, v0, v3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v4, 0x6e

    aput-char v4, v0, v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    goto :goto_c

    :cond_58
    sub-int v1, p4, p3

    if-lez v1, :cond_7d

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-le v0, v2, :cond_63

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_63
    add-int/lit8 v2, p3, 0x1

    aget-byte v0, p2, p3

    shl-int/lit8 v0, v0, 0x10

    const/4 v3, 0x2

    if-ne v1, v3, :cond_73

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    :cond_73
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/fasterxml/jackson/a/a;->a(II[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    :cond_7d
    return-void
.end method

.method private a(Lcom/fasterxml/jackson/a/u;Z)V
    .registers 9

    const/16 v5, 0x22

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/a/d/l;->b(Lcom/fasterxml/jackson/a/u;Z)V

    :goto_a
    return-void

    :cond_b
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_16
    if-eqz p2, :cond_24

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    :cond_24
    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->b()[C

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v1

    if-nez v1, :cond_35

    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/a/d/l;->writeRaw([CII)V

    goto :goto_a

    :cond_35
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v1, v2

    array-length v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v2, v3, :cond_60

    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/a/d/l;->writeRaw([CII)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_55

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_55
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v0, v1

    goto :goto_a

    :cond_60
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v0, v1

    goto :goto_a
.end method

.method private a(Ljava/lang/Object;)V
    .registers 6

    const/16 v3, 0x22

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_b

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_25

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_25
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 7

    const/16 v3, 0x22

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;Z)V

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_15

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_15
    if-eqz p2, :cond_23

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    :cond_23
    sget-object v0, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->d(Ljava/lang/String;)V

    goto :goto_9

    :cond_2f
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_45

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_45
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    goto :goto_9
.end method

.method private a(S)V
    .registers 6

    const/16 v3, 0x22

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_d

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_d
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    return-void
.end method

.method private a([CII)V
    .registers 12

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/l;->b([CII)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/a/d/l;->a([CIII)V

    goto :goto_7

    :cond_12
    add-int v2, p3, p2

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    array-length v4, v3

    move v1, p2

    :goto_18
    if-ge v1, v2, :cond_7

    move v0, v1

    :cond_1b
    aget-char v5, p1, v0

    if-ge v5, v4, :cond_23

    aget v5, v3, v5

    if-nez v5, :cond_27

    :cond_23
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_1b

    :cond_27
    sub-int v5, v0, v1

    const/16 v6, 0x20

    if-ge v5, v6, :cond_51

    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v6, v7, :cond_37

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_37
    if-lez v5, :cond_45

    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v1, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    :cond_45
    :goto_45
    if-ge v0, v2, :cond_7

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p1, v0

    aget v5, v3, v0

    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/a/d/l;->b(CI)V

    goto :goto_18

    :cond_51
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v6, p1, v1, v5}, Ljava/io/Writer;->write([CII)V

    goto :goto_45
.end method

.method private a([CIII)V
    .registers 15

    add-int v3, p3, p2

    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    array-length v0, v4

    add-int/lit8 v1, p4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v0, 0x0

    move v2, p2

    :goto_d
    if-ge v2, v3, :cond_50

    move v1, v2

    :cond_10
    aget-char v6, p1, v1

    if-ge v6, v5, :cond_3e

    aget v0, v4, v6

    if-eqz v0, :cond_42

    :goto_18
    sub-int v7, v1, v2

    const/16 v8, 0x20

    if-ge v7, v8, :cond_47

    iget v8, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v8, v7

    iget v9, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v8, v9, :cond_28

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_28
    if-lez v7, :cond_36

    iget-object v8, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v9, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v2, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v2, v7

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    :cond_36
    :goto_36
    if-ge v1, v3, :cond_50

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v6, v0}, Lcom/fasterxml/jackson/a/d/l;->b(CI)V

    goto :goto_d

    :cond_3e
    if-le v6, p4, :cond_42

    const/4 v0, -0x1

    goto :goto_18

    :cond_42
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v3, :cond_10

    goto :goto_18

    :cond_47
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    iget-object v8, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v8, p1, v2, v7}, Ljava/io/Writer;->write([CII)V

    goto :goto_36

    :cond_50
    return-void
.end method

.method private b(CI)V
    .registers 9

    const/16 v3, 0x5c

    const/16 v4, 0x30

    if-ltz p2, :cond_27

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v0, v1, :cond_11

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_11
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    int-to-char v2, p2

    aput-char v2, v0, v1

    :goto_26
    return-void

    :cond_27
    const/4 v0, -0x2

    if-eq p2, v0, :cond_80

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v0, v1, :cond_35

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_35
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    add-int/lit8 v2, v0, 0x1

    aput-char v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v1, v2

    const/16 v2, 0xff

    if-le p1, v2, :cond_77

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    sget-object v4, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    and-int/lit16 v2, p1, 0xff

    int-to-char p1, v2

    :goto_62
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/fasterxml/jackson/a/d/l;->l:[C

    shr-int/lit8 v4, p1, 0x4

    aget-char v3, v3, v4

    aput-char v3, v1, v0

    sget-object v0, Lcom/fasterxml/jackson/a/d/l;->l:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v0, v0, v3

    aput-char v0, v1, v2

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto :goto_26

    :cond_77
    add-int/lit8 v2, v0, 0x1

    aput-char v4, v1, v0

    add-int/lit8 v0, v2, 0x1

    aput-char v4, v1, v2

    goto :goto_62

    :cond_80
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    :goto_8e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v2, v3, :cond_b0

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v1, v2, :cond_b0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_26

    :cond_a6
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    goto :goto_8e

    :cond_b0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {v0, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto/16 :goto_26
.end method

.method private b(I)V
    .registers 3

    packed-switch p1, :pswitch_data_36

    invoke-static {}, Lcom/fasterxml/jackson/a/d/l;->c()V

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->f(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_6

    :pswitch_d
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->d(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_6

    :pswitch_13
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->a(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_6

    :pswitch_19
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inArray()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->g(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_6

    :cond_27
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inObject()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->h(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_6

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_19
        :pswitch_7
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method

.method private b(II)V
    .registers 12

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    array-length v1, v6

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v2, v0

    move v1, v0

    :goto_c
    if-ge v1, p1, :cond_3e

    :cond_e
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    aget-char v4, v3, v1

    if-ge v4, v7, :cond_33

    aget v5, v6, v4

    if-eqz v5, :cond_37

    :goto_18
    sub-int v0, v1, v2

    if-lez v0, :cond_25

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v8, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {v3, v8, v2, v0}, Ljava/io/Writer;->write([CII)V

    if-ge v1, p1, :cond_3e

    :cond_25
    add-int/lit8 v2, v1, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/l;->a([CIICI)I

    move-result v0

    move v1, v2

    move v2, v0

    move v0, v5

    goto :goto_c

    :cond_33
    if-le v4, p2, :cond_38

    const/4 v5, -0x1

    goto :goto_18

    :cond_37
    move v0, v5

    :cond_38
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_e

    move v5, v0

    goto :goto_18

    :cond_3e
    return-void
.end method

.method private b(Lcom/fasterxml/jackson/a/u;Z)V
    .registers 9

    const/16 v5, 0x22

    const/4 v4, 0x0

    if-eqz p2, :cond_41

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->c(Lcom/fasterxml/jackson/a/h;)V

    :goto_a
    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->b()[C

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v1, v2, :cond_1f

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_1f
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v1, v2

    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/a/d/l;->writeRaw([CII)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_36

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_36
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v0, v1

    :goto_40
    return-void

    :cond_41
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->h(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_a

    :cond_47
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/a/d/l;->writeRaw([CII)V

    goto :goto_40
.end method

.method private b(Ljava/lang/String;Z)V
    .registers 7

    const/16 v3, 0x22

    if-eqz p2, :cond_3b

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->c(Lcom/fasterxml/jackson/a/h;)V

    :goto_9
    sget-object v0, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_1a
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_30

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_30
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->h(Lcom/fasterxml/jackson/a/h;)V

    goto :goto_9

    :cond_41
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->d(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method private b([CII)V
    .registers 16

    add-int v4, p3, p2

    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-gtz v0, :cond_47

    const v0, 0xffff

    :goto_b
    array-length v1, v5

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    const/4 v1, 0x0

    move v3, p2

    :goto_16
    if-ge v3, v4, :cond_66

    move v2, v3

    :cond_19
    aget-char v8, p1, v2

    if-ge v8, v6, :cond_4a

    aget v1, v5, v8

    if-eqz v1, :cond_58

    :goto_21
    sub-int v9, v2, v3

    const/16 v10, 0x20

    if-ge v9, v10, :cond_5d

    iget v10, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v10, v9

    iget v11, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v10, v11, :cond_31

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_31
    if-lez v9, :cond_3f

    iget-object v10, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v11, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v3, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v3, v9

    iput v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    :cond_3f
    :goto_3f
    if-ge v2, v4, :cond_66

    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v8, v1}, Lcom/fasterxml/jackson/a/d/l;->b(CI)V

    goto :goto_16

    :cond_47
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    goto :goto_b

    :cond_4a
    if-le v8, v0, :cond_4e

    const/4 v1, -0x1

    goto :goto_21

    :cond_4e
    invoke-virtual {v7}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v9

    iput-object v9, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-eqz v9, :cond_58

    const/4 v1, -0x2

    goto :goto_21

    :cond_58
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_19

    goto :goto_21

    :cond_5d
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    iget-object v10, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v10, p1, v3, v9}, Ljava/io/Writer;->write([CII)V

    goto :goto_3f

    :cond_66
    return-void
.end method

.method private c(I)V
    .registers 9

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    array-length v2, v1

    :goto_6
    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-ge v3, v0, :cond_1e

    :cond_a
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aget-char v3, v3, v4

    if-ge v3, v2, :cond_16

    aget v3, v1, v3

    if-nez v3, :cond_1f

    :cond_16
    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v3, v0, :cond_a

    :cond_1e
    return-void

    :cond_1f
    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_2f

    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/Writer;->write([CII)V

    :cond_2f
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aget-char v3, v3, v4

    aget v4, v1, v3

    invoke-direct {p0, v3, v4}, Lcom/fasterxml/jackson/a/d/l;->a(CI)V

    goto :goto_6
.end method

.method private c(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v5, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_1a
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v1, v2, :cond_31

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    add-int v3, v0, v2

    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {p1, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v5, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    add-int/2addr v0, v2

    sub-int/2addr v1, v2

    goto :goto_1a

    :cond_31
    add-int v2, v0, v1

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {p1, v0, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v5, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    return-void
.end method

.method private d(I)V
    .registers 10

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    array-length v7, v6

    move v1, v0

    :goto_5
    if-ge v0, p1, :cond_31

    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    aget-char v4, v2, v0

    if-ge v4, v7, :cond_11

    aget v2, v6, v4

    if-nez v2, :cond_15

    :cond_11
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_7

    :cond_15
    sub-int v2, v0, v1

    if-lez v2, :cond_22

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {v3, v5, v1, v2}, Ljava/io/Writer;->write([CII)V

    if-ge v0, p1, :cond_31

    :cond_22
    add-int/lit8 v2, v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    aget v5, v6, v4

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/l;->a([CIICI)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_5

    :cond_31
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v0, v1, :cond_c

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->e(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-le v1, v2, :cond_16

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_16
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    if-eqz v1, :cond_26

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->e(I)V

    goto :goto_b

    :cond_26
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/l;->a(II)V

    goto :goto_b

    :cond_30
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->c(I)V

    goto :goto_b
.end method

.method private e()V
    .registers 5

    const/16 v3, 0x6c

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_d

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_d
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    const/16 v2, 0x6e

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    return-void
.end method

.method private e(I)V
    .registers 13

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-gtz v0, :cond_40

    const v0, 0xffff

    :goto_d
    array-length v1, v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    :goto_16
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-ge v1, v2, :cond_59

    :cond_1a
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v6, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aget-char v6, v1, v6

    if-ge v6, v4, :cond_43

    aget v1, v3, v6

    if-eqz v1, :cond_51

    :goto_26
    iget v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v8, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    sub-int/2addr v7, v8

    if-lez v7, :cond_36

    iget-object v8, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v9, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v10, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    invoke-virtual {v8, v9, v10, v7}, Ljava/io/Writer;->write([CII)V

    :cond_36
    iget v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-direct {p0, v6, v1}, Lcom/fasterxml/jackson/a/d/l;->a(CI)V

    goto :goto_16

    :cond_40
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    goto :goto_d

    :cond_43
    if-le v6, v0, :cond_47

    const/4 v1, -0x1

    goto :goto_26

    :cond_47
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-eqz v1, :cond_51

    const/4 v1, -0x2

    goto :goto_26

    :cond_51
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    if-lt v1, v2, :cond_1a

    :cond_59
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    :cond_9
    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    add-int v4, v0, v2

    if-le v4, v3, :cond_11

    sub-int v2, v3, v0

    :cond_11
    add-int v4, v0, v2

    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {p1, v0, v4, v5, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    if-eqz v4, :cond_23

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/l;->f(I)V

    :goto_1f
    add-int/2addr v0, v2

    if-lt v0, v3, :cond_9

    return-void

    :cond_23
    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-eqz v4, :cond_2d

    iget v4, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/a/d/l;->b(II)V

    goto :goto_1f

    :cond_2d
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/l;->d(I)V

    goto :goto_1f
.end method

.method private f(I)V
    .registers 13

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/l;->h:[I

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    if-gtz v0, :cond_3d

    const v0, 0xffff

    move v6, v0

    :goto_b
    array-length v0, v7

    add-int/lit8 v2, v6, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, p0, Lcom/fasterxml/jackson/a/d/l;->j:Lcom/fasterxml/jackson/a/c/c;

    move v2, v1

    move v0, v1

    :goto_16
    if-ge v1, p1, :cond_56

    :cond_18
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    aget-char v4, v3, v1

    if-ge v4, v8, :cond_41

    aget v5, v7, v4

    if-eqz v5, :cond_4f

    :goto_22
    sub-int v0, v1, v2

    if-lez v0, :cond_2f

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v10, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {v3, v10, v2, v0}, Ljava/io/Writer;->write([CII)V

    if-ge v1, p1, :cond_56

    :cond_2f
    add-int/lit8 v2, v1, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/l;->a([CIICI)I

    move-result v0

    move v1, v2

    move v2, v0

    move v0, v5

    goto :goto_16

    :cond_3d
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->i:I

    move v6, v0

    goto :goto_b

    :cond_41
    if-le v4, v6, :cond_45

    const/4 v5, -0x1

    goto :goto_22

    :cond_45
    invoke-virtual {v9}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->s:Lcom/fasterxml/jackson/a/u;

    if-eqz v3, :cond_50

    const/4 v5, -0x2

    goto :goto_22

    :cond_4f
    move v0, v5

    :cond_50
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_18

    move v5, v0

    goto :goto_22

    :cond_56
    return-void
.end method

.method private f()[C
    .registers 6

    const/16 v4, 0x75

    const/16 v3, 0x30

    const/16 v2, 0x5c

    const/16 v0, 0xe

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char v2, v0, v1

    const/4 v1, 0x2

    aput-char v2, v0, v1

    const/4 v1, 0x3

    aput-char v4, v0, v1

    const/4 v1, 0x4

    aput-char v3, v0, v1

    const/4 v1, 0x5

    aput-char v3, v0, v1

    const/16 v1, 0x8

    aput-char v2, v0, v1

    const/16 v1, 0x9

    aput-char v4, v0, v1

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->r:[C

    return-object v0
.end method

.method private g()V
    .registers 5

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_15

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->o:I

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_15
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->e()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V

    :cond_21
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-nez v1, :cond_52

    packed-switch v0, :pswitch_data_56

    :cond_28
    :goto_28
    return-void

    :pswitch_29
    const/16 v0, 0x2c

    :goto_2b
    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v1, v2, :cond_34

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_34
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v0, v1, v2

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto :goto_28

    :pswitch_41
    const/16 v0, 0x3a

    goto :goto_2b

    :pswitch_44
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->k:Lcom/fasterxml/jackson/a/u;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->k:Lcom/fasterxml/jackson/a/u;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_28

    :cond_52
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->b(I)V

    goto :goto_28

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_29
        :pswitch_41
        :pswitch_44
    .end packed-switch
.end method

.method protected final b()V
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->g:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/c/d;->b([C)V

    :cond_c
    return-void
.end method

.method public final close()V
    .registers 3

    invoke-super {p0}, Lcom/fasterxml/jackson/a/d/c;->close()V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    if-eqz v0, :cond_27

    sget-object v0, Lcom/fasterxml/jackson/a/i;->b:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_f
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->a()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/q;->inArray()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->writeEndArray()V

    goto :goto_f

    :cond_1d
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/q;->inObject()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->writeEndObject()V

    goto :goto_f

    :cond_27
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->g:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/d;->c()Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/fasterxml/jackson/a/i;->a:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_3e
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->b()V

    return-void

    :cond_47
    sget-object v0, Lcom/fasterxml/jackson/a/i;->f:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_43
.end method

.method public final flush()V
    .registers 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/fasterxml/jackson/a/i;->f:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_14
    return-void
.end method

.method public final getOutputTarget()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    return-object v0
.end method

.method public final writeBinary(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;I)I
    .registers 9

    const/16 v4, 0x22

    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_10

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v4, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->g:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/d;->g()[B

    move-result-object v1

    if-gez p3, :cond_3f

    :try_start_22
    invoke-direct {p0, p1, p2, v1}, Lcom/fasterxml/jackson/a/d/l;->a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[B)I
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_68

    move-result p3

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->g:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/c/d;->c([B)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_34

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_34
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v4, v0, v1

    return p3

    :cond_3f
    :try_start_3f
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/fasterxml/jackson/a/d/l;->a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[BI)I

    move-result v0

    if-lez v0, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Too few bytes available: missing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes (out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_3f .. :try_end_67} :catchall_68

    goto :goto_26

    :catchall_68
    move-exception v0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->g:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/c/d;->c([B)V

    throw v0
.end method

.method public final writeBinary(Lcom/fasterxml/jackson/a/a;[BII)V
    .registers 9

    const/16 v3, 0x22

    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_10

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    add-int v0, p3, p4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Lcom/fasterxml/jackson/a/a;[BII)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_28

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_28
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    return-void
.end method

.method public final writeBoolean(Z)V
    .registers 6

    const/16 v3, 0x65

    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_12

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_12
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    if-eqz p1, :cond_31

    const/16 v2, 0x74

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x72

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    return-void

    :cond_31
    const/16 v2, 0x66

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x61

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x73

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_2c
.end method

.method public final writeEndArray()V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inArray()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an ARRAY but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/a/t;->b(Lcom/fasterxml/jackson/a/h;I)V

    :goto_2f
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->d()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    return-void

    :cond_38
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_41

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_41
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    goto :goto_2f
.end method

.method public final writeEndObject()V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inObject()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an object but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/a/t;->a(Lcom/fasterxml/jackson/a/h;I)V

    :goto_2f
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->d()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    return-void

    :cond_38
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_41

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_41
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    goto :goto_2f
.end method

.method public final writeFieldName(Lcom/fasterxml/jackson/a/u;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/d/e;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    const-string v2, "Can not write a field name, expecting a value"

    invoke-static {v2}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V

    :cond_13
    if-ne v1, v0, :cond_19

    :goto_15
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Lcom/fasterxml/jackson/a/u;Z)V

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/a/d/e;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    const-string v2, "Can not write a field name, expecting a value"

    invoke-static {v2}, Lcom/fasterxml/jackson/a/d/l;->b(Ljava/lang/String;)V

    :cond_f
    if-ne v1, v0, :cond_15

    :goto_11
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;Z)V

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final writeNull()V
    .registers 2

    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->e()V

    return-void
.end method

.method public final writeNumber(D)V
    .registers 4

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-nez v0, :cond_18

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lcom/fasterxml/jackson/a/i;->d:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_18
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeString(Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final writeNumber(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-nez v0, :cond_18

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lcom/fasterxml/jackson/a/i;->d:Lcom/fasterxml/jackson/a/i;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeString(Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final writeNumber(I)V
    .registers 4

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->a(I)V

    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_18

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto :goto_c
.end method

.method public final writeNumber(J)V
    .registers 5

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/a/d/l;->a(J)V

    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_18

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(J[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto :goto_c
.end method

.method public final writeNumber(Ljava/lang/String;)V
    .registers 3

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/Object;)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public final writeNumber(Ljava/math/BigDecimal;)V
    .registers 3

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->e()V

    :goto_a
    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/Object;)V

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final writeNumber(Ljava/math/BigInteger;)V
    .registers 3

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->e()V

    :goto_a
    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/Object;)V

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final writeNumber(S)V
    .registers 4

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/l;->c:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->a(S)V

    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_18

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    goto :goto_c
.end method

.method public final writeRaw(C)V
    .registers 5

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_9

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final writeRaw(Lcom/fasterxml/jackson/a/u;)V
    .registers 3

    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public final writeRaw(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v2

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v2

    :cond_13
    if-lt v0, v1, :cond_23

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    :goto_22
    return-void

    :cond_23
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->c(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public final writeRaw(Ljava/lang/String;II)V
    .registers 7

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_f

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v1

    :cond_f
    if-lt v0, p3, :cond_20

    add-int v0, p2, p3

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    :goto_1f
    return-void

    :cond_20
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->c(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final writeRaw([CII)V
    .registers 6

    const/16 v0, 0x20

    if-ge p3, v0, :cond_1b

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_e

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    :goto_1a
    return-void

    :cond_1b
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_1a
.end method

.method public final writeRawUTF8String([BII)V
    .registers 4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->d()V

    return-void
.end method

.method public final writeStartArray()V
    .registers 4

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->b()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->e(Lcom/fasterxml/jackson/a/h;)V

    :goto_16
    return-void

    :cond_17
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_20

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_20
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    goto :goto_16
.end method

.method public final writeStartObject()V
    .registers 4

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->c()Lcom/fasterxml/jackson/a/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->d:Lcom/fasterxml/jackson/a/d/e;

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->b(Lcom/fasterxml/jackson/a/h;)V

    :goto_16
    return-void

    :cond_17
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_20

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_20
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    goto :goto_16
.end method

.method public final writeString(Lcom/fasterxml/jackson/a/u;)V
    .registers 8

    const/16 v5, 0x22

    const/4 v4, 0x0

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_11

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_11
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v0, v1

    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->b()[C

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_4e

    iget v2, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2e

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_2e
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v3, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    :goto_3a
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_43

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_43
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v5, v0, v1

    return-void

    :cond_4e
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/l;->m:Ljava/io/Writer;

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_3a
.end method

.method public final writeString(Ljava/lang/String;)V
    .registers 6

    const/16 v3, 0x22

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->e()V

    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_16
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/l;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_2c

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_2c
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    goto :goto_c
.end method

.method public final writeString([CII)V
    .registers 8

    const/16 v3, 0x22

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/l;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_10

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/l;->a([CII)V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->q:I

    if-lt v0, v1, :cond_26

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/l;->g()V

    :cond_26
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/l;->n:[C

    iget v1, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/l;->p:I

    aput-char v3, v0, v1

    return-void
.end method

.method public final writeUTF8String([BII)V
    .registers 4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/l;->d()V

    return-void
.end method
