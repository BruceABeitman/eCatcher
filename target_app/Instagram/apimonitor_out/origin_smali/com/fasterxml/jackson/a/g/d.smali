.class public final Lcom/fasterxml/jackson/a/g/d;
.super Ljava/io/OutputStream;
.source "ByteArrayBuilder.java"


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lcom/fasterxml/jackson/a/g/a;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/fasterxml/jackson/a/g/d;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/g/d;-><init>(Lcom/fasterxml/jackson/a/g/a;)V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/a/g/d;-><init>(Lcom/fasterxml/jackson/a/g/a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/a/g/a;)V
    .registers 3

    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/g/d;-><init>(Lcom/fasterxml/jackson/a/g/a;I)V

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/a/g/a;I)V
    .registers 4

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->c:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/fasterxml/jackson/a/g/d;->b:Lcom/fasterxml/jackson/a/g/a;

    if-nez p1, :cond_13

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    :goto_12
    return-void

    :cond_13
    sget-object v0, Lcom/fasterxml/jackson/a/g/b;->c:Lcom/fasterxml/jackson/a/g/b;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/b;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    goto :goto_12
.end method

.method private h()V
    .registers 4

    const/high16 v0, 0x4

    iget v1, p0, Lcom/fasterxml/jackson/a/g/d;->d:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/a/g/d;->d:I

    iget v1, p0, Lcom/fasterxml/jackson/a/g/d;->d:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v1, v0, :cond_25

    :goto_16
    iget-object v1, p0, Lcom/fasterxml/jackson/a/g/d;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    return-void

    :cond_25
    move v0, v1

    goto :goto_16
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/a/g/d;->d:I

    iput v0, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_12
    return-void
.end method

.method public final a(I)V
    .registers 5

    iget v0, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    iget-object v1, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    array-length v1, v1

    if-lt v0, v1, :cond_a

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/d;->h()V

    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public final b()V
    .registers 4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/g/d;->a()V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->b:Lcom/fasterxml/jackson/a/g/a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->b:Lcom/fasterxml/jackson/a/g/a;

    sget-object v1, Lcom/fasterxml/jackson/a/g/b;->c:Lcom/fasterxml/jackson/a/g/b;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/b;[B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    :cond_17
    return-void
.end method

.method public final b(I)V
    .registers 5

    iget v0, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_22

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :goto_21
    return-void

    :cond_22
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    goto :goto_21
.end method

.method public final c(I)V
    .registers 5

    iget v0, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :goto_2e
    return-void

    :cond_2f
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    goto :goto_2e
.end method

.method public final c()[B
    .registers 8

    const/4 v2, 0x0

    iget v0, p0, Lcom/fasterxml/jackson/a/g/d;->d:I

    iget v1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    add-int v4, v0, v1

    if-nez v4, :cond_c

    sget-object v0, Lcom/fasterxml/jackson/a/g/d;->a:[B

    :goto_b
    return-object v0

    :cond_c
    new-array v3, v4, [B

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v6, v0

    invoke-static {v0, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v1, v6

    move v1, v0

    goto :goto_15

    :cond_29
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    add-int/2addr v0, v1

    if-eq v0, v4, :cond_5a

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error: total len assumed to be "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", copied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5a
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/g/d;->a()V

    :cond_65
    move-object v0, v3

    goto :goto_b
.end method

.method public final close()V
    .registers 1

    return-void
.end method

.method public final d()[B
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/g/d;->a()V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    return-object v0
.end method

.method public final d(I)[B
    .registers 3

    iput p1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public final e(I)V
    .registers 2

    iput p1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    return-void
.end method

.method public final e()[B
    .registers 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/d;->h()V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    return-object v0
.end method

.method public final f()[B
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    return-object v0
.end method

.method public final flush()V
    .registers 1

    return-void
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    return v0
.end method

.method public final write(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/a/g/d;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 7

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    array-length v0, v0

    iget v1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v1, p0, Lcom/fasterxml/jackson/a/g/d;->e:[B

    iget v2, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    iget v1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/a/g/d;->f:I

    sub-int/2addr p3, v0

    :cond_1a
    if-lez p3, :cond_20

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/d;->h()V

    goto :goto_0

    :cond_20
    return-void
.end method
