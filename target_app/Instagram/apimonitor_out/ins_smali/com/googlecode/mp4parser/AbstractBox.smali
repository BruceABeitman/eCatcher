.class public abstract Lcom/googlecode/mp4parser/AbstractBox;
.super Ljava/lang/Object;
.source "AbstractBox.java"
.implements Lcom/coremedia/iso/boxes/a;
.field static final synthetic $assertionsDisabled:Z
.field private static LOG:Ljava/util/logging/Logger;
.field public static MEM_MAP_THRESHOLD:I
.field private content:Ljava/nio/ByteBuffer;
.field private deadBytes:Ljava/nio/ByteBuffer;
.field private parent:Lcom/coremedia/iso/boxes/ContainerBox;
.field protected type:Ljava/lang/String;
.field private userType:[B
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/googlecode/mp4parser/AbstractBox;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_1d
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/googlecode/mp4parser/AbstractBox;->$assertionsDisabled:Z
const v0, 0x19000
sput v0, Lcom/googlecode/mp4parser/AbstractBox;->MEM_MAP_THRESHOLD:I
const-class v0, Lcom/googlecode/mp4parser/AbstractBox;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/googlecode/mp4parser/AbstractBox;->LOG:Ljava/util/logging/Logger;
return-void
:cond_1d
const/4 v0, 0x0
goto :goto_9
.end method
.method protected constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->type:Ljava/lang/String;
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;[B)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->type:Ljava/lang/String;
iput-object p2, p0, Lcom/googlecode/mp4parser/AbstractBox;->userType:[B
return-void
.end method
.method private getHeader(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-direct {p0}, Lcom/googlecode/mp4parser/AbstractBox;->isSmallBox()Z
move-result v0
if-eqz v0, :cond_2c
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J
move-result-wide v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
:goto_18
const-string v0, "uuid"
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2b
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getUserType()[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
:cond_2b
return-void
:cond_2c
const-wide/16 v0, 0x1
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J
move-result-wide v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
goto :goto_18
.end method
.method private isSmallBox()Z
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
if-nez v0, :cond_25
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getContentSize()J
move-result-wide v2
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
:goto_13
int-to-long v4, v0
add-long/2addr v2, v4
const-wide/16 v4, 0x8
add-long/2addr v2, v4
:goto_18
const-wide v4, 0x100000000L
cmp-long v0, v2, v4
if-gez v0, :cond_22
const/4 v1, 0x1
:cond_22
return v1
:cond_23
move v0, v1
goto :goto_13
:cond_25
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
int-to-long v2, v0
goto :goto_18
.end method
.method private verify(Ljava/nio/ByteBuffer;)Z
.registers 13
const/4 v2, 0x1
const/4 v10, 0x4
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getContentSize()J
move-result-wide v3
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
:goto_11
int-to-long v5, v0
add-long/2addr v3, v5
invoke-static {v3, v4}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v0
invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v4
invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/AbstractBox;->getContent(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
:goto_27
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
if-lez v0, :cond_37
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
goto :goto_27
:cond_35
move v0, v1
goto :goto_11
:cond_37
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I
move-result v3
if-eq v0, v3, :cond_7a
sget-object v0, Lcom/googlecode/mp4parser/AbstractBox;->LOG:Ljava/util/logging/Logger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": remaining differs "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " vs. "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
:goto_79
return v1
:cond_7a
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v5
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
add-int/lit8 v3, v0, -0x1
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
add-int/lit8 v0, v0, -0x1
:goto_8a
if-lt v3, v5, :cond_106
invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B
move-result v6
invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B
move-result v7
if-eq v6, v7, :cond_101
sget-object v0, Lcom/googlecode/mp4parser/AbstractBox;->LOG:Ljava/util/logging/Logger;
const-string v5, "%s: buffers differ at %d: %2X/%2X"
new-array v8, v10, [Ljava/lang/Object;
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;
move-result-object v9
aput-object v9, v8, v1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v8, v2
const/4 v2, 0x2
invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v3
aput-object v3, v8, v2
const/4 v2, 0x3
invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v3
aput-object v3, v8, v2
invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
new-array v0, v0, [B
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I
move-result v2
new-array v2, v2, [B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "original      : "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0, v10}, Lcom/coremedia/iso/d;->a([BI)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "reconstructed : "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v2, v10}, Lcom/coremedia/iso/d;->a([BI)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto/16 :goto_79
:cond_101
add-int/lit8 v3, v3, -0x1
add-int/lit8 v0, v0, -0x1
goto :goto_8a
:cond_106
move v1, v2
goto/16 :goto_79
.end method
.method protected abstract _parseDetails(Ljava/nio/ByteBuffer;)V
.end method
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
.registers 4
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J
move-result-wide v0
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v0
invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->getHeader(Ljava/nio/ByteBuffer;)V
iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
if-nez v1, :cond_2d
invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->getContent(Ljava/nio/ByteBuffer;)V
iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
if-eqz v1, :cond_37
iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
:goto_1f
iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v1
if-lez v1, :cond_37
iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
goto :goto_1f
:cond_2d
iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
:cond_37
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
return-void
.end method
.method protected abstract getContent(Ljava/nio/ByteBuffer;)V
.end method
.method protected abstract getContentSize()J
.end method
.method public getIsoFile()Lcom/coremedia/iso/IsoFile;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;
invoke-interface {v0}, Lcom/coremedia/iso/boxes/ContainerBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;
move-result-object v0
return-object v0
.end method
.method public getParent()Lcom/coremedia/iso/boxes/ContainerBox;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;
return-object v0
.end method
.method public getSize()J
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
if-nez v0, :cond_2e
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getContentSize()J
move-result-wide v2
:goto_9
const-wide v4, 0xfffffff8L
cmp-long v0, v2, v4
if-ltz v0, :cond_36
const/16 v0, 0x8
:goto_14
add-int/lit8 v4, v0, 0x8
const-string v0, "uuid"
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
const/16 v0, 0x10
:goto_24
add-int/2addr v0, v4
int-to-long v4, v0
add-long/2addr v2, v4
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
if-nez v0, :cond_3a
:goto_2b
int-to-long v0, v1
add-long/2addr v0, v2
return-wide v0
:cond_2e
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
int-to-long v2, v0
goto :goto_9
:cond_36
move v0, v1
goto :goto_14
:cond_38
move v0, v1
goto :goto_24
:cond_3a
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v1
goto :goto_2b
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->type:Ljava/lang/String;
return-object v0
.end method
.method public getUserType()[B
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->userType:[B
return-object v0
.end method
.method public isParsed()Z
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/b;)V
.registers 12
instance-of v0, p1, Ljava/nio/channels/FileChannel;
if-eqz v0, :cond_35
sget v0, Lcom/googlecode/mp4parser/AbstractBox;->MEM_MAP_THRESHOLD:I
int-to-long v0, v0
cmp-long v0, p3, v0
if-lez v0, :cond_35
move-object v0, p1
check-cast v0, Ljava/nio/channels/FileChannel;
sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;
move-object v2, p1
check-cast v2, Ljava/nio/channels/FileChannel;
invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J
move-result-wide v2
move-wide v4, p3
invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
move-object v0, p1
check-cast v0, Ljava/nio/channels/FileChannel;
check-cast p1, Ljava/nio/channels/FileChannel;
invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J
move-result-wide v1
add-long/2addr v1, p3
invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
:goto_2b
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->isParsed()Z
move-result v0
if-nez v0, :cond_34
invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->parseDetails()V
:cond_34
return-void
:cond_35
sget-boolean v0, Lcom/googlecode/mp4parser/AbstractBox;->$assertionsDisabled:Z
if-nez v0, :cond_46
const-wide/32 v0, 0x7fffffff
cmp-long v0, p3, v0
if-ltz v0, :cond_46
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_46
invoke-static {p1, p3, p4}, Lcom/coremedia/iso/c;->a(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
goto :goto_2b
.end method
.method final declared-synchronized parseDetails()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
const/4 v1, 0x0
iput-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->_parseDetails(Ljava/nio/ByteBuffer;)V
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I
move-result v1
if-lez v1, :cond_1c
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;
move-result-object v1
iput-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
:cond_1c
sget-boolean v1, Lcom/googlecode/mp4parser/AbstractBox;->$assertionsDisabled:Z
if-nez v1, :cond_2f
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->verify(Ljava/nio/ByteBuffer;)Z
move-result v0
if-nez v0, :cond_2f
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:try_end_2c
.catchall {:try_start_1 .. :try_end_2c} :catchall_2c
:catchall_2c
move-exception v0
monitor-exit p0
throw v0
:cond_2f
monitor-exit p0
return-void
.end method
.method protected setDeadBytes(Ljava/nio/ByteBuffer;)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
return-void
.end method
.method public setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;
return-void
.end method