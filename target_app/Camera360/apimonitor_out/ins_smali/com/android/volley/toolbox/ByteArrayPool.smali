.class public Lcom/android/volley/toolbox/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"
.field protected static final BUF_COMPARATOR:Ljava/util/Comparator;
.field private mBuffersByLastUse:Ljava/util/List;
.field private mBuffersBySize:Ljava/util/List;
.field private mCurrentSize:I
.field private final mSizeLimit:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool$1;
invoke-direct {v0}, Lcom/android/volley/toolbox/ByteArrayPool$1;-><init>()V
sput-object v0, Lcom/android/volley/toolbox/ByteArrayPool;->BUF_COMPARATOR:Ljava/util/Comparator;
return-void
.end method
.method public constructor <init>(I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;
const/4 v0, 0x0
iput v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I
iput p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mSizeLimit:I
return-void
.end method
.method private declared-synchronized trim()V
.registers 4
monitor-enter p0
:goto_1
:try_start_1
iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I
iget v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mSizeLimit:I
:try_end_5
.catchall {:try_start_1 .. :try_end_5} :catchall_1e
if-gt v1, v2, :cond_9
monitor-exit p0
return-void
:try_start_9
:cond_9
iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;
const/4 v2, 0x0
invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I
array-length v2, v0
sub-int/2addr v1, v2
iput v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I
:try_end_1d
.catchall {:try_start_9 .. :try_end_1d} :catchall_1e
goto :goto_1
:catchall_1e
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized getBuf(I)[B
.registers 6
monitor-enter p0
const/4 v1, 0x0
:goto_2
:try_start_2
iget-object v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-lt v1, v2, :cond_e
new-array v0, p1, [B
:goto_c
:try_end_c
.catchall {:try_start_2 .. :try_end_c} :catchall_2a
monitor-exit p0
return-object v0
:cond_e
:try_start_e
iget-object v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
array-length v2, v0
if-lt v2, p1, :cond_2d
iget v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I
array-length v3, v0
sub-int/2addr v2, v3
iput v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I
iget-object v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;
invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
iget-object v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:try_end_29
.catchall {:try_start_e .. :try_end_29} :catchall_2a
goto :goto_c
:catchall_2a
move-exception v2
monitor-exit p0
throw v2
:cond_2d
add-int/lit8 v1, v1, 0x1
goto :goto_2
.end method
.method public declared-synchronized returnBuf([B)V
.registers 5
monitor-enter p0
if-eqz p1, :cond_8
:try_start_3
array-length v1, p1
iget v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mSizeLimit:I
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_2b
if-le v1, v2, :cond_a
:cond_8
:goto_8
monitor-exit p0
return-void
:cond_a
:try_start_a
iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;
invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;
sget-object v2, Lcom/android/volley/toolbox/ByteArrayPool;->BUF_COMPARATOR:Ljava/util/Comparator;
invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
move-result v0
if-gez v0, :cond_1c
neg-int v1, v0
add-int/lit8 v0, v1, -0x1
:cond_1c
iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;
invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I
array-length v2, p1
add-int/2addr v1, v2
iput v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I
invoke-direct {p0}, Lcom/android/volley/toolbox/ByteArrayPool;->trim()V
:try_end_2a
.catchall {:try_start_a .. :try_end_2a} :catchall_2b
goto :goto_8
:catchall_2b
move-exception v1
monitor-exit p0
throw v1
.end method