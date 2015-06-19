.class public Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"
.field public data:[B
.field public length:I
.field public offset:I
.method private constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v0, p1, [B
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->data:[B
return-void
.end method
.method synthetic constructor <init>(ILcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;-><init>(I)V
return-void
.end method
.method public readFrom(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;)V
.registers 12
const/4 v5, 0x0
new-instance v1, Ljava/io/FileInputStream;
invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
iput v5, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->length:I
:try_start_8
iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->data:[B
array-length v0, v5
:cond_b
:goto_b
const/16 v5, 0x1000
iget v6, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->length:I
sub-int v6, v0, v6
invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I
move-result v4
iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->data:[B
iget v6, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->length:I
invoke-virtual {v1, v5, v6, v4}, Ljava/io/FileInputStream;->read([BII)I
move-result v3
if-ltz v3, :cond_25
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
:try_end_22
.catchall {:try_start_8 .. :try_end_22} :catchall_49
move-result v5
if-eqz v5, :cond_29
:cond_25
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
return-void
:cond_29
:try_start_29
iget v5, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->length:I
add-int/2addr v5, v3
iput v5, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->length:I
iget v5, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->length:I
if-ne v5, v0, :cond_b
iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->data:[B
array-length v5, v5
mul-int/lit8 v5, v5, 0x2
new-array v2, v5, [B
iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->data:[B
const/4 v6, 0x0
const/4 v7, 0x0
iget-object v8, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->data:[B
array-length v8, v8
invoke-static {v5, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v2, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->data:[B
iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->data:[B
array-length v0, v5
:try_end_48
.catchall {:try_start_29 .. :try_end_48} :catchall_49
goto :goto_b
:catchall_49
move-exception v5
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
throw v5
.end method