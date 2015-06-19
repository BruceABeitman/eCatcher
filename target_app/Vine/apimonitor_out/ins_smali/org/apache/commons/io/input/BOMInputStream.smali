.class public Lorg/apache/commons/io/input/BOMInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "BOMInputStream.java"
.field private static final ByteOrderMarkLengthComparator:Ljava/util/Comparator;
.field private final boms:Ljava/util/List;
.field private byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;
.field private fbIndex:I
.field private fbLength:I
.field private firstBytes:[I
.field private final include:Z
.field private markFbIndex:I
.field private markedAtStart:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/apache/commons/io/input/BOMInputStream$1;
invoke-direct {v0}, Lorg/apache/commons/io/input/BOMInputStream$1;-><init>()V
sput-object v0, Lorg/apache/commons/io/input/BOMInputStream;->ByteOrderMarkLengthComparator:Ljava/util/Comparator;
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 5
const/4 v2, 0x0
const/4 v0, 0x1
new-array v0, v0, [Lorg/apache/commons/io/ByteOrderMark;
sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;
aput-object v1, v0, v2
invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Z)V
.registers 6
const/4 v0, 0x1
new-array v0, v0, [Lorg/apache/commons/io/ByteOrderMark;
const/4 v1, 0x0
sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;
aput-object v2, v0, v1
invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V
return-void
.end method
.method public varargs constructor <init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V
.registers 6
invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V
if-eqz p3, :cond_8
array-length v0, p3
if-nez v0, :cond_10
:cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "No BOMs specified"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iput-boolean p2, p0, Lorg/apache/commons/io/input/BOMInputStream;->include:Z
sget-object v0, Lorg/apache/commons/io/input/BOMInputStream;->ByteOrderMarkLengthComparator:Ljava/util/Comparator;
invoke-static {p3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->boms:Ljava/util/List;
return-void
.end method
.method public varargs constructor <init>(Ljava/io/InputStream;[Lorg/apache/commons/io/ByteOrderMark;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V
return-void
.end method
.method private find()Lorg/apache/commons/io/ByteOrderMark;
.registers 4
iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->boms:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/commons/io/ByteOrderMark;
invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BOMInputStream;->matches(Lorg/apache/commons/io/ByteOrderMark;)Z
move-result v2
if-eqz v2, :cond_6
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method private matches(Lorg/apache/commons/io/ByteOrderMark;)Z
.registers 5
const/4 v0, 0x0
:goto_1
invoke-virtual {p1}, Lorg/apache/commons/io/ByteOrderMark;->length()I
move-result v1
if-ge v0, v1, :cond_16
invoke-virtual {p1, v0}, Lorg/apache/commons/io/ByteOrderMark;->get(I)I
move-result v1
iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I
aget v2, v2, v0
if-eq v1, v2, :cond_13
const/4 v1, 0x0
:goto_12
return v1
:cond_13
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_16
const/4 v1, 0x1
goto :goto_12
.end method
.method private readFirstBytes()I
.registers 4
invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->getBOM()Lorg/apache/commons/io/ByteOrderMark;
iget v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I
iget v1, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbLength:I
if-ge v0, v1, :cond_14
iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I
iget v1, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I
aget v0, v0, v1
:goto_13
return v0
:cond_14
const/4 v0, -0x1
goto :goto_13
.end method
.method public getBOM()Lorg/apache/commons/io/ByteOrderMark;
.registers 6
const/4 v4, 0x0
iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I
if-nez v2, :cond_54
iput v4, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbLength:I
iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->boms:Ljava/util/List;
invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lorg/apache/commons/io/ByteOrderMark;
invoke-virtual {v2}, Lorg/apache/commons/io/ByteOrderMark;->length()I
move-result v1
new-array v2, v1, [I
iput-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I
const/4 v0, 0x0
:goto_18
iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I
array-length v2, v2
if-ge v0, v2, :cond_33
iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I
iget-object v3, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v3}, Ljava/io/InputStream;->read()I
move-result v3
aput v3, v2, v0
iget v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbLength:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbLength:I
iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I
aget v2, v2, v0
if-gez v2, :cond_57
:cond_33
invoke-direct {p0}, Lorg/apache/commons/io/input/BOMInputStream;->find()Lorg/apache/commons/io/ByteOrderMark;
move-result-object v2
iput-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;
iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;
if-eqz v2, :cond_54
iget-boolean v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->include:Z
if-nez v2, :cond_54
iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;
invoke-virtual {v2}, Lorg/apache/commons/io/ByteOrderMark;->length()I
move-result v2
iget-object v3, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I
array-length v3, v3
if-ge v2, v3, :cond_5a
iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;
invoke-virtual {v2}, Lorg/apache/commons/io/ByteOrderMark;->length()I
move-result v2
iput v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I
:goto_54
:cond_54
iget-object v2, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;
return-object v2
:cond_57
add-int/lit8 v0, v0, 0x1
goto :goto_18
:cond_5a
iput v4, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbLength:I
goto :goto_54
.end method
.method public getBOMCharsetName()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->getBOM()Lorg/apache/commons/io/ByteOrderMark;
iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;
if-nez v0, :cond_9
const/4 v0, 0x0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;
invoke-virtual {v0}, Lorg/apache/commons/io/ByteOrderMark;->getCharsetName()Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method
.method public hasBOM()Z
.registers 2
invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->getBOM()Lorg/apache/commons/io/ByteOrderMark;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public hasBOM(Lorg/apache/commons/io/ByteOrderMark;)Z
.registers 5
iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->boms:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Stream not configure to detect "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->byteOrderMark:Lorg/apache/commons/io/ByteOrderMark;
if-eqz v0, :cond_31
invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream;->getBOM()Lorg/apache/commons/io/ByteOrderMark;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/commons/io/ByteOrderMark;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_31
const/4 v0, 0x1
:goto_30
return v0
:cond_31
const/4 v0, 0x0
goto :goto_30
.end method
.method public declared-synchronized mark(I)V
.registers 3
monitor-enter p0
:try_start_1
iget v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I
iput v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->markFbIndex:I
iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I
if-nez v0, :cond_13
const/4 v0, 0x1
:goto_a
iput-boolean v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->markedAtStart:Z
iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_15
monitor-exit p0
return-void
:cond_13
const/4 v0, 0x0
goto :goto_a
:catchall_15
move-exception v0
monitor-exit p0
throw v0
.end method
.method public read()I
.registers 3
invoke-direct {p0}, Lorg/apache/commons/io/input/BOMInputStream;->readFirstBytes()I
move-result v0
if-ltz v0, :cond_7
:goto_6
return v0
:cond_7
iget-object v1, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->read()I
move-result v0
goto :goto_6
.end method
.method public read([B)I
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BOMInputStream;->read([BII)I
move-result v0
return v0
.end method
.method public read([BII)I
.registers 9
const/4 v1, 0x0
const/4 v0, 0x0
move v2, p2
:goto_3
:cond_3
if-lez p3, :cond_1a
if-ltz v0, :cond_1a
invoke-direct {p0}, Lorg/apache/commons/io/input/BOMInputStream;->readFirstBytes()I
move-result v0
if-ltz v0, :cond_3
add-int/lit8 p2, v2, 0x1
and-int/lit16 v4, v0, 0xff
int-to-byte v4, v4
aput-byte v4, p1, v2
add-int/lit8 p3, p3, -0x1
add-int/lit8 v1, v1, 0x1
move v2, p2
goto :goto_3
:cond_1a
iget-object v4, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v4, p1, v2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v3
if-gez v3, :cond_27
if-lez v1, :cond_25
:goto_24
return v1
:cond_25
const/4 v1, -0x1
goto :goto_24
:cond_27
add-int/2addr v1, v3
goto :goto_24
.end method
.method public declared-synchronized reset()V
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->markFbIndex:I
iput v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->fbIndex:I
iget-boolean v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->markedAtStart:Z
if-eqz v0, :cond_c
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->firstBytes:[I
:cond_c
iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
monitor-exit p0
return-void
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public skip(J)J
.registers 5
:goto_0
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-lez v0, :cond_10
invoke-direct {p0}, Lorg/apache/commons/io/input/BOMInputStream;->readFirstBytes()I
move-result v0
if-ltz v0, :cond_10
const-wide/16 v0, 0x1
sub-long/2addr p1, v0
goto :goto_0
:cond_10
iget-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J
move-result-wide v0
return-wide v0
.end method