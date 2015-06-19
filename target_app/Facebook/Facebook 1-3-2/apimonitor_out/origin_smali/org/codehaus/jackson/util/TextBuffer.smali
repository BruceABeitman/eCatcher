.class public final Lorg/codehaus/jackson/util/TextBuffer;
.super Ljava/lang/Object;


# static fields
.field static final NO_CHARS:[C


# instance fields
.field private final _allocator:Lorg/codehaus/jackson/util/BufferRecycler;

.field private _currentSegment:[C

.field private _currentSize:I

.field private _hasSegments:Z

.field private _inputBuffer:[C

.field private _inputLen:I

.field private _inputStart:I

.field private _resultArray:[C

.field private _resultString:Ljava/lang/String;

.field private _segmentSize:I

.field private _segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    return-void
.end method

.method private final allocBuffer(I)[C
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    return-object v0
.end method

.method private buildResultArray()[C
    .registers 8

    const/4 v1, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_26

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    if-ge v0, v1, :cond_18

    sget-object v0, Lorg/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    goto :goto_c

    :cond_18
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    new-array v0, v0, [C

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-static {v1, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :cond_26
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    if-ge v0, v1, :cond_2f

    sget-object v0, Lorg/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    goto :goto_c

    :cond_2f
    new-array v1, v0, [C

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v6

    move v4, v6

    :goto_3d
    if-ge v3, v2, :cond_53

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    array-length v5, v0

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v4, v5

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_3d

    :cond_53
    move v0, v4

    :goto_54
    iget-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {v2, v6, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_c

    :cond_5d
    move v0, v6

    goto :goto_54
.end method

.method private final clearSegments()V
    .registers 5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return-void
.end method

.method private expand(I)V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    array-length v0, v0

    shr-int/lit8 v1, v0, 0x1

    if-ge v1, p1, :cond_21

    move v1, p1

    :cond_21
    add-int/2addr v0, v1

    new-array v0, v0, [C

    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-void
.end method

.method private unshare(I)V
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    iput v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    const/4 v3, -0x1

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    add-int v3, v0, p1

    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v4, v4

    if-le v3, v4, :cond_20

    :cond_1a
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/util/TextBuffer;->allocBuffer(I)[C

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    :cond_20
    if-lez v0, :cond_27

    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    iput v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return-void
.end method


# virtual methods
.method public append([CII)V
    .registers 9

    const/4 v1, 0x0

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_8

    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->unshare(I)V

    :cond_8
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v1, v0

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_1f

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    :goto_1e
    return-void

    :cond_1f
    if-lez v1, :cond_39

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, p2, v1

    sub-int v1, p3, v1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_2d
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->expand(I)V

    iget-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    goto :goto_1e

    :cond_39
    move v0, p3

    move v1, p2

    goto :goto_2d
.end method

.method public contentsAsArray()[C
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-nez v0, :cond_a

    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->buildResultArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    :cond_a
    return-object v0
.end method

.method public contentsAsDecimal()Ljava/math/BigDecimal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_c

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    :goto_b
    return-object v0

    :cond_c
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_1c

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b

    :cond_1c
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    if-nez v0, :cond_2b

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b

    :cond_2b
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_b
.end method

.method public contentsAsDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public contentsAsString()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    const-string v2, ""

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    :cond_14
    :goto_14
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    :goto_16
    return-object v0

    :cond_17
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_34

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_26

    const-string v0, ""

    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    move-object v0, v2

    goto :goto_16

    :cond_26
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_14

    :cond_34
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    if-nez v0, :cond_4a

    if-nez v1, :cond_42

    const-string v0, ""

    move-object v0, v2

    :goto_3f
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_14

    :cond_42
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-direct {v0, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3f

    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v5

    :goto_5b
    if-ge v3, v1, :cond_6d

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    array-length v4, v0

    invoke-virtual {v2, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5b

    :cond_6d
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {v2, v0, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_14
.end method

.method public emptyAndGetCurrentSegment()[C
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->allocBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    :cond_e
    return-object v0
.end method

.method public ensureNotShared()V
    .registers 2

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_9

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->unshare(I)V

    :cond_9
    return-void
.end method

.method public expandCurrentSegment()[C
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v1, v0

    add-int v2, v1, v1

    new-array v2, v2, [C

    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v0
.end method

.method public finishCurrentSegment()[C
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v0, v0

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v0
.end method

.method public getCurrentSegment()[C
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_b

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->unshare(I)V

    :cond_8
    :goto_8
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->allocBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_8

    :cond_17
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    array-length v0, v0

    if-lt v1, v0, :cond_8

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->expand(I)V

    goto :goto_8
.end method

.method public getCurrentSegmentSize()I
    .registers 2

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return v0
.end method

.method public getTextBuffer()[C
    .registers 2

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    :goto_6
    return-object v0

    :cond_7
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    goto :goto_6
.end method

.method public getTextOffset()I
    .registers 2

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_7

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public releaseBuffers()V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v2, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    :cond_17
    return-void
.end method

.method public resetWithCopy([CII)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->clearSegments()V

    :cond_14
    :goto_14
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/util/TextBuffer;->append([CII)V

    return-void

    :cond_1c
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_14

    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->allocBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_14
.end method

.method public resetWithEmpty()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->clearSegments()V

    :cond_14
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return-void
.end method

.method public resetWithShared([CII)V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iput p2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iput p3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->clearSegments()V

    :cond_12
    return-void
.end method

.method public setCurrentLength(I)V
    .registers 2

    iput p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return-void
.end method

.method public size()I
    .registers 3

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_7

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
