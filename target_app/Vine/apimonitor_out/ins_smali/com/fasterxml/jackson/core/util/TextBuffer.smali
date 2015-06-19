.class public final Lcom/fasterxml/jackson/core/util/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"
.field static final MAX_SEGMENT_LEN:I = 0x40000
.field static final MIN_SEGMENT_LEN:I = 0x3e8
.field static final NO_CHARS:[C
.field private final _allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;
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
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [C
sput-object v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z
iput-object p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;
return-void
.end method
.method private buf(I)[C
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;I)[C
move-result-object v0
:goto_c
return-object v0
:cond_d
const/16 v0, 0x3e8
invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
new-array v0, v0, [C
goto :goto_c
.end method
.method private carr(I)[C
.registers 3
new-array v0, p1, [C
return-object v0
.end method
.method private clearSegments()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I
iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
return-void
.end method
.method private expand(I)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I
array-length v2, v0
add-int/2addr v1, v2
iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I
array-length v1, v0
shr-int/lit8 v0, v1, 0x1
if-ge v0, p1, :cond_31
:goto_20
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
const/high16 v0, 0x4
add-int/2addr v1, p1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->carr(I)[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
return-void
:cond_31
move p1, v0
goto :goto_20
.end method
.method private resultArray()[C
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
:goto_c
return-object v0
:cond_d
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-ltz v0, :cond_2b
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
if-ge v0, v1, :cond_18
sget-object v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C
goto :goto_c
:cond_18
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-nez v1, :cond_23
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
invoke-static {v1, v0}, Lcom/fasterxml/jackson/core/util/ArraysCompat;->copyOf([CI)[C
move-result-object v0
goto :goto_c
:cond_23
iget-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
add-int/2addr v0, v1
invoke-static {v2, v1, v0}, Lcom/fasterxml/jackson/core/util/ArraysCompat;->copyOfRange([CII)[C
move-result-object v0
goto :goto_c
:cond_2b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I
move-result v0
if-ge v0, v1, :cond_34
sget-object v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C
goto :goto_c
:cond_34
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->carr(I)[C
move-result-object v3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v5
move v4, v2
move v1, v2
:goto_44
if-ge v4, v5, :cond_59
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [C
check-cast v0, [C
array-length v6, v0
invoke-static {v0, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/2addr v1, v6
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_44
:cond_59
move v0, v1
:goto_5a
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
iget v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object v0, v3
goto :goto_c
:cond_63
move v0, v2
goto :goto_5a
.end method
.method private unshare(I)V
.registers 8
const/4 v5, 0x0
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
iput v5, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
const/4 v2, 0x0
iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
const/4 v3, -0x1
iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
add-int v3, v0, p1
iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
if-eqz v4, :cond_1a
iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
array-length v4, v4
if-le v3, v4, :cond_20
:cond_1a
invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C
move-result-object v3
iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
:cond_20
if-lez v0, :cond_27
iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_27
iput v5, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I
iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
return-void
.end method
.method public append(C)V
.registers 5
const/4 v1, 0x0
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-ltz v0, :cond_a
const/16 v0, 0x10
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V
:cond_a
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
array-length v2, v0
if-lt v1, v2, :cond_1b
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
:cond_1b
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
aput-char p1, v0, v1
return-void
.end method
.method public append(Ljava/lang/String;II)V
.registers 8
const/4 v1, 0x0
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-ltz v0, :cond_8
invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V
:cond_8
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
array-length v1, v0
iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
sub-int/2addr v1, v2
if-lt v1, p3, :cond_21
add-int v1, p2, p3
iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
add-int/2addr v0, p3
iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
:goto_20
return-void
:cond_21
if-lez v1, :cond_2c
add-int v2, p2, v1
iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V
sub-int/2addr p3, v1
add-int/2addr p2, v1
:cond_2c
invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
array-length v0, v0
invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I
move-result v0
add-int v1, p2, v0
iget-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
const/4 v3, 0x0
invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
add-int/2addr v1, v0
iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
add-int/2addr p2, v0
sub-int/2addr p3, v0
if-gtz p3, :cond_2c
goto :goto_20
.end method
.method public append([CII)V
.registers 7
const/4 v1, 0x0
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-ltz v0, :cond_8
invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V
:cond_8
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
array-length v1, v0
iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
sub-int/2addr v1, v2
if-lt v1, p3, :cond_1f
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
add-int/2addr v0, p3
iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
:goto_1e
return-void
:cond_1f
if-lez v1, :cond_28
iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/2addr p2, v1
sub-int/2addr p3, v1
:cond_28
invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
array-length v0, v0
invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I
move-result v0
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
const/4 v2, 0x0
invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
add-int/2addr v1, v0
iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
add-int/2addr p2, v0
sub-int/2addr p3, v0
if-gtz p3, :cond_28
goto :goto_1e
.end method
.method public contentsAsArray()[C
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
if-nez v0, :cond_a
invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resultArray()[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
:cond_a
return-object v0
.end method
.method public contentsAsDecimal()Ljava/math/BigDecimal;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([C)Ljava/math/BigDecimal;
move-result-object v0
:goto_a
return-object v0
:cond_b
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-ltz v0, :cond_1e
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([CII)Ljava/math/BigDecimal;
move-result-object v0
goto :goto_a
:cond_1e
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I
if-nez v0, :cond_30
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
const/4 v1, 0x0
iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([CII)Ljava/math/BigDecimal;
move-result-object v0
goto :goto_a
:cond_30
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([C)Ljava/math/BigDecimal;
move-result-object v0
goto :goto_a
.end method
.method public contentsAsDouble()D
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D
move-result-wide v0
return-wide v0
.end method
.method public contentsAsString()Ljava/lang/String;
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
if-nez v0, :cond_12
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
if-eqz v0, :cond_15
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
:cond_12
:goto_12
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
:goto_14
return-object v0
:cond_15
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-ltz v0, :cond_31
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
const/4 v1, 0x1
if-ge v0, v1, :cond_23
const-string v0, ""
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
goto :goto_14
:cond_23
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
goto :goto_12
:cond_31
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
if-nez v0, :cond_46
if-nez v1, :cond_3e
const-string v0, ""
:goto_3b
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
goto :goto_12
:cond_3e
new-instance v0, Ljava/lang/String;
iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V
goto :goto_3b
:cond_46
new-instance v3, Ljava/lang/StringBuilder;
add-int/2addr v0, v1
invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
if-eqz v0, :cond_69
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v4
move v1, v2
:goto_57
if-ge v1, v4, :cond_69
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [C
array-length v5, v0
invoke-virtual {v3, v0, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_57
:cond_69
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
invoke-virtual {v3, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
goto :goto_12
.end method
.method public emptyAndGetCurrentSegment()[C
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z
if-eqz v0, :cond_16
invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V
:cond_16
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
if-nez v0, :cond_20
invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
:cond_20
return-object v0
.end method
.method public ensureNotShared()V
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-ltz v0, :cond_9
const/16 v0, 0x10
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V
:cond_9
return-void
.end method
.method public expandCurrentSegment()[C
.registers 5
const/high16 v3, 0x4
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
array-length v0, v1
if-ne v0, v3, :cond_11
const v0, 0x40001
:goto_a
invoke-static {v1, v0}, Lcom/fasterxml/jackson/core/util/ArraysCompat;->copyOf([CI)[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
return-object v0
:cond_11
shr-int/lit8 v2, v0, 0x1
add-int/2addr v0, v2
invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_a
.end method
.method public expandCurrentSegment(I)[C
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
array-length v1, v0
if-lt v1, p1, :cond_6
:goto_5
return-object v0
:cond_6
invoke-static {v0, p1}, Lcom/fasterxml/jackson/core/util/ArraysCompat;->copyOf([CI)[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
goto :goto_5
.end method
.method public finishCurrentSegment()[C
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
:cond_b
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
array-length v0, v0
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I
add-int/2addr v1, v0
iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I
shr-int/lit8 v1, v0, 0x1
add-int/2addr v0, v1
const/high16 v1, 0x4
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->carr(I)[C
move-result-object v0
const/4 v1, 0x0
iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
return-object v0
.end method
.method public getCurrentSegment()[C
.registers 4
const/4 v2, 0x1
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-ltz v0, :cond_b
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V
:goto_8
:cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
return-object v0
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
if-nez v0, :cond_17
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
goto :goto_8
:cond_17
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
array-length v0, v0
if-lt v1, v0, :cond_8
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V
goto :goto_8
.end method
.method public getCurrentSegmentSize()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
return v0
.end method
.method public getTextBuffer()[C
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-ltz v0, :cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
goto :goto_6
:cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
goto :goto_6
:cond_1b
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z
if-nez v0, :cond_22
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
goto :goto_6
:cond_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C
move-result-object v0
goto :goto_6
.end method
.method public getTextOffset()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-ltz v0, :cond_7
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public hasTextAsCharacters()Z
.registers 3
const/4 v0, 0x1
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-gez v1, :cond_9
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
if-eqz v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
if-eqz v1, :cond_9
const/4 v0, 0x0
goto :goto_9
.end method
.method public releaseBuffers()V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;
if-nez v0, :cond_8
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V
:cond_7
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
if-eqz v0, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;
sget-object v2, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;
invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V
goto :goto_7
.end method
.method public resetWithCopy([CII)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z
if-eqz v0, :cond_1c
invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V
:goto_14
:cond_14
iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I
iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append([CII)V
return-void
:cond_1c
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
if-nez v0, :cond_14
invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C
goto :goto_14
.end method
.method public resetWithEmpty()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z
if-eqz v0, :cond_16
invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V
:cond_16
return-void
.end method
.method public resetWithShared([CII)V
.registers 5
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
iput-object p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
iput p2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
iput p3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z
if-eqz v0, :cond_12
invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V
:cond_12
return-void
.end method
.method public resetWithString(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x0
iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
iput-object p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z
if-eqz v0, :cond_14
invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V
:cond_14
iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
return-void
.end method
.method public setCurrentLength(I)V
.registers 2
iput p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
return-void
.end method
.method public size()I
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I
if-ltz v0, :cond_7
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I
:goto_6
return v0
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C
array-length v0, v0
goto :goto_6
:cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
goto :goto_6
:cond_1a
iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I
iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I
add-int/2addr v0, v1
goto :goto_6
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method