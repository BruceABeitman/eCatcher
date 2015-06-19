.class public Lorg/apache/commons/io/output/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"
.field private static final EMPTY_BYTE_ARRAY:[B
.field private final buffers:Ljava/util/List;
.field private count:I
.field private currentBuffer:[B
.field private currentBufferIndex:I
.field private filledBufferSum:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [B
sput-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B
return-void
.end method
.method public constructor <init>()V
.registers 2
const/16 v0, 0x400
invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V
return-void
.end method
.method public constructor <init>(I)V
.registers 5
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;
if-gez p1, :cond_25
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Negative initial size: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
monitor-enter p0
:try_start_26
invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V
monitor-exit p0
return-void
:catchall_2b
move-exception v0
monitor-exit p0
:try_end_2d
.catchall {:try_start_26 .. :try_end_2d} :catchall_2b
throw v0
.end method
.method private needNewBuffer(I)V
.registers 5
iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I
iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-ge v1, v2, :cond_27
iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I
iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
array-length v2, v2
add-int/2addr v1, v2
iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I
iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I
iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;
iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, [B
iput-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
:goto_26
return-void
:cond_27
iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
if-nez v1, :cond_41
move v0, p1
const/4 v1, 0x0
iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I
:goto_2f
iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I
new-array v1, v0, [B
iput-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;
iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_26
:cond_41
iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
array-length v1, v1
shl-int/lit8 v1, v1, 0x1
iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I
sub-int v2, p1, v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v0
iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I
iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
array-length v2, v2
add-int/2addr v1, v2
iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I
goto :goto_2f
.end method
.method private toBufferedInputStream()Ljava/io/InputStream;
.registers 8
iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
if-nez v4, :cond_a
new-instance v5, Lorg/apache/commons/io/input/ClosedInputStream;
invoke-direct {v5}, Lorg/apache/commons/io/input/ClosedInputStream;-><init>()V
:goto_9
return-object v5
:cond_a
new-instance v3, Ljava/util/ArrayList;
iget-object v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V
iget-object v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_1b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_38
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
array-length v5, v0
invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I
move-result v1
new-instance v5, Ljava/io/ByteArrayInputStream;
const/4 v6, 0x0
invoke-direct {v5, v0, v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sub-int/2addr v4, v1
if-nez v4, :cond_1b
:cond_38
new-instance v5, Ljava/io/SequenceInputStream;
invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
move-result-object v6
invoke-direct {v5, v6}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V
goto :goto_9
.end method
.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
.registers 3
new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;
invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V
invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->write(Ljava/io/InputStream;)I
invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toBufferedInputStream()Ljava/io/InputStream;
move-result-object v1
return-object v1
.end method
.method public close()V
.registers 1
return-void
.end method
.method public declared-synchronized reset()V
.registers 3
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I
iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;
iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
:try_end_16
.catchall {:try_start_2 .. :try_end_16} :catchall_18
monitor-exit p0
return-void
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized size()I
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized toByteArray()[B
.registers 8
monitor-enter p0
:try_start_1
iget v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
if-nez v5, :cond_9
sget-object v3, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_2c
:cond_7
:goto_7
monitor-exit p0
return-object v3
:try_start_9
:cond_9
new-array v3, v5, [B
const/4 v4, 0x0
iget-object v6, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_12
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_7
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
array-length v6, v0
invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I
move-result v1
const/4 v6, 0x0
invoke-static {v0, v6, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:try_end_27
.catchall {:try_start_9 .. :try_end_27} :catchall_2c
add-int/2addr v4, v1
sub-int/2addr v5, v1
if-nez v5, :cond_12
goto :goto_7
:catchall_2c
move-exception v6
monitor-exit p0
throw v6
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/String;
invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
return-object v0
.end method
.method public toString(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/String;
invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
return-object v0
.end method
.method public declared-synchronized write(Ljava/io/InputStream;)I
.registers 7
monitor-enter p0
const/4 v2, 0x0
:try_start_2
iget v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I
sub-int v0, v3, v4
iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
array-length v4, v4
sub-int/2addr v4, v0
invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I
move-result v1
:goto_12
const/4 v3, -0x1
if-eq v1, v3, :cond_33
add-int/2addr v2, v1
add-int/2addr v0, v1
iget v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
add-int/2addr v3, v1
iput v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
array-length v3, v3
if-ne v0, v3, :cond_28
iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
array-length v3, v3
invoke-direct {p0, v3}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V
const/4 v0, 0x0
:cond_28
iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
array-length v4, v4
sub-int/2addr v4, v0
invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I
:try_end_31
.catchall {:try_start_2 .. :try_end_31} :catchall_35
move-result v1
goto :goto_12
:cond_33
monitor-exit p0
return v2
:catchall_35
move-exception v3
monitor-exit p0
throw v3
.end method
.method public declared-synchronized write(I)V
.registers 5
monitor-enter p0
:try_start_1
iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I
sub-int v0, v1, v2
iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
array-length v1, v1
if-ne v0, v1, :cond_14
iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
add-int/lit8 v1, v1, 0x1
invoke-direct {p0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V
const/4 v0, 0x0
:cond_14
iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
int-to-byte v2, p1
aput-byte v2, v1, v0
iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
:try_end_1f
.catchall {:try_start_1 .. :try_end_1f} :catchall_21
monitor-exit p0
return-void
:catchall_21
move-exception v1
monitor-exit p0
throw v1
.end method
.method public write([BII)V
.registers 10
if-ltz p2, :cond_10
array-length v4, p1
if-gt p2, v4, :cond_10
if-ltz p3, :cond_10
add-int v4, p2, p3
array-length v5, p1
if-gt v4, v5, :cond_10
add-int v4, p2, p3
if-gez v4, :cond_16
:cond_10
new-instance v4, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v4
:cond_16
if-nez p3, :cond_19
:goto_18
return-void
:cond_19
monitor-enter p0
:try_start_1a
iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
add-int v1, v4, p3
move v3, p3
iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
iget v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I
sub-int v0, v4, v5
:goto_25
:cond_25
if-lez v3, :cond_3f
iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
array-length v4, v4
sub-int/2addr v4, v0
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v2
add-int v4, p2, p3
sub-int/2addr v4, v3
iget-object v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
invoke-static {p1, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
sub-int/2addr v3, v2
if-lez v3, :cond_25
invoke-direct {p0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V
const/4 v0, 0x0
goto :goto_25
:cond_3f
iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
monitor-exit p0
goto :goto_18
:catchall_43
move-exception v4
monitor-exit p0
:try_end_45
.catchall {:try_start_1a .. :try_end_45} :catchall_43
throw v4
.end method
.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
.registers 7
monitor-enter p0
:try_start_1
iget v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_21
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
array-length v4, v0
invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I
move-result v1
const/4 v4, 0x0
invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_23
sub-int/2addr v3, v1
if-nez v3, :cond_9
:cond_21
monitor-exit p0
return-void
:catchall_23
move-exception v4
monitor-exit p0
throw v4
.end method