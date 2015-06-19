.class public final Lcom/fasterxml/jackson/a/d/j;
.super Lcom/fasterxml/jackson/a/a/c;
.source "UTF8StreamJsonParser.java"


# static fields
.field private static final Q:[I

.field private static final R:[I


# instance fields
.field protected J:Lcom/fasterxml/jackson/a/s;

.field protected final K:Lcom/fasterxml/jackson/a/e/a;

.field protected L:[I

.field protected M:Z

.field protected N:Ljava/io/InputStream;

.field protected O:[B

.field protected P:Z

.field private S:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->b()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/d/j;->Q:[I

    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->a()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/d/j;->R:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/a/c/d;ILjava/io/InputStream;Lcom/fasterxml/jackson/a/s;Lcom/fasterxml/jackson/a/e/a;[BIIZ)V
    .registers 11

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/a/a/c;-><init>(Lcom/fasterxml/jackson/a/c/d;I)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    iput-object p3, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/fasterxml/jackson/a/d/j;->J:Lcom/fasterxml/jackson/a/s;

    iput-object p5, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    iput-object p6, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iput p7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iput p8, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    iput-boolean p9, p0, Lcom/fasterxml/jackson/a/d/j;->P:Z

    return-void
.end method

.method private a(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;[B)I
    .registers 15

    const/4 v10, 0x3

    const/16 v9, 0x22

    const/4 v8, -0x2

    const/4 v1, 0x0

    array-length v0, p3

    add-int/lit8 v5, v0, -0x3

    move v0, v1

    move v2, v1

    :cond_a
    :goto_a
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v3, v4, :cond_13

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_13
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xff

    const/16 v3, 0x20

    if-le v4, v3, :cond_a

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v3

    if-gez v3, :cond_31

    if-eq v4, v9, :cond_88

    invoke-virtual {p0, p1, v4, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v3

    if-ltz v3, :cond_a

    :cond_31
    move v4, v3

    if-le v2, v5, :cond_140

    add-int/2addr v0, v2

    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    move v3, v1

    :goto_39
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v6, :cond_42

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_42
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v2

    if-gez v2, :cond_59

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v6, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v2

    :cond_59
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v6, :cond_65

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_65
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v2

    if-gez v2, :cond_da

    if-eq v2, v8, :cond_96

    if-ne v6, v9, :cond_91

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_91

    shr-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    :cond_88
    :goto_88
    iput-boolean v1, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-lez v2, :cond_90

    add-int/2addr v0, v2

    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_90
    return v0

    :cond_91
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v6, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v2

    :cond_96
    if-ne v2, v8, :cond_da

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v6, :cond_a1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_a1
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/a/a;->a(I)Z

    move-result v6

    if-nez v6, :cond_d1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected padding character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v10, v0}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_d1
    shr-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto/16 :goto_a

    :cond_da
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v6, :cond_e6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_e6
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v2

    if-gez v2, :cond_128

    if-eq v2, v8, :cond_116

    if-ne v6, v9, :cond_112

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_112

    shr-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    add-int/lit8 v2, v5, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v5

    goto/16 :goto_88

    :cond_112
    invoke-virtual {p0, p1, v6, v10}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v2

    :cond_116
    if-ne v2, v8, :cond_128

    shr-int/lit8 v4, v4, 0x2

    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    add-int/lit8 v2, v6, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v6

    goto/16 :goto_a

    :cond_128
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, p3, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto/16 :goto_a

    :cond_140
    move v3, v2

    goto/16 :goto_39
.end method

.method private a(II)Lcom/fasterxml/jackson/a/e/f;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e/a;->a(I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_8
.end method

.method private a(III)Lcom/fasterxml/jackson/a/e/f;
    .registers 10

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    return-object v0
.end method

.method private a(IIII)Lcom/fasterxml/jackson/a/e/f;
    .registers 11

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    return-object v0
.end method

.method private a(I[I)Lcom/fasterxml/jackson/a/e/f;
    .registers 12

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x22

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    aget v1, p2, v0

    if-eqz v1, :cond_26

    if-ne v0, v4, :cond_1f

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v0, p1, v5}, Lcom/fasterxml/jackson/a/d/j;->b(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v1, p1, v0, v5}, Lcom/fasterxml/jackson/a/d/j;->a(IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1e

    :cond_26
    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, p2, v1

    if-eqz v2, :cond_49

    if-ne v1, v4, :cond_42

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v1, v0, v6}, Lcom/fasterxml/jackson/a/d/j;->b(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1e

    :cond_42
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v2, v0, v1, v6}, Lcom/fasterxml/jackson/a/d/j;->a(IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1e

    :cond_49
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, p2, v1

    if-eqz v2, :cond_6c

    if-ne v1, v4, :cond_65

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v1, v0, v7}, Lcom/fasterxml/jackson/a/d/j;->b(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1e

    :cond_65
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v2, v0, v1, v7}, Lcom/fasterxml/jackson/a/d/j;->a(IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1e

    :cond_6c
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, p2, v1

    if-eqz v2, :cond_8f

    if-ne v1, v4, :cond_88

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v1, v0, v8}, Lcom/fasterxml/jackson/a/d/j;->b(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1e

    :cond_88
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v2, v0, v1, v8}, Lcom/fasterxml/jackson/a/d/j;->a(IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1e

    :cond_8f
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    aput v4, v2, v3

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    aput v0, v2, v5

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->d(I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_1e
.end method

.method private a([III)Lcom/fasterxml/jackson/a/e/f;
    .registers 15

    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    const/4 v0, 0x4

    if-ge p3, v0, :cond_da

    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    :goto_17
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/g/o;->j()[C

    move-result-object v1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v6, :cond_100

    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    and-int/lit8 v4, v3, 0x3

    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x7f

    if-le v2, v4, :cond_114

    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_dd

    and-int/lit8 v4, v2, 0x1f

    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    :goto_41
    add-int v7, v3, v4

    if-le v7, v6, :cond_4a

    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_4a
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v3, 0x3

    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_60

    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    :cond_60
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    const/4 v7, 0x1

    if-le v4, v7, :cond_a3

    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v3, 0x3

    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_7e

    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    :cond_7e
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    const/4 v7, 0x2

    if-le v4, v7, :cond_a3

    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v3, 0x3

    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_9e

    and-int/lit16 v8, v7, 0xff

    invoke-direct {p0, v8}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    :cond_9e
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    :cond_a3
    const/4 v7, 0x2

    if-le v4, v7, :cond_114

    const/high16 v4, 0x1

    sub-int/2addr v2, v4

    array-length v4, v1

    if-lt v5, v4, :cond_b2

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/g/o;->m()[C

    move-result-object v1

    :cond_b2
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    :goto_c8
    array-length v5, v4

    if-lt v3, v5, :cond_d1

    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/a/g/o;->m()[C

    move-result-object v4

    :cond_d1
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    goto/16 :goto_20

    :cond_da
    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_dd
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_eb

    and-int/lit8 v4, v2, 0xf

    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_41

    :cond_eb
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_f9

    and-int/lit8 v4, v2, 0x7

    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_41

    :cond_f9
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/j;->m(I)V

    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_41

    :cond_100
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    const/4 v1, 0x4

    if-ge p3, v1, :cond_10d

    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    :cond_10d
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0, v2, p1, p2}, Lcom/fasterxml/jackson/a/e/a;->a(Ljava/lang/String;[II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    return-object v0

    :cond_114
    move-object v4, v1

    move v1, v2

    move v2, v3

    move v3, v5

    goto :goto_c8
.end method

.method private a([IIII)Lcom/fasterxml/jackson/a/e/f;
    .registers 7

    array-length v0, p1

    if-lt p2, v0, :cond_a

    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_a
    add-int/lit8 v1, p2, 0x1

    aput p3, p1, p2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/a/e/a;->a([II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-direct {p0, p1, v1, p4}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method private a([IIIII)Lcom/fasterxml/jackson/a/e/f;
    .registers 15

    const/4 v7, 0x4

    const/4 v1, 0x0

    sget-object v5, Lcom/fasterxml/jackson/a/d/j;->R:[I

    :goto_4
    aget v0, v5, p4

    if-eqz v0, :cond_d6

    const/16 v0, 0x22

    if-eq p4, v0, :cond_ae

    const/16 v0, 0x5c

    if-eq p4, v0, :cond_6b

    const-string v0, "name"

    invoke-virtual {p0, p4, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwUnquotedSpace(ILjava/lang/String;)V

    :goto_15
    const/16 v0, 0x7f

    if-le p4, v0, :cond_d6

    if-lt p5, v7, :cond_d2

    array-length v0, p1

    if-lt p2, v0, :cond_25

    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_25
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    :goto_2c
    const/16 v2, 0x800

    if-ge p4, v2, :cond_70

    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    :goto_3d
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    :goto_45
    if-ge p5, v7, :cond_9c

    add-int/lit8 p5, p5, 0x1

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    :goto_4d
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v2, :cond_5e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, " in field name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_5e
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 p4, v0, 0xff

    goto :goto_4

    :cond_6b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->g()C

    move-result p4

    goto :goto_15

    :cond_70
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    add-int/lit8 v2, p5, 0x1

    if-lt v2, v7, :cond_cc

    array-length v2, v0

    if-lt v4, v2, :cond_85

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_85
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    :goto_8d
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_3d

    :cond_9c
    array-length v2, v0

    if-lt p2, v2, :cond_a6

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_a6
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_4d

    :cond_ae
    if-lez p5, :cond_bf

    array-length v0, p1

    if-lt p2, v0, :cond_ba

    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_ba
    add-int/lit8 v0, p2, 0x1

    aput p3, p1, p2

    move p2, v0

    :cond_bf
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/e/a;->a([II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    if-nez v0, :cond_cb

    invoke-direct {p0, p1, p2, p5}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    :cond_cb
    return-object v0

    :cond_cc
    move v8, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v8

    goto :goto_8d

    :cond_d2
    move v4, p2

    move-object v0, p1

    goto/16 :goto_2c

    :cond_d6
    move v3, p3

    move-object v0, p1

    move p3, p4

    goto/16 :goto_45
.end method

.method private a(I)Lcom/fasterxml/jackson/a/r;
    .registers 5

    const/4 v1, 0x1

    const/16 v0, 0x22

    if-ne p1, v0, :cond_c

    iput-boolean v1, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    :goto_b
    return-object v0

    :cond_c
    sparse-switch p1, :sswitch_data_62

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->f(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_b

    :sswitch_16
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_b

    :sswitch_27
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_b

    :sswitch_38
    const-string v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :sswitch_3d
    const-string v0, "true"

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_b

    :sswitch_47
    const-string v0, "false"

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_b

    :sswitch_51
    const-string v0, "null"

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_b

    :sswitch_5b
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->b(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_b

    :sswitch_data_62
    .sparse-switch
        0x2d -> :sswitch_5b
        0x30 -> :sswitch_5b
        0x31 -> :sswitch_5b
        0x32 -> :sswitch_5b
        0x33 -> :sswitch_5b
        0x34 -> :sswitch_5b
        0x35 -> :sswitch_5b
        0x36 -> :sswitch_5b
        0x37 -> :sswitch_5b
        0x38 -> :sswitch_5b
        0x39 -> :sswitch_5b
        0x5b -> :sswitch_16
        0x5d -> :sswitch_38
        0x66 -> :sswitch_47
        0x6e -> :sswitch_51
        0x74 -> :sswitch_3d
        0x7b -> :sswitch_27
        0x7d -> :sswitch_38
    .end sparse-switch
.end method

.method private a(IZ)Lcom/fasterxml/jackson/a/r;
    .registers 7

    move v0, p1

    :goto_1
    const/16 v1, 0x49

    if-ne v0, v1, :cond_68

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOFInValue()V

    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v0, v1

    const/16 v0, 0x4e

    if-ne v1, v0, :cond_3e

    if-eqz p2, :cond_3b

    const-string v0, "-INF"

    :goto_26
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v2, Lcom/fasterxml/jackson/a/n;->h:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v2

    if-eqz v2, :cond_4d

    if-eqz p2, :cond_4a

    const-wide/high16 v1, -0x10

    :goto_36
    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;D)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    :goto_3a
    return-object v0

    :cond_3b
    const-string v0, "+INF"

    goto :goto_26

    :cond_3e
    const/16 v0, 0x6e

    if-ne v1, v0, :cond_67

    if-eqz p2, :cond_47

    const-string v0, "-Infinity"

    goto :goto_26

    :cond_47
    const-string v0, "+Infinity"

    goto :goto_26

    :cond_4a
    const-wide/high16 v1, 0x7ff0

    goto :goto_36

    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Non-standard token \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_67
    move v0, v1

    :cond_68
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3a
.end method

.method private a([CIIZI)Lcom/fasterxml/jackson/a/r;
    .registers 15

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x2e

    if-ne p3, v1, :cond_109

    add-int/lit8 v1, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    :goto_b
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v3, :cond_c0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v2

    if-nez v2, :cond_c0

    const/4 v4, 0x1

    :cond_18
    if-nez v0, :cond_1f

    const-string v2, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, v2}, Lcom/fasterxml/jackson/a/d/j;->a(ILjava/lang/String;)V

    :cond_1f
    move v6, v0

    move v0, v1

    move-object v1, p1

    :goto_22
    const/4 v3, 0x0

    const/16 v2, 0x65

    if-eq p3, v2, :cond_2b

    const/16 v2, 0x45

    if-ne p3, v2, :cond_103

    :cond_2b
    array-length v2, v1

    if-lt v0, v2, :cond_35

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v1

    const/4 v0, 0x0

    :cond_35
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, p3

    aput-char v5, v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v5, :cond_43

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_43
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v5

    and-int/lit16 v5, v0, 0xff

    const/16 v0, 0x2d

    if-eq v5, v0, :cond_57

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_ff

    :cond_57
    array-length v0, v1

    if-lt v2, v0, :cond_fc

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_61
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v5, :cond_6f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_6f
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v2

    move v2, v3

    :goto_7e
    const/16 v3, 0x39

    if-gt v5, v3, :cond_f7

    const/16 v3, 0x30

    if-lt v5, v3, :cond_f7

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    if-lt v0, v3, :cond_92

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v1

    const/4 v0, 0x0

    :cond_92
    add-int/lit8 v3, v0, 0x1

    int-to-char v7, v5

    aput-char v7, v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v7, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v7, :cond_e8

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_e8

    const/4 v4, 0x1

    move v0, v2

    move v1, v4

    move v2, v3

    :goto_a7
    if-nez v0, :cond_ae

    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v3}, Lcom/fasterxml/jackson/a/d/j;->a(ILjava/lang/String;)V

    :cond_ae
    :goto_ae
    if-nez v1, :cond_b6

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    :cond_b6
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    invoke-virtual {p0, p4, p5, v6, v0}, Lcom/fasterxml/jackson/a/d/j;->b(ZIII)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    return-object v0

    :cond_c0
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v3

    and-int/lit16 p3, v2, 0xff

    const/16 v2, 0x30

    if-lt p3, v2, :cond_18

    const/16 v2, 0x39

    if-gt p3, v2, :cond_18

    add-int/lit8 v0, v0, 0x1

    array-length v2, p1

    if-lt v1, v2, :cond_107

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_e1
    add-int/lit8 v1, v2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, v2

    goto/16 :goto_b

    :cond_e8
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v3

    goto :goto_7e

    :cond_f7
    move v1, v4

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_a7

    :cond_fc
    move v0, v2

    goto/16 :goto_61

    :cond_ff
    move v0, v2

    move v2, v3

    goto/16 :goto_7e

    :cond_103
    move v1, v4

    move v2, v0

    move v0, v3

    goto :goto_ae

    :cond_107
    move v2, v1

    goto :goto_e1

    :cond_109
    move v6, v0

    move-object v1, p1

    move v0, p2

    goto/16 :goto_22
.end method

.method private a([CIZI)Lcom/fasterxml/jackson/a/r;
    .registers 11

    move v5, p4

    move v2, p2

    move-object v1, p1

    :goto_3
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v3, :cond_19

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    invoke-virtual {p0, p3, v5}, Lcom/fasterxml/jackson/a/d/j;->a(ZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    const/16 v0, 0x39

    if-gt v3, v0, :cond_2d

    const/16 v0, 0x30

    if-ge v3, v0, :cond_40

    :cond_2d
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_39

    const/16 v0, 0x65

    if-eq v3, v0, :cond_39

    const/16 v0, 0x45

    if-ne v3, v0, :cond_53

    :cond_39
    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([CIIZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_18

    :cond_40
    array-length v0, v1

    if-lt v2, v0, :cond_63

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v1

    const/4 v2, 0x0

    move v0, v2

    :goto_4b
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_53
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    invoke-virtual {p0, p3, v5}, Lcom/fasterxml/jackson/a/d/j;->a(ZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_18

    :cond_63
    move v0, v2

    goto :goto_4b
.end method

.method private a(Lcom/fasterxml/jackson/a/r;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/fasterxml/jackson/a/d/k;->a:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/r;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_14
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_1b
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method private a(Ljava/lang/String;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_5
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_11
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_24

    :cond_1d
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(Ljava/lang/String;)V

    :cond_24
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_5

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_3b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_3a

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3a

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->g(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->b(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_5
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_11
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->g(I)I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method private a([CI)V
    .registers 10

    const/4 v1, 0x0

    sget-object v4, Lcom/fasterxml/jackson/a/d/j;->Q:[I

    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    :goto_5
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v2, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    :cond_10
    array-length v2, p1

    if-lt p2, v2, :cond_1a

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object p1

    move p2, v1

    :cond_1a
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    array-length v3, p1

    sub-int/2addr v3, p2

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_23
    if-ge v0, v6, :cond_5b

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    aget v3, v4, v0

    if-eqz v3, :cond_53

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    const/16 v2, 0x22

    if-eq v0, v2, :cond_a0

    aget v2, v4, v0

    packed-switch v2, :pswitch_data_a8

    const/16 v2, 0x20

    if-ge v0, v2, :cond_9c

    const-string v2, "string value"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->_throwUnquotedSpace(ILjava/lang/String;)V

    :goto_43
    array-length v2, p1

    if-lt p2, v2, :cond_a6

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object p1

    move v2, v1

    :goto_4d
    add-int/lit8 p2, v2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v2

    goto :goto_5

    :cond_53
    add-int/lit8 v3, p2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, p2

    move v0, v2

    move p2, v3

    goto :goto_23

    :cond_5b
    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    goto :goto_5

    :pswitch_5e
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->g()C

    move-result v0

    goto :goto_43

    :pswitch_63
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->h(I)I

    move-result v0

    goto :goto_43

    :pswitch_68
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_75

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->j(I)I

    move-result v0

    goto :goto_43

    :cond_75
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->i(I)I

    move-result v0

    goto :goto_43

    :pswitch_7a
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->k(I)I

    move-result v2

    add-int/lit8 v0, p2, 0x1

    const v3, 0xd800

    shr-int/lit8 v6, v2, 0xa

    or-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, p1, p2

    array-length v3, p1

    if-lt v0, v3, :cond_93

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object p1

    move v0, v1

    :cond_93
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    move p2, v0

    move v0, v2

    goto :goto_43

    :cond_9c
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->l(I)V

    goto :goto_43

    :cond_a0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    return-void

    :cond_a6
    move v2, p2

    goto :goto_4d

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_63
        :pswitch_68
        :pswitch_7a
    .end packed-switch
.end method

.method private a(ILcom/fasterxml/jackson/a/u;)Z
    .registers 7

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->c(I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e/f;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v0, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_27

    const-string v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_27
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_37

    iput-boolean v3, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    move v0, v1

    :goto_36
    return v0

    :cond_37
    sparse-switch v0, :sswitch_data_6a

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->f(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    :goto_3e
    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    move v0, v1

    goto :goto_36

    :sswitch_42
    sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    goto :goto_3e

    :sswitch_45
    sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    goto :goto_3e

    :sswitch_48
    const-string v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :sswitch_4d
    const-string v0, "true"

    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    goto :goto_3e

    :sswitch_55
    const-string v0, "false"

    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_3e

    :sswitch_5d
    const-string v0, "null"

    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    goto :goto_3e

    :sswitch_65
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->b(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_3e

    :sswitch_data_6a
    .sparse-switch
        0x2d -> :sswitch_65
        0x30 -> :sswitch_65
        0x31 -> :sswitch_65
        0x32 -> :sswitch_65
        0x33 -> :sswitch_65
        0x34 -> :sswitch_65
        0x35 -> :sswitch_65
        0x36 -> :sswitch_65
        0x37 -> :sswitch_65
        0x38 -> :sswitch_65
        0x39 -> :sswitch_65
        0x5b -> :sswitch_42
        0x5d -> :sswitch_48
        0x66 -> :sswitch_55
        0x6e -> :sswitch_5d
        0x74 -> :sswitch_4d
        0x7b -> :sswitch_45
        0x7d -> :sswitch_48
    .end sparse-switch
.end method

.method private a(Lcom/fasterxml/jackson/a/a;)[B
    .registers 10

    const/4 v7, 0x3

    const/16 v6, 0x22

    const/4 v5, -0x2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->f()Lcom/fasterxml/jackson/a/g/d;

    move-result-object v2

    :cond_8
    :goto_8
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_11
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    const/16 v0, 0x20

    if-le v1, v0, :cond_8

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v0

    if-gez v0, :cond_35

    if-ne v1, v6, :cond_2e

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v0

    if-ltz v0, :cond_8

    :cond_35
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v3, :cond_3e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_3e
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v3

    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v1

    if-gez v1, :cond_55

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v3, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v1

    :cond_55
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v3, :cond_61

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_61
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v0

    if-gez v0, :cond_ce

    if-eq v0, v5, :cond_8c

    if-ne v3, v6, :cond_87

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_87

    shr-int/lit8 v0, v1, 0x4

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v0

    goto :goto_2d

    :cond_87
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v0

    :cond_8c
    if-ne v0, v5, :cond_ce

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v3, :cond_97

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_97
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_c7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected padding character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->b()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v7, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_c7
    shr-int/lit8 v0, v1, 0x4

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    goto/16 :goto_8

    :cond_ce
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v3, :cond_da

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_da
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v0

    if-gez v0, :cond_10e

    if-eq v0, v5, :cond_105

    if-ne v3, v6, :cond_101

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_101

    shr-int/lit8 v0, v1, 0x2

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/g/d;->b(I)V

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v0

    goto/16 :goto_2d

    :cond_101
    invoke-virtual {p0, p1, v3, v7}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;II)I

    move-result v0

    :cond_105
    if-ne v0, v5, :cond_10e

    shr-int/lit8 v0, v1, 0x2

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/g/d;->b(I)V

    goto/16 :goto_8

    :cond_10e
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/g/d;->c(I)V

    goto/16 :goto_8
.end method

.method private static a([II)[I
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_6

    new-array v0, p1, [I

    :goto_5
    return-object v0

    :cond_6
    array-length v1, p0

    add-int v0, v1, p1

    new-array v0, v0, [I

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5
.end method

.method private b(III)Lcom/fasterxml/jackson/a/e/f;
    .registers 6

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/e/a;->a(II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_8
.end method

.method private b(I)Lcom/fasterxml/jackson/a/r;
    .registers 13

    const/16 v10, 0x39

    const/16 v2, 0x2d

    const/16 v9, 0x30

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->j()[C

    move-result-object v1

    if-ne p1, v2, :cond_33

    move v4, v5

    :goto_11
    if-eqz v4, :cond_9a

    aput-char v2, v1, v7

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v2, :cond_1e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_1e
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v9, :cond_2e

    if-le v0, v10, :cond_35

    :cond_2e
    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/a/d/j;->a(IZ)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    :goto_32
    return-object v0

    :cond_33
    move v4, v7

    goto :goto_11

    :cond_35
    move v3, v5

    :goto_36
    if-ne v0, v9, :cond_3c

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->j()I

    move-result v0

    :cond_3c
    add-int/lit8 v2, v3, 0x1

    int-to-char v0, v0

    aput-char v0, v1, v3

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    array-length v3, v1

    add-int/2addr v0, v3

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-le v0, v3, :cond_4b

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    :cond_4b
    :goto_4b
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    if-lt v3, v0, :cond_54

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/fasterxml/jackson/a/d/j;->a([CIZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_32

    :cond_54
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v9, :cond_76

    if-gt v3, v10, :cond_76

    add-int/lit8 v5, v5, 0x1

    array-length v6, v1

    if-lt v2, v6, :cond_98

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v1

    move v6, v7

    :goto_70
    add-int/lit8 v2, v6, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v6

    goto :goto_4b

    :cond_76
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_82

    const/16 v0, 0x65

    if-eq v3, v0, :cond_82

    const/16 v0, 0x45

    if-ne v3, v0, :cond_88

    :cond_82
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([CIIZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_32

    :cond_88
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/a/d/j;->a(ZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_32

    :cond_98
    move v6, v2

    goto :goto_70

    :cond_9a
    move v3, v7

    move v0, p1

    goto :goto_36
.end method

.method private b(II)V
    .registers 3

    iput p2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    const-string v0, "\'null\', \'true\', \'false\' or NaN"

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(I)Lcom/fasterxml/jackson/a/e/f;
    .registers 11

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x22

    if-eq p1, v5, :cond_d

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->e(I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-le v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->k()Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_c

    :cond_1a
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    sget-object v1, Lcom/fasterxml/jackson/a/d/j;->R:[I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    aget v3, v1, v2

    if-nez v3, :cond_ab

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-nez v4, :cond_9d

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-nez v4, :cond_8f

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-nez v4, :cond_82

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    aget v3, v1, v0

    if-nez v3, :cond_74

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->S:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(I[I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_c

    :cond_74
    if-ne v0, v5, :cond_7c

    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/a/d/j;->a(II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_c

    :cond_7c
    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_c

    :cond_82
    if-ne v3, v5, :cond_89

    invoke-direct {p0, v2, v8}, Lcom/fasterxml/jackson/a/d/j;->a(II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_c

    :cond_89
    invoke-direct {p0, v2, v3, v8}, Lcom/fasterxml/jackson/a/d/j;->a(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_c

    :cond_8f
    if-ne v3, v5, :cond_97

    invoke-direct {p0, v2, v7}, Lcom/fasterxml/jackson/a/d/j;->a(II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_c

    :cond_97
    invoke-direct {p0, v2, v3, v7}, Lcom/fasterxml/jackson/a/d/j;->a(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_c

    :cond_9d
    if-ne v3, v5, :cond_a5

    invoke-direct {p0, v2, v6}, Lcom/fasterxml/jackson/a/d/j;->a(II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_c

    :cond_a5
    invoke-direct {p0, v2, v3, v6}, Lcom/fasterxml/jackson/a/d/j;->a(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_c

    :cond_ab
    if-ne v2, v5, :cond_b3

    invoke-static {}, Lcom/fasterxml/jackson/a/e/a;->c()Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_c

    :cond_b3
    invoke-direct {p0, v4, v2, v4}, Lcom/fasterxml/jackson/a/d/j;->a(III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_c
.end method

.method private d(I)Lcom/fasterxml/jackson/a/e/f;
    .registers 14

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x2

    const/16 v8, 0x22

    sget-object v1, Lcom/fasterxml/jackson/a/d/j;->R:[I

    move v2, v5

    move v4, p1

    :goto_a
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    sub-int/2addr v0, v6

    if-ge v0, v11, :cond_1a

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v6

    and-int/lit16 v9, v0, 0xff

    aget v0, v1, v9

    if-eqz v0, :cond_3d

    if-ne v9, v8, :cond_33

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    invoke-direct {p0, v0, v2, v4, v10}, Lcom/fasterxml/jackson/a/d/j;->a([IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_19

    :cond_33
    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move-object v5, p0

    move v7, v2

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_19

    :cond_3d
    shl-int/lit8 v0, v4, 0x8

    or-int v6, v0, v9

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    aget v0, v1, v4

    if-eqz v0, :cond_63

    if-ne v4, v8, :cond_5a

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    invoke-direct {p0, v0, v2, v6, v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_19

    :cond_5a
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_19

    :cond_63
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    aget v0, v1, v4

    if-eqz v0, :cond_8b

    if-ne v4, v8, :cond_81

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v6, v1}, Lcom/fasterxml/jackson/a/d/j;->a([IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_19

    :cond_81
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_19

    :cond_8b
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    aget v0, v1, v4

    if-eqz v0, :cond_b4

    if-ne v4, v8, :cond_a9

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    invoke-direct {p0, v0, v2, v6, v11}, Lcom/fasterxml/jackson/a/d/j;->a([IIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_19

    :cond_a9
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move-object v0, p0

    move v3, v6

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_19

    :cond_b4
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    array-length v0, v0

    if-lt v2, v0, :cond_c1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_c1
    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    add-int/lit8 v0, v2, 0x1

    aput v6, v7, v2

    move v2, v0

    goto/16 :goto_a
.end method

.method private e(I)Lcom/fasterxml/jackson/a/e/f;
    .registers 10

    const/4 v0, 0x0

    const/16 v1, 0x27

    if-ne p1, v1, :cond_12

    sget-object v1, Lcom/fasterxml/jackson/a/n;->d:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->l()Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    sget-object v1, Lcom/fasterxml/jackson/a/n;->c:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_1f
    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->d()[I

    move-result-object v6

    aget v1, v6, p1

    if-eqz v1, :cond_2c

    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_2c
    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move v1, v0

    move v5, v0

    move v2, p1

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    :goto_34
    const/4 v4, 0x4

    if-ge v1, v4, :cond_6a

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v2, v4

    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v7

    :goto_41
    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v4, v5, :cond_52

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, " in field name"

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_52
    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v4, v4, v5

    and-int/lit16 p1, v4, 0xff

    aget v4, v6, p1

    if-nez v4, :cond_7e

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    move v5, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_34

    :cond_6a
    array-length v1, v0

    if-lt v3, v1, :cond_74

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_74
    add-int/lit8 v4, v3, 0x1

    aput v5, v0, v3

    const/4 v1, 0x1

    move-object v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_41

    :cond_7e
    if-lez v0, :cond_8f

    array-length v4, v3

    if-lt v2, v4, :cond_8a

    array-length v4, v3

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_8a
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    :cond_8f
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/a/e/a;->a([II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v1

    if-nez v1, :cond_9d

    invoke-direct {p0, v3, v2, v0}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_11

    :cond_9d
    move-object v0, v1

    goto/16 :goto_11
.end method

.method private f(I)Lcom/fasterxml/jackson/a/r;
    .registers 5

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_72

    :cond_4
    :goto_4
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :sswitch_b
    sget-object v0, Lcom/fasterxml/jackson/a/n;->d:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->n()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_a

    :sswitch_18
    const-string v0, "NaN"

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/n;->h:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "NaN"

    const-wide/high16 v1, 0x7ff8

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;D)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_a

    :cond_2e
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    goto :goto_4

    :sswitch_34
    const-string v0, "Infinity"

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/n;->h:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "Infinity"

    const-wide/high16 v1, 0x7ff0

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;D)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_a

    :cond_4a
    const-string v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    goto :goto_4

    :sswitch_50
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_5f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOFInValue()V

    :cond_5f
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a(IZ)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_a

    nop

    :sswitch_data_72
    .sparse-switch
        0x27 -> :sswitch_b
        0x2b -> :sswitch_50
        0x49 -> :sswitch_34
        0x4e -> :sswitch_18
    .end sparse-switch
.end method

.method private g(I)I
    .registers 8

    const/4 v2, 0x2

    const/16 v5, 0x80

    const/4 v1, 0x1

    if-gez p1, :cond_4c

    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_4d

    and-int/lit8 p1, p1, 0x1f

    move v0, v1

    :goto_f
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->z()I

    move-result v3

    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v5, :cond_1c

    and-int/lit16 v4, v3, 0xff

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    :cond_1c
    shl-int/lit8 v4, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int p1, v4, v3

    if-le v0, v1, :cond_4c

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->z()I

    move-result v1

    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_31

    and-int/lit16 v3, v1, 0xff

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    :cond_31
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v3, v1

    if-le v0, v2, :cond_4c

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->z()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_46

    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->n(I)V

    :cond_46
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int p1, v1, v0

    :cond_4c
    return p1

    :cond_4d
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_57

    and-int/lit8 p1, p1, 0xf

    move v0, v2

    goto :goto_f

    :cond_57
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_61

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x3

    goto :goto_f

    :cond_61
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->m(I)V

    move v0, v1

    goto :goto_f
.end method

.method private h(I)I
    .registers 5

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_20

    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v1, v2}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_20
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private h()Lcom/fasterxml/jackson/a/r;
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1b

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    :cond_18
    :goto_18
    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    return-object v0

    :cond_1b
    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_18

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_18
.end method

.method private i(I)I
    .registers 7

    const/16 v4, 0x80

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_b
    and-int/lit8 v0, p1, 0xf

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_22

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_22
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_30

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_30
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_45

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_45
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private i()V
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5e

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_5e

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2e

    iput-boolean v2, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    :goto_2d
    return-void

    :cond_2e
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_37

    sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_2d

    :cond_37
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_40

    sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_2d

    :cond_40
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_4a

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_54

    :cond_4a
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    :cond_54
    :goto_54
    sparse-switch v0, :sswitch_data_9e

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->f(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_2d

    :cond_5e
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->q()I

    move-result v0

    goto :goto_54

    :sswitch_63
    iput-boolean v2, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_2d

    :sswitch_6a
    sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_2d

    :sswitch_6f
    sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_2d

    :sswitch_74
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :sswitch_79
    const-string v0, "true"

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_2d

    :sswitch_83
    const-string v0, "false"

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_2d

    :sswitch_8d
    const-string v0, "null"

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_2d

    :sswitch_97
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->b(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_2d

    :sswitch_data_9e
    .sparse-switch
        0x22 -> :sswitch_63
        0x2d -> :sswitch_97
        0x30 -> :sswitch_97
        0x31 -> :sswitch_97
        0x32 -> :sswitch_97
        0x33 -> :sswitch_97
        0x34 -> :sswitch_97
        0x35 -> :sswitch_97
        0x36 -> :sswitch_97
        0x37 -> :sswitch_97
        0x38 -> :sswitch_97
        0x39 -> :sswitch_97
        0x5b -> :sswitch_6a
        0x5d -> :sswitch_74
        0x66 -> :sswitch_83
        0x6e -> :sswitch_8d
        0x74 -> :sswitch_79
        0x7b -> :sswitch_6f
        0x7d -> :sswitch_74
    .end sparse-switch
.end method

.method private j()I
    .registers 6

    const/16 v4, 0x39

    const/16 v1, 0x30

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v2, :cond_12

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v1, :cond_1e

    if-le v0, v4, :cond_20

    :cond_1e
    move v0, v1

    goto :goto_11

    :cond_20
    sget-object v2, Lcom/fasterxml/jackson/a/n;->g:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;)V

    :cond_2d
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    if-ne v0, v1, :cond_11

    :cond_35
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v3, :cond_41

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_41
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v1, :cond_4d

    if-le v0, v4, :cond_4f

    :cond_4d
    move v0, v1

    goto :goto_11

    :cond_4f
    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    if-eq v0, v1, :cond_35

    goto :goto_11
.end method

.method private j(I)I
    .registers 7

    const/16 v4, 0x80

    and-int/lit8 v0, p1, 0xf

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_19

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_19
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_33

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_33
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private k(I)I
    .registers 7

    const/16 v4, 0x80

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_20

    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v1, v2}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_20
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_30

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_30
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_45

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_45
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_53

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_53
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_68

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_68
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private k()Lcom/fasterxml/jackson/a/e/f;
    .registers 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    const/16 v0, 0x22

    if-ne v4, v0, :cond_27

    invoke-static {}, Lcom/fasterxml/jackson/a/e/a;->c()Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/j;->a([IIIII)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto :goto_26
.end method

.method private l()Lcom/fasterxml/jackson/a/e/f;
    .registers 13

    const/16 v10, 0x27

    const/4 v9, 0x4

    const/4 v1, 0x0

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v2, :cond_15

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 v5, v0, 0xff

    if-ne v5, v10, :cond_28

    invoke-static {}, Lcom/fasterxml/jackson/a/e/a;->c()Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    sget-object v7, Lcom/fasterxml/jackson/a/d/j;->R:[I

    move v3, v1

    move v4, v1

    move v2, v1

    :goto_2f
    if-eq v5, v10, :cond_e6

    const/16 v6, 0x22

    if-eq v5, v6, :cond_119

    aget v6, v7, v5

    if-eqz v6, :cond_119

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_a1

    const-string v6, "name"

    invoke-virtual {p0, v5, v6}, Lcom/fasterxml/jackson/a/d/j;->_throwUnquotedSpace(ILjava/lang/String;)V

    :goto_42
    const/16 v6, 0x7f

    if-le v5, v6, :cond_119

    if-lt v3, v9, :cond_113

    array-length v3, v0

    if-lt v2, v3, :cond_52

    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_52
    add-int/lit8 v3, v2, 0x1

    aput v4, v0, v2

    move v2, v1

    move v4, v3

    move v3, v1

    :goto_59
    const/16 v6, 0x800

    if-ge v5, v6, :cond_a6

    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    move v11, v2

    move v2, v3

    move-object v3, v0

    move v0, v11

    :goto_6a
    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    move v6, v2

    move v2, v0

    move-object v0, v3

    move v3, v5

    :goto_72
    if-ge v2, v9, :cond_d2

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v3, v5

    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    :goto_7e
    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v5, v6, :cond_8f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v5

    if-nez v5, :cond_8f

    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_8f
    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v6, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    move v11, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v11

    goto :goto_2f

    :cond_a1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->g()C

    move-result v5

    goto :goto_42

    :cond_a6
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v9, :cond_10d

    array-length v2, v0

    if-lt v4, v2, :cond_bb

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_bb
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    :goto_c3
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    move v11, v3

    move-object v3, v4

    move v4, v11

    goto :goto_6a

    :cond_d2
    array-length v2, v0

    if-lt v4, v2, :cond_dc

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_dc
    add-int/lit8 v5, v4, 0x1

    aput v6, v0, v4

    const/4 v2, 0x1

    move-object v4, v0

    move v0, v2

    move v2, v3

    move v3, v5

    goto :goto_7e

    :cond_e6
    if-lez v3, :cond_10a

    array-length v1, v0

    if-lt v2, v1, :cond_f2

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/a/d/j;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->L:[I

    :cond_f2
    add-int/lit8 v1, v2, 0x1

    aput v4, v0, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    :goto_f9
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/a/e/a;->a([II)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v2

    if-nez v2, :cond_107

    invoke-direct {p0, v1, v0, v3}, Lcom/fasterxml/jackson/a/d/j;->a([III)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    goto/16 :goto_27

    :cond_107
    move-object v0, v2

    goto/16 :goto_27

    :cond_10a
    move-object v1, v0

    move v0, v2

    goto :goto_f9

    :cond_10d
    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    goto :goto_c3

    :cond_113
    move v11, v3

    move v3, v4

    move v4, v2

    move v2, v11

    goto/16 :goto_59

    :cond_119
    move v6, v4

    move v4, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_72
.end method

.method private l(I)V
    .registers 3

    const/16 v0, 0x20

    if-ge p1, v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->_throwInvalidSpace(I)V

    :cond_7
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->m(I)V

    return-void
.end method

.method private m()V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    sget-object v3, Lcom/fasterxml/jackson/a/d/j;->Q:[I

    iget-object v4, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    :goto_7
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v0, :cond_14

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    :cond_14
    :goto_14
    if-ge v1, v0, :cond_35

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    aget v5, v3, v1

    if-eqz v5, :cond_4d

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    const/16 v0, 0x22

    if-eq v1, v0, :cond_4c

    aget v0, v3, v1

    packed-switch v0, :pswitch_data_50

    const/16 v0, 0x20

    if-ge v1, v0, :cond_48

    const-string v0, "string value"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_7

    :cond_35
    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    goto :goto_7

    :pswitch_38
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->g()C

    goto :goto_7

    :pswitch_3c
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->u()V

    goto :goto_7

    :pswitch_40
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->v()V

    goto :goto_7

    :pswitch_44
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->w()V

    goto :goto_7

    :cond_48
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->l(I)V

    goto :goto_7

    :cond_4c
    return-void

    :cond_4d
    move v1, v2

    goto :goto_14

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3c
        :pswitch_40
        :pswitch_44
    .end packed-switch
.end method

.method private m(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method private n()Lcom/fasterxml/jackson/a/r;
    .registers 11

    const/16 v9, 0x27

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->j()[C

    move-result-object v0

    sget-object v6, Lcom/fasterxml/jackson/a/d/j;->Q:[I

    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    move v1, v2

    :cond_e
    :goto_e
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v3, v4, :cond_17

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_17
    array-length v3, v0

    if-lt v1, v3, :cond_21

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v0

    move v1, v2

    :cond_21
    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    if-ge v3, v4, :cond_b5

    :goto_2a
    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    if-ge v4, v3, :cond_e

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v4, v7, v4

    and-int/lit16 v5, v4, 0xff

    if-eq v5, v9, :cond_45

    aget v4, v6, v5

    if-nez v4, :cond_45

    add-int/lit8 v4, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v1

    move v1, v4

    goto :goto_2a

    :cond_45
    if-eq v5, v9, :cond_a9

    aget v3, v6, v5

    packed-switch v3, :pswitch_data_b8

    const/16 v3, 0x20

    if-ge v5, v3, :cond_55

    const-string v3, "string value"

    invoke-virtual {p0, v5, v3}, Lcom/fasterxml/jackson/a/d/j;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_55
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->l(I)V

    :cond_58
    move v3, v5

    :goto_59
    array-length v4, v0

    if-lt v1, v4, :cond_b1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v0

    move v4, v2

    :goto_63
    add-int/lit8 v1, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v4

    goto :goto_e

    :pswitch_69
    const/16 v3, 0x22

    if-eq v5, v3, :cond_58

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->g()C

    move-result v3

    goto :goto_59

    :pswitch_72
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->h(I)I

    move-result v3

    goto :goto_59

    :pswitch_77
    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_84

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->j(I)I

    move-result v3

    goto :goto_59

    :cond_84
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->i(I)I

    move-result v3

    goto :goto_59

    :pswitch_89
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/a/d/j;->k(I)I

    move-result v4

    add-int/lit8 v3, v1, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v0, v1

    array-length v1, v0

    if-lt v3, v1, :cond_b3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->l()[C

    move-result-object v0

    move v1, v2

    :goto_a2
    const v3, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    goto :goto_59

    :cond_a9
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    return-object v0

    :cond_b1
    move v4, v1

    goto :goto_63

    :cond_b3
    move v1, v3

    goto :goto_a2

    :cond_b5
    move v3, v4

    goto/16 :goto_2a

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_69
        :pswitch_72
        :pswitch_77
        :pswitch_89
    .end packed-switch
.end method

.method private n(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method private o()I
    .registers 5

    const/16 v3, 0x20

    :cond_2
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v3, :cond_25

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_21

    return v0

    :cond_21
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->r()V

    goto :goto_2

    :cond_25
    if-eq v0, v3, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2f

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    goto :goto_2

    :cond_2f
    const/16 v1, 0xd

    if-ne v0, v1, :cond_37

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    goto :goto_2

    :cond_37
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwInvalidSpace(I)V

    goto :goto_2

    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0
.end method

.method private p()I
    .registers 5

    const/16 v3, 0x20

    :cond_2
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v3, :cond_25

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_21

    :goto_20
    return v0

    :cond_21
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->r()V

    goto :goto_2

    :cond_25
    if-eq v0, v3, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2f

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    goto :goto_2

    :cond_2f
    const/16 v1, 0xd

    if-ne v0, v1, :cond_37

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    goto :goto_2

    :cond_37
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwInvalidSpace(I)V

    goto :goto_2

    :cond_3f
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->_handleEOF()V

    const/4 v0, -0x1

    goto :goto_20
.end method

.method private q()I
    .registers 7

    const/16 v5, 0x3a

    const/16 v4, 0x2f

    const/16 v3, 0x20

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_f
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    if-ne v0, v5, :cond_34

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-ge v0, v1, :cond_45

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v3, :cond_45

    if-eq v0, v4, :cond_45

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    :cond_33
    return v0

    :cond_34
    and-int/lit16 v0, v0, 0xff

    :goto_36
    sparse-switch v0, :sswitch_data_c0

    if-ge v0, v3, :cond_3e

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwInvalidSpace(I)V

    :cond_3e
    if-eq v0, v5, :cond_45

    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_45
    :goto_45
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_51

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-eqz v0, :cond_a0

    :cond_51
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v3, :cond_86

    if-ne v0, v4, :cond_33

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->r()V

    goto :goto_45

    :sswitch_65
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    :goto_68
    :sswitch_68
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_71

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_71
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_36

    :sswitch_7e
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    goto :goto_68

    :sswitch_82
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->r()V

    goto :goto_68

    :cond_86
    if-eq v0, v3, :cond_45

    const/16 v1, 0xa

    if-ne v0, v1, :cond_90

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    goto :goto_45

    :cond_90
    const/16 v1, 0xd

    if-ne v0, v1, :cond_98

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    goto :goto_45

    :cond_98
    const/16 v1, 0x9

    if-eq v0, v1, :cond_45

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_throwInvalidSpace(I)V

    goto :goto_45

    :cond_a0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0

    :sswitch_data_c0
    .sparse-switch
        0x9 -> :sswitch_68
        0xa -> :sswitch_7e
        0xd -> :sswitch_65
        0x20 -> :sswitch_68
        0x2f -> :sswitch_82
    .end sparse-switch
.end method

.method private r()V
    .registers 5

    const/16 v3, 0x2f

    sget-object v0, Lcom/fasterxml/jackson/a/n;->b:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_f
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_20

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v3, :cond_32

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->t()V

    :goto_31
    return-void

    :cond_32
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3a

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->s()V

    goto :goto_31

    :cond_3a
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_31
.end method

.method private s()V
    .registers 5

    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->e()[I

    move-result-object v0

    :cond_4
    :goto_4
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-eqz v1, :cond_58

    :cond_10
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_4

    sparse-switch v2, :sswitch_data_5e

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->l(I)V

    goto :goto_4

    :sswitch_27
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_33

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-eqz v1, :cond_58

    :cond_33
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_4

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    :goto_43
    return-void

    :sswitch_44
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    goto :goto_4

    :sswitch_48
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    goto :goto_4

    :sswitch_4c
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->u()V

    goto :goto_4

    :sswitch_50
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->v()V

    goto :goto_4

    :sswitch_54
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->w()V

    goto :goto_4

    :cond_58
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    goto :goto_43

    :sswitch_data_5e
    .sparse-switch
        0x2 -> :sswitch_4c
        0x3 -> :sswitch_50
        0x4 -> :sswitch_54
        0xa -> :sswitch_44
        0xd -> :sswitch_48
        0x2a -> :sswitch_27
    .end sparse-switch
.end method

.method private t()V
    .registers 5

    invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->e()[I

    move-result-object v0

    :cond_4
    :goto_4
    :sswitch_4
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_10
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_4

    sparse-switch v2, :sswitch_data_3c

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->l(I)V

    goto :goto_4

    :sswitch_27
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->y()V

    :cond_2a
    :goto_2a
    return-void

    :sswitch_2b
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->x()V

    goto :goto_2a

    :sswitch_2f
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->u()V

    goto :goto_4

    :sswitch_33
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->v()V

    goto :goto_4

    :sswitch_37
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->w()V

    goto :goto_4

    nop

    :sswitch_data_3c
    .sparse-switch
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_33
        0x4 -> :sswitch_37
        0xa -> :sswitch_27
        0xd -> :sswitch_2b
        0x2a -> :sswitch_4
    .end sparse-switch
.end method

.method private u()V
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_20

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_20
    return-void
.end method

.method private v()V
    .registers 5

    const/16 v3, 0x80

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_20

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_20
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_29
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3e

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_3e
    return-void
.end method

.method private w()V
    .registers 5

    const/16 v3, 0x80

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_20

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_20
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_29
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3e

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_3e
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_47

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_47
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_5c

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->b(II)V

    :cond_5c
    return-void
.end method

.method private x()V
    .registers 3

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    :cond_1c
    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    return-void
.end method

.method private y()V
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    return-void
.end method

.method private z()I
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method protected final b()Z
    .registers 6

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/fasterxml/jackson/a/d/j;->e:J

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/fasterxml/jackson/a/d/j;->e:J

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_27

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    const/4 v0, 0x1

    :cond_26
    return v0

    :cond_27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->d()V

    if-nez v1, :cond_26

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final c()V
    .registers 10

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->a()V

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    :cond_b
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/o;->j()[C

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/a/d/j;->Q:[I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    array-length v5, v3

    add-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_21
    if-ge v1, v5, :cond_43

    aget-byte v2, v6, v1

    and-int/lit16 v7, v2, 0xff

    aget v2, v4, v7

    if-eqz v2, :cond_39

    const/16 v2, 0x22

    if-ne v7, v2, :cond_43

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/g/o;->a(I)V

    :goto_38
    return-void

    :cond_39
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v0, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v0

    move v0, v1

    move v1, v2

    goto :goto_21

    :cond_43
    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    invoke-direct {p0, v3, v0}, Lcom/fasterxml/jackson/a/d/j;->a([CI)V

    goto :goto_38
.end method

.method public final close()V
    .registers 2

    invoke-super {p0}, Lcom/fasterxml/jackson/a/a/c;->close()V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->K:Lcom/fasterxml/jackson/a/e/a;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e/a;->b()V

    return-void
.end method

.method protected final d()V
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/d;->c()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/fasterxml/jackson/a/n;->a:Lcom/fasterxml/jackson/a/n;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    :cond_1c
    return-void
.end method

.method protected final e()V
    .registers 3

    invoke-super {p0}, Lcom/fasterxml/jackson/a/a/c;->e()V

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->P:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/c/d;->a([B)V

    :cond_13
    return-void
.end method

.method protected final g()C
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v1, v2, :cond_12

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, " in character escape sequence"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_12
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v1, v1, v2

    sparse-switch v1, :sswitch_data_6c

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/j;->g(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    :goto_28
    return v0

    :sswitch_29
    const/16 v0, 0x8

    goto :goto_28

    :sswitch_2c
    const/16 v0, 0x9

    goto :goto_28

    :sswitch_2f
    const/16 v0, 0xa

    goto :goto_28

    :sswitch_32
    const/16 v0, 0xc

    goto :goto_28

    :sswitch_35
    const/16 v0, 0xd

    goto :goto_28

    :sswitch_38
    int-to-char v0, v1

    goto :goto_28

    :sswitch_3a
    move v1, v0

    :goto_3b
    const/4 v2, 0x4

    if-ge v0, v2, :cond_6a

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-lt v2, v3, :cond_4f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->b()Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/a/d/j;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_4f
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/fasterxml/jackson/a/c/b;->a(I)I

    move-result v3

    if-gez v3, :cond_64

    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_64
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_6a
    int-to-char v0, v1

    goto :goto_28

    :sswitch_data_6c
    .sparse-switch
        0x22 -> :sswitch_38
        0x2f -> :sswitch_38
        0x5c -> :sswitch_38
        0x62 -> :sswitch_29
        0x66 -> :sswitch_32
        0x6e -> :sswitch_2f
        0x72 -> :sswitch_35
        0x74 -> :sswitch_2c
        0x75 -> :sswitch_3a
    .end sparse-switch
.end method

.method public final getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    if-nez v0, :cond_2a

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_reportError(Ljava/lang/String;)V

    :cond_2a
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_5d

    :try_start_2e
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_34} :catch_3a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    return-object v0

    :catch_3a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0

    :cond_5d
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->f()Lcom/fasterxml/jackson/a/g/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/a/d/j;->_decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/a/g/d;Lcom/fasterxml/jackson/a/a;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    goto :goto_37
.end method

.method public final getCodec()Lcom/fasterxml/jackson/a/s;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->J:Lcom/fasterxml/jackson/a/s;

    return-object v0
.end method

.method public final getInputSource()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->N:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/r;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public final getTextCharacters()[C
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v0, :cond_58

    sget-object v0, Lcom/fasterxml/jackson/a/d/k;->a:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->b()[C

    move-result-object v0

    :goto_18
    return-object v0

    :pswitch_19
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/c/d;->a(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    :cond_3b
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    goto :goto_18

    :cond_3e
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    array-length v2, v2

    if-ge v2, v1, :cond_33

    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->n:[C

    goto :goto_33

    :pswitch_48
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_51

    iput-boolean v3, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    :cond_51
    :pswitch_51
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->d()[C

    move-result-object v0

    goto :goto_18

    :cond_58
    const/4 v0, 0x0

    goto :goto_18

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_19
        :pswitch_48
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method public final getTextLength()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/fasterxml/jackson/a/d/k;->a:[I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->b()[C

    move-result-object v0

    array-length v0, v0

    :cond_19
    :goto_19
    return v0

    :pswitch_1a
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_19

    :pswitch_25
    iget-boolean v1, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v1, :cond_2e

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    :cond_2e
    :pswitch_2e
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->b()I

    move-result v0

    goto :goto_19

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_25
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public final getTextOffset()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/fasterxml/jackson/a/d/k;->a:[I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    :cond_12
    :goto_12
    :pswitch_12
    return v0

    :pswitch_13
    iget-boolean v1, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v1, :cond_1c

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    :cond_1c
    :pswitch_1c
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->c()I

    move-result v0

    goto :goto_12

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final getValueAsString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public final getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/a/a/c;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public final nextBooleanValue()Ljava/lang/Boolean;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_40

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_17

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_16
    :goto_16
    return-object v0

    :cond_17
    sget-object v2, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_1e

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_16

    :cond_1e
    sget-object v2, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_2f

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_16

    :cond_2f
    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_16

    :cond_40
    sget-object v1, Lcom/fasterxml/jackson/a/d/k;->a:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    goto :goto_16

    :pswitch_50
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_16

    :pswitch_53
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_16

    :pswitch_data_56
    .packed-switch 0x5
        :pswitch_50
        :pswitch_53
    .end packed-switch
.end method

.method public final nextFieldName(Lcom/fasterxml/jackson/a/u;)Z
    .registers 12

    const/4 v9, 0x0

    const/16 v8, 0x7d

    const/16 v7, 0x5d

    const/16 v6, 0x22

    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/jackson/a/d/j;->z:I

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v2, :cond_15

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->h()Lcom/fasterxml/jackson/a/r;

    move v0, v1

    :goto_14
    return v0

    :cond_15
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->m()V

    :cond_1c
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->p()I

    move-result v0

    if-gez v0, :cond_29

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->close()V

    iput-object v9, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    move v0, v1

    goto :goto_14

    :cond_29
    iget-wide v2, p0, Lcom/fasterxml/jackson/a/d/j;->e:J

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/a/d/j;->h:J

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    iput-object v9, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    if-ne v0, v7, :cond_5e

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->inArray()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/a/d/j;->a(IC)V

    :cond_50
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    sget-object v0, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    move v0, v1

    goto :goto_14

    :cond_5e
    if-ne v0, v8, :cond_79

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->inObject()Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/a/d/j;->a(IC)V

    :cond_6b
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    sget-object v0, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    move v0, v1

    goto :goto_14

    :cond_79
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->d()Z

    move-result v2

    if-eqz v2, :cond_a7

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_a3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "was expecting comma to separate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_a3
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    :cond_a7
    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->inObject()Z

    move-result v2

    if-nez v2, :cond_b5

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->a(I)Lcom/fasterxml/jackson/a/r;

    move v0, v1

    goto/16 :goto_14

    :cond_b5
    if-ne v0, v6, :cond_f4

    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->d()[B

    move-result-object v2

    array-length v3, v2

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    if-ge v4, v5, :cond_f4

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    aget-byte v5, v5, v4

    if-ne v5, v6, :cond_f4

    iget v5, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    :goto_ce
    if-ne v1, v3, :cond_e7

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->i()V

    const/4 v0, 0x1

    goto/16 :goto_14

    :cond_e7
    aget-byte v6, v2, v1

    iget-object v7, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    add-int v8, v5, v1

    aget-byte v7, v7, v8

    if-ne v6, v7, :cond_f4

    add-int/lit8 v1, v1, 0x1

    goto :goto_ce

    :cond_f4
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/a/d/j;->a(ILcom/fasterxml/jackson/a/u;)Z

    move-result v0

    goto/16 :goto_14
.end method

.method public final nextIntValue(I)I
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_3b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getIntValue()I

    move-result p1

    :cond_18
    :goto_18
    return p1

    :cond_19
    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_18

    :cond_2a
    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_18

    :cond_3b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getIntValue()I

    move-result p1

    goto :goto_18
.end method

.method public final nextLongValue(J)J
    .registers 6

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_3b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getLongValue()J

    move-result-wide p1

    :cond_18
    :goto_18
    return-wide p1

    :cond_19
    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_18

    :cond_2a
    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_18

    :cond_3b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getLongValue()J

    move-result-wide p1

    goto :goto_18
.end method

.method public final nextTextValue()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_46

    iput-boolean v3, p0, Lcom/fasterxml/jackson/a/d/j;->o:Z

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_24

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_1d

    iput-boolean v3, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->c()V

    :cond_1d
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    sget-object v2, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_35

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_23

    :cond_35
    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_23

    :cond_46
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_23

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public final nextToken()Lcom/fasterxml/jackson/a/r;
    .registers 10

    const/4 v1, 0x0

    const/16 v8, 0x7d

    const/16 v7, 0x5d

    const/4 v6, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/a/d/j;->z:I

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v2, :cond_14

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->h()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->m()V

    :cond_1b
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->p()I

    move-result v0

    if-gez v0, :cond_28

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/j;->close()V

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    move-object v0, v1

    goto :goto_13

    :cond_28
    iget-wide v2, p0, Lcom/fasterxml/jackson/a/d/j;->e:J

    iget v4, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/a/d/j;->h:J

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->f:I

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->i:I

    iget v2, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/a/d/j;->g:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/d/j;->j:I

    iput-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->q:[B

    if-ne v0, v7, :cond_5c

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->inArray()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/a/d/j;->a(IC)V

    :cond_4f
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    sget-object v0, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_13

    :cond_5c
    if-ne v0, v8, :cond_76

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->inObject()Z

    move-result v1

    if-nez v1, :cond_69

    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/a/d/j;->a(IC)V

    :cond_69
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    sget-object v0, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_13

    :cond_76
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->d()Z

    move-result v1

    if-eqz v1, :cond_a4

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_a0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_a0
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    :cond_a4
    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->inObject()Z

    move-result v1

    if-nez v1, :cond_b2

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->a(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto/16 :goto_13

    :cond_b2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->c(I)Lcom/fasterxml/jackson/a/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/d/j;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_d0

    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_d0
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/j;->o()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_e2

    iput-boolean v6, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto/16 :goto_13

    :cond_e2
    sparse-switch v0, :sswitch_data_118

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->f(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    :goto_e9
    iput-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->l:Lcom/fasterxml/jackson/a/r;

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto/16 :goto_13

    :sswitch_ef
    sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    goto :goto_e9

    :sswitch_f2
    sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    goto :goto_e9

    :sswitch_f5
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/d/j;->_reportUnexpectedChar(ILjava/lang/String;)V

    :sswitch_fa
    const-string v0, "true"

    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    goto :goto_e9

    :sswitch_102
    const-string v0, "false"

    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    goto :goto_e9

    :sswitch_10a
    const-string v0, "null"

    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/a/d/j;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    goto :goto_e9

    :sswitch_112
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/j;->b(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_e9

    nop

    :sswitch_data_118
    .sparse-switch
        0x2d -> :sswitch_112
        0x30 -> :sswitch_112
        0x31 -> :sswitch_112
        0x32 -> :sswitch_112
        0x33 -> :sswitch_112
        0x34 -> :sswitch_112
        0x35 -> :sswitch_112
        0x36 -> :sswitch_112
        0x37 -> :sswitch_112
        0x38 -> :sswitch_112
        0x39 -> :sswitch_112
        0x5b -> :sswitch_ef
        0x5d -> :sswitch_f5
        0x66 -> :sswitch_102
        0x6e -> :sswitch_10a
        0x74 -> :sswitch_fa
        0x7b -> :sswitch_f2
        0x7d -> :sswitch_f5
    .end sparse-switch
.end method

.method public final readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I
    .registers 6

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/j;->M:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_13

    :cond_a
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/d/j;->getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    array-length v0, v0

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/d;->g()[B

    move-result-object v1

    :try_start_19
    invoke-direct {p0, p1, p2, v1}, Lcom/fasterxml/jackson/a/d/j;->a(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;[B)I
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_23

    move-result v0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/c/d;->c([B)V

    goto :goto_12

    :catchall_23
    move-exception v0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/c/d;->c([B)V

    throw v0
.end method

.method public final releaseBuffered(Ljava/io/OutputStream;)I
    .registers 5

    iget v0, p0, Lcom/fasterxml/jackson/a/d/j;->d:I

    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    iget v1, p0, Lcom/fasterxml/jackson/a/d/j;->c:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/d/j;->O:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8
.end method

.method public final setCodec(Lcom/fasterxml/jackson/a/s;)V
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/a/d/j;->J:Lcom/fasterxml/jackson/a/s;

    return-void
.end method
