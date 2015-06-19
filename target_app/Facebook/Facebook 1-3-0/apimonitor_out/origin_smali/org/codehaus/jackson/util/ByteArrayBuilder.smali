.class public final Lorg/codehaus/jackson/util/ByteArrayBuilder;
.super Ljava/lang/Object;


# static fields
.field static final DEFAULT_BLOCK_ARRAY_SIZE:I = 0x28

.field private static final INITIAL_BLOCK_SIZE:I = 0x1f4

.field private static final MAX_BLOCK_SIZE:I = 0x40000

.field private static final NO_BYTES:[B


# instance fields
.field private _currBlock:[B

.field private _currBlockPtr:I

.field private _pastBlocks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private _pastLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    const/16 v0, 0x1f4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    return-void
.end method

.method private _allocMoreAndAppend(B)V
    .registers 5

    const/high16 v2, 0x4

    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, v2, :cond_17

    move v0, v2

    :cond_17
    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    aput-byte p1, v0, v1

    return-void
.end method


# virtual methods
.method public append(I)V
    .registers 6

    int-to-byte v0, p1

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v2, v2

    if-ge v1, v2, :cond_13

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    aput-byte v0, v1, v2

    :goto_12
    return-void

    :cond_13
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_allocMoreAndAppend(B)V

    goto :goto_12
.end method

.method public appendThreeBytes(I)V
    .registers 5

    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :goto_2e
    return-void

    :cond_2f
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_2e
.end method

.method public appendTwoBytes(I)V
    .registers 5

    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-ge v0, v1, :cond_22

    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :goto_21
    return-void

    :cond_22
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_21
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_1c
    return-void
.end method

.method public toByteArray()[B
    .registers 8

    const/4 v6, 0x0

    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/2addr v1, v0

    if-nez v1, :cond_b

    sget-object v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->NO_BYTES:[B

    :goto_a
    return-object v0

    :cond_b
    new-array v2, v1, [B

    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v6

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v4, v5

    move v4, v0

    goto :goto_14

    :cond_28
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v3, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    invoke-static {v0, v6, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/2addr v0, v4

    if-eq v0, v1, :cond_5d

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error: total len assumed to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", copied "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5d
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    :cond_68
    move-object v0, v2

    goto :goto_a
.end method
