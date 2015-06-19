.class public final Lcom/fasterxml/jackson/a/c/m;
.super Lcom/fasterxml/jackson/a/c/a;
.source "UTF32Reader.java"


# instance fields
.field protected final g:Z

.field protected h:C

.field protected i:I

.field protected j:I

.field protected final k:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/InputStream;[BIIZ)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/a/c/a;-><init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/InputStream;[BII)V

    iput-char v0, p0, Lcom/fasterxml/jackson/a/c/m;->h:C

    iput v0, p0, Lcom/fasterxml/jackson/a/c/m;->i:I

    iput v0, p0, Lcom/fasterxml/jackson/a/c/m;->j:I

    iput-boolean p6, p0, Lcom/fasterxml/jackson/a/c/m;->g:Z

    if-eqz p2, :cond_f

    const/4 v0, 0x1

    :cond_f
    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/c/m;->k:Z

    return-void
.end method

.method private a(I)V
    .registers 7

    iget v0, p0, Lcom/fasterxml/jackson/a/c/m;->j:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/fasterxml/jackson/a/c/m;->i:I

    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needed 4, at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", byte #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private a(IILjava/lang/String;)V
    .registers 9

    iget v0, p0, Lcom/fasterxml/jackson/a/c/m;->j:I

    iget v1, p0, Lcom/fasterxml/jackson/a/c/m;->d:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/fasterxml/jackson/a/c/m;->i:I

    add-int/2addr v1, p2

    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid UTF-32 character 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", byte #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private b(I)Z
    .registers 8

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/fasterxml/jackson/a/c/m;->j:I

    iget v3, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    sub-int/2addr v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fasterxml/jackson/a/c/m;->j:I

    if-lez p1, :cond_48

    iget v2, p0, Lcom/fasterxml/jackson/a/c/m;->d:I

    if-lez v2, :cond_23

    move v2, v0

    :goto_11
    if-ge v2, p1, :cond_21

    iget-object v3, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    iget-object v4, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/c/m;->d:I

    add-int/2addr v5, v2

    aget-byte v4, v4, v5

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_21
    iput v0, p0, Lcom/fasterxml/jackson/a/c/m;->d:I

    :cond_23
    iput p1, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    :goto_25
    iget v0, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_7d

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/m;->b:Ljava/io/InputStream;

    if-nez v0, :cond_6c

    move v0, v1

    :goto_2f
    if-gtz v0, :cond_42

    if-gez v0, :cond_3f

    iget-boolean v2, p0, Lcom/fasterxml/jackson/a/c/m;->k:Z

    if-eqz v2, :cond_3a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/c/m;->a()V

    :cond_3a
    iget v2, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/c/m;->a(I)V

    :cond_3f
    invoke-static {}, Lcom/fasterxml/jackson/a/c/m;->b()V

    :cond_42
    iget v2, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    goto :goto_25

    :cond_48
    iput v0, p0, Lcom/fasterxml/jackson/a/c/m;->d:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/c/m;->b:Ljava/io/InputStream;

    if-nez v2, :cond_5d

    move v2, v1

    :goto_4f
    if-gtz v2, :cond_69

    iput v0, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    if-gez v2, :cond_66

    iget-boolean v1, p0, Lcom/fasterxml/jackson/a/c/m;->k:Z

    if-eqz v1, :cond_5c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/c/m;->a()V

    :cond_5c
    :goto_5c
    return v0

    :cond_5d
    iget-object v2, p0, Lcom/fasterxml/jackson/a/c/m;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_4f

    :cond_66
    invoke-static {}, Lcom/fasterxml/jackson/a/c/m;->b()V

    :cond_69
    iput v2, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    goto :goto_25

    :cond_6c
    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/m;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    iget-object v4, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    array-length v4, v4

    iget v5, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_2f

    :cond_7d
    const/4 v0, 0x1

    goto :goto_5c
.end method


# virtual methods
.method public final bridge synthetic close()V
    .registers 1

    invoke-super {p0}, Lcom/fasterxml/jackson/a/c/a;->close()V

    return-void
.end method

.method public final bridge synthetic read()I
    .registers 2

    invoke-super {p0}, Lcom/fasterxml/jackson/a/c/a;->read()I

    move-result v0

    return v0
.end method

.method public final read([CII)I
    .registers 10

    const v5, 0x10ffff

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    if-gtz p3, :cond_d

    move v0, p3

    goto :goto_8

    :cond_d
    if-ltz p2, :cond_14

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_17

    :cond_14
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/a/c/m;->a([CII)V

    :cond_17
    add-int/2addr p3, p2

    iget-char v1, p0, Lcom/fasterxml/jackson/a/c/m;->h:C

    if-eqz v1, :cond_a0

    add-int/lit8 v2, p2, 0x1

    iget-char v0, p0, Lcom/fasterxml/jackson/a/c/m;->h:C

    aput-char v0, p1, p2

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/fasterxml/jackson/a/c/m;->h:C

    :cond_25
    :goto_25
    if-ge v2, p3, :cond_e4

    iget v0, p0, Lcom/fasterxml/jackson/a/c/m;->d:I

    iget-boolean v1, p0, Lcom/fasterxml/jackson/a/c/m;->g:Z

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    aget-byte v1, v1, v0

    shl-int/lit8 v1, v1, 0x18

    iget-object v3, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    :goto_52
    iget v1, p0, Lcom/fasterxml/jackson/a/c/m;->d:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/fasterxml/jackson/a/c/m;->d:I

    const v1, 0xffff

    if-le v0, v1, :cond_d8

    if-le v0, v5, :cond_7d

    sub-int v1, v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(above "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/fasterxml/jackson/a/c/m;->a(IILjava/lang/String;)V

    :cond_7d
    const/high16 v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    const v3, 0xd800

    shr-int/lit8 v4, v0, 0xa

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v2

    const v2, 0xdc00

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v2

    if-lt v1, p3, :cond_d9

    int-to-char v0, v0

    iput-char v0, p0, Lcom/fasterxml/jackson/a/c/m;->h:C

    :goto_96
    sub-int p3, v1, p2

    iget v0, p0, Lcom/fasterxml/jackson/a/c/m;->i:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/a/c/m;->i:I

    move v0, p3

    goto/16 :goto_8

    :cond_a0
    iget v1, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    iget v2, p0, Lcom/fasterxml/jackson/a/c/m;->d:I

    sub-int/2addr v1, v2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_ae

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/c/m;->b(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_ae
    move v2, p2

    goto/16 :goto_25

    :cond_b1
    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v3, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/fasterxml/jackson/a/c/m;->c:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    goto/16 :goto_52

    :cond_d8
    move v1, v2

    :cond_d9
    add-int/lit8 v2, v1, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v1

    iget v0, p0, Lcom/fasterxml/jackson/a/c/m;->d:I

    iget v1, p0, Lcom/fasterxml/jackson/a/c/m;->e:I

    if-lt v0, v1, :cond_25

    :cond_e4
    move v1, v2

    goto :goto_96
.end method
