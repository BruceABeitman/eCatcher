.class public Lcom/pinguo/album/data/cache/BlobCacheService;
.super Ljava/lang/Object;
.source "BlobCacheService.java"
.field private static final IMAGE_CACHE_FILE:Ljava/lang/String; = "blobcache"
.field private static final IMAGE_CACHE_MAX_BYTES:I = 0xc800000
.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x1388
.field private static final IMAGE_CACHE_VERSION:I = 0x7
.field private static final TAG:Ljava/lang/String;
.field private mCache:Lcom/pinguo/album/data/cache/BlobCache;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/album/data/cache/BlobCacheService;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/data/cache/BlobCacheService;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "blobcache"
const/16 v1, 0x1388
const/high16 v2, 0xc80
const/4 v3, 0x7
invoke-static {p1, v0, v1, v2, v3}, Lcom/pinguo/album/data/cache/BlobCacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/pinguo/album/data/cache/BlobCache;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCacheService;->mCache:Lcom/pinguo/album/data/cache/BlobCache;
return-void
.end method
.method private static isSameKey([B[B)Z
.registers 7
const/4 v2, 0x0
array-length v1, p0
array-length v3, p1
if-ge v3, v1, :cond_6
:goto_5
:cond_5
return v2
:cond_6
const/4 v0, 0x0
:goto_7
if-lt v0, v1, :cond_b
const/4 v2, 0x1
goto :goto_5
:cond_b
aget-byte v3, p0, v0
aget-byte v4, p1, v0
if-ne v3, v4, :cond_5
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method private static makeKey(Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;I)[B
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/pinguo/album/data/MediaPath;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "+"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "+"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->getBytes(Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method public clearImageData(Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;I)V
.registers 9
invoke-static {p1, p2, p3}, Lcom/pinguo/album/data/cache/BlobCacheService;->makeKey(Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;I)[B
move-result-object v2
invoke-static {v2}, Lcom/pinguo/album/utils/Utils;->crc64Long([B)J
move-result-wide v0
iget-object v4, p0, Lcom/pinguo/album/data/cache/BlobCacheService;->mCache:Lcom/pinguo/album/data/cache/BlobCache;
monitor-enter v4
:try_start_b
iget-object v3, p0, Lcom/pinguo/album/data/cache/BlobCacheService;->mCache:Lcom/pinguo/album/data/cache/BlobCache;
invoke-virtual {v3, v0, v1}, Lcom/pinguo/album/data/cache/BlobCache;->clearEntry(J)V
:try_start_10
:goto_10
:try_end_10
.catchall {:try_start_b .. :try_end_10} :catchall_12
.catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_15
monitor-exit v4
return-void
:catchall_12
move-exception v3
monitor-exit v4
:try_end_14
.catchall {:try_start_10 .. :try_end_14} :catchall_12
throw v3
:catch_15
move-exception v3
goto :goto_10
.end method
.method public getImageData(Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;ILcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)Z
.registers 12
const/4 v4, 0x0
invoke-static {p1, p2, p3}, Lcom/pinguo/album/data/cache/BlobCacheService;->makeKey(Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;I)[B
move-result-object v2
invoke-static {v2}, Lcom/pinguo/album/utils/Utils;->crc64Long([B)J
move-result-wide v0
:try_start_9
new-instance v3, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;
invoke-direct {v3}, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;-><init>()V
iput-wide v0, v3, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->key:J
iget-object v5, p4, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B
iput-object v5, v3, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->buffer:[B
iget-object v6, p0, Lcom/pinguo/album/data/cache/BlobCacheService;->mCache:Lcom/pinguo/album/data/cache/BlobCache;
monitor-enter v6
:try_start_17
:try_end_17
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_17} :catch_3d
iget-object v5, p0, Lcom/pinguo/album/data/cache/BlobCacheService;->mCache:Lcom/pinguo/album/data/cache/BlobCache;
invoke-virtual {v5, v3}, Lcom/pinguo/album/data/cache/BlobCache;->lookup(Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;)Z
move-result v5
if-nez v5, :cond_21
monitor-exit v6
:goto_20
:cond_20
return v4
:cond_21
monitor-exit v6
:try_start_22
:try_end_22
.catchall {:try_start_17 .. :try_end_22} :catchall_3a
iget-object v5, v3, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->buffer:[B
invoke-static {v2, v5}, Lcom/pinguo/album/data/cache/BlobCacheService;->isSameKey([B[B)Z
move-result v5
if-eqz v5, :cond_20
iget-object v5, v3, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->buffer:[B
iput-object v5, p4, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B
array-length v5, v2
iput v5, p4, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I
iget v5, v3, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->length:I
iget v6, p4, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I
sub-int/2addr v5, v6
iput v5, p4, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I
:try_end_38
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_38} :catch_3d
const/4 v4, 0x1
goto :goto_20
:catchall_3a
move-exception v5
:try_start_3b
monitor-exit v6
:try_end_3c
.catchall {:try_start_3b .. :try_end_3c} :catchall_3a
:try_start_3c
throw v5
:try_end_3d
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_3d} :catch_3d
:catch_3d
move-exception v5
goto :goto_20
.end method
.method public putImageData(Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;I[B)V
.registers 12
invoke-static {p1, p2, p3}, Lcom/pinguo/album/data/cache/BlobCacheService;->makeKey(Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;I)[B
move-result-object v3
invoke-static {v3}, Lcom/pinguo/album/utils/Utils;->crc64Long([B)J
move-result-wide v1
array-length v4, v3
array-length v5, p4
add-int/2addr v4, v5
invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
iget-object v5, p0, Lcom/pinguo/album/data/cache/BlobCacheService;->mCache:Lcom/pinguo/album/data/cache/BlobCache;
monitor-enter v5
:try_start_18
iget-object v4, p0, Lcom/pinguo/album/data/cache/BlobCacheService;->mCache:Lcom/pinguo/album/data/cache/BlobCache;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v6
invoke-virtual {v4, v1, v2, v6}, Lcom/pinguo/album/data/cache/BlobCache;->insert(J[B)V
:goto_21
:try_start_21
:try_end_21
.catchall {:try_start_18 .. :try_end_21} :catchall_23
.catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_26
monitor-exit v5
return-void
:catchall_23
move-exception v4
monitor-exit v5
:try_end_25
.catchall {:try_start_21 .. :try_end_25} :catchall_23
throw v4
:catch_26
move-exception v4
goto :goto_21
.end method