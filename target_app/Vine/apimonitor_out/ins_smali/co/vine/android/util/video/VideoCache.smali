.class public Lco/vine/android/util/video/VideoCache;
.super Lco/vine/android/util/UrlResourceCache;
.source "VideoCache.java"
.field private static final AVG_LOCK:[I = null
.field private static final CACHE_NAME:Ljava/lang/String; = "video_cache"
.field private static final INDEX_TIMESTAMP:I = 0x1
.field private static final INDEX_VIDEO_BYTES:I = 0x0
.field private static final LOCK:[I = null
.field private static final MAX_AVERAGE:I = 0x5
.field private static final MAX_EXTERNAL_DISK_CACHE_SIZE:I = 0x9600000
.field private static final MAX_INTERNAL_DISK_CACHE_SIZE:I = 0x3200000
.field private static final VALUE_COUNT:I = 0x2
.field private static final VERSION:I = 0x2
.field private static averagePosition:I
.field private static final averages:[I
.field private static numberRecorded:I
.field private static sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;
.field private static sIsCacheInitialized:Z
.field private final mListeners:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
new-array v0, v1, [I
sput-object v0, Lco/vine/android/util/video/VideoCache;->LOCK:[I
sput-boolean v1, Lco/vine/android/util/video/VideoCache;->sIsCacheInitialized:Z
const/4 v0, 0x5
new-array v0, v0, [I
sput-object v0, Lco/vine/android/util/video/VideoCache;->averages:[I
sput v1, Lco/vine/android/util/video/VideoCache;->averagePosition:I
sput v1, Lco/vine/android/util/video/VideoCache;->numberRecorded:I
new-array v0, v1, [I
sput-object v0, Lco/vine/android/util/video/VideoCache;->AVG_LOCK:[I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lco/vine/android/util/UrlResourceCache;-><init>(Landroid/content/Context;I)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;
return-void
.end method
.method public static evictExpiredEntries(Landroid/content/Context;I)V
.registers 16
invoke-static {p0}, Lco/vine/android/util/video/VideoCache;->getCacheInstance(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;
move-result-object v4
new-instance v5, Ljava/util/LinkedHashSet;
invoke-virtual {v4}, Lcom/vandalsoftware/io/DiskLruCache;->getLruEntries()Ljava/util/LinkedHashMap;
move-result-object v10
invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;
move-result-object v10
invoke-direct {v5, v10}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V
invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_15
:try_start_15
:goto_15
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_5f
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Ljava/lang/String;
const/4 v10, 0x1
invoke-virtual {v4, v8, v10}, Lcom/vandalsoftware/io/DiskLruCache;->get(Ljava/lang/String;Z)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
move-result-object v9
if-eqz v9, :cond_15
const/16 v10, 0x8
invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v3
const/4 v10, 0x1
invoke-virtual {v9, v10}, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;
move-result-object v6
const/16 v10, 0x8
new-array v2, v10, [B
const/4 v10, 0x0
const/16 v11, 0x8
invoke-virtual {v6, v2, v10, v11}, Ljava/io/InputStream;->read([BII)I
move-result v10
if-lez v10, :cond_15
invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
move-result-object v10
invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v10
invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J
move-result-wide v12
sub-long v0, v10, v12
int-to-long v10, p1
const-wide/32 v12, 0x36ee80
mul-long/2addr v10, v12
cmp-long v10, v0, v10
if-lez v10, :cond_5f
invoke-virtual {v4, v8}, Lcom/vandalsoftware/io/DiskLruCache;->remove(Ljava/lang/String;)Z
:try_end_5d
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_5d} :catch_5e
goto :goto_15
:catch_5e
move-exception v10
:cond_5f
return-void
.end method
.method protected static getCacheDir()Ljava/io/File;
.registers 2
sget-object v1, Lco/vine/android/util/video/VideoCache;->LOCK:[I
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/util/video/VideoCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;
if-eqz v0, :cond_f
sget-object v0, Lco/vine/android/util/video/VideoCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;
invoke-virtual {v0}, Lcom/vandalsoftware/io/DiskLruCache;->getDirectory()Ljava/io/File;
move-result-object v0
monitor-exit v1
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
monitor-exit v1
goto :goto_e
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
.end method
.method private static getCacheInstance(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;
.registers 8
sget-object v3, Lco/vine/android/util/video/VideoCache;->LOCK:[I
monitor-enter v3
:try_start_3
sget-boolean v2, Lco/vine/android/util/video/VideoCache;->sIsCacheInitialized:Z
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_42
if-nez v2, :cond_1b
const/4 v1, 0x0
:try_start_8
invoke-static {p0}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
if-eqz v0, :cond_1f
const-wide/32 v4, 0x9600000
const/4 v2, 0x0
invoke-static {v0, v4, v5, v2}, Lco/vine/android/util/video/VideoCache;->prepareCache(Ljava/io/File;JZ)Lcom/vandalsoftware/io/DiskLruCache;
:try_end_15
.catchall {:try_start_8 .. :try_end_15} :catchall_42
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_45
move-result-object v1
:try_start_16
:goto_16
sput-object v1, Lco/vine/android/util/video/VideoCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;
const/4 v2, 0x1
sput-boolean v2, Lco/vine/android/util/video/VideoCache;->sIsCacheInitialized:Z
:cond_1b
sget-object v2, Lco/vine/android/util/video/VideoCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;
monitor-exit v3
:try_end_1e
.catchall {:try_start_16 .. :try_end_1e} :catchall_42
return-object v2
:try_start_1f
:cond_1f
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0xe
if-ge v2, v4, :cond_35
const-string v2, "video_cache"
const/4 v4, 0x1
invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v2
const-wide/32 v4, 0x3200000
const/4 v6, 0x0
invoke-static {v2, v4, v5, v6}, Lco/vine/android/util/video/VideoCache;->prepareCache(Ljava/io/File;JZ)Lcom/vandalsoftware/io/DiskLruCache;
move-result-object v1
goto :goto_16
:cond_35
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v2
const-wide/32 v4, 0x3200000
const/4 v6, 0x0
invoke-static {v2, v4, v5, v6}, Lco/vine/android/util/video/VideoCache;->prepareCache(Ljava/io/File;JZ)Lcom/vandalsoftware/io/DiskLruCache;
:try_end_40
.catchall {:try_start_1f .. :try_end_40} :catchall_42
.catch Ljava/io/IOException; {:try_start_1f .. :try_end_40} :catch_45
move-result-object v1
goto :goto_16
:catchall_42
move-exception v2
:try_start_43
monitor-exit v3
:try_end_44
.catchall {:try_start_43 .. :try_end_44} :catchall_42
throw v2
:catch_45
move-exception v2
goto :goto_16
.end method
.method public static getCurrentAverageSpeed()I
.registers 6
sget-object v4, Lco/vine/android/util/video/VideoCache;->AVG_LOCK:[I
monitor-enter v4
const/4 v2, 0x0
:try_start_4
sget v3, Lco/vine/android/util/video/VideoCache;->numberRecorded:I
if-nez v3, :cond_d
const v3, 0x7fffffff
monitor-exit v4
:goto_c
return v3
:cond_d
sget v3, Lco/vine/android/util/video/VideoCache;->numberRecorded:I
const/4 v5, 0x5
invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I
move-result v0
const/4 v1, 0x0
:goto_15
if-ge v1, v0, :cond_1f
sget-object v3, Lco/vine/android/util/video/VideoCache;->averages:[I
aget v3, v3, v1
add-int/2addr v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_15
:cond_1f
div-int v3, v2, v0
monitor-exit v4
goto :goto_c
:catchall_23
move-exception v3
monitor-exit v4
:try_end_25
.catchall {:try_start_4 .. :try_end_25} :catchall_23
throw v3
.end method
.method public static invalidateCache()V
.registers 2
sget-object v1, Lco/vine/android/util/video/VideoCache;->LOCK:[I
monitor-enter v1
const/4 v0, 0x0
:try_start_4
sput-object v0, Lco/vine/android/util/video/VideoCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;
const/4 v0, 0x0
sput-boolean v0, Lco/vine/android/util/video/VideoCache;->sIsCacheInitialized:Z
monitor-exit v1
return-void
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_4 .. :try_end_d} :catchall_b
throw v0
.end method
.method private static prepareCache(Ljava/io/File;JZ)Lcom/vandalsoftware/io/DiskLruCache;
.registers 14
const-wide/16 v0, -0x1
:try_start_2
new-instance v5, Landroid/os/StatFs;
invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
:try_end_d
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_64
const/16 v7, 0x12
if-lt v6, v7, :cond_1b
:try_start_11
invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J
move-result-wide v6
invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J
:try_end_18
.catch Ljava/lang/NoSuchMethodError; {:try_start_11 .. :try_end_18} :catch_72
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_64
move-result-wide v8
mul-long v0, v6, v8
:cond_1b
:goto_1b
const-wide/16 v6, 0x0
cmp-long v6, v0, v6
if-gez v6, :cond_2d
:try_start_21
invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I
move-result v6
int-to-long v6, v6
invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I
:try_end_29
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_64
move-result v8
int-to-long v8, v8
mul-long v0, v6, v8
:goto_2d
:cond_2d
const-wide/16 v6, 0x0
cmp-long v6, v0, v6
if-gez v6, :cond_37
invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J
move-result-wide v0
:cond_37
const-wide/16 v6, 0x0
cmp-long v6, v0, v6
if-lez v6, :cond_70
cmp-long v6, v0, p1
if-lez v6, :cond_6b
move-wide v3, p1
:goto_42
const-string v6, "Preparing a DiskLruCache with absMax={}, available={}, maxSize={}"
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v9
invoke-static {v6, v7, v8, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
if-eqz p3, :cond_5d
new-instance v6, Ljava/io/File;
const-string v7, "video_cache"
invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
move-object p0, v6
:cond_5d
const/4 v6, 0x2
const/4 v7, 0x2
invoke-static {p0, v6, v7, v3, v4}, Lcom/vandalsoftware/io/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/vandalsoftware/io/DiskLruCache;
move-result-object v6
return-object v6
:catch_64
move-exception v2
const-string v6, "Failed to statf, but it is ok, we will get the aval size in other ways on this phone."
invoke-static {v6}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_2d
:cond_6b
const-wide/16 v6, 0xa
div-long v3, v0, v6
goto :goto_42
:cond_70
move-wide v3, p1
goto :goto_42
:catch_72
move-exception v6
goto :goto_1b
.end method
.method private static reportAverageSpeed(I)V
.registers 5
sget-object v2, Lco/vine/android/util/video/VideoCache;->AVG_LOCK:[I
monitor-enter v2
:try_start_3
const-string v1, "Latest download speed: {}"
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v1, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
sget v1, Lco/vine/android/util/video/VideoCache;->averagePosition:I
rem-int/lit8 v0, v1, 0x5
sget-object v1, Lco/vine/android/util/video/VideoCache;->averages:[I
aput p0, v1, v0
add-int/lit8 v1, v0, 0x1
rem-int/lit8 v1, v1, 0x5
sput v1, Lco/vine/android/util/video/VideoCache;->averagePosition:I
sget v1, Lco/vine/android/util/video/VideoCache;->numberRecorded:I
add-int/lit8 v1, v1, 0x1
sput v1, Lco/vine/android/util/video/VideoCache;->numberRecorded:I
monitor-exit v2
return-void
:catchall_22
move-exception v1
monitor-exit v2
:try_end_24
.catchall {:try_start_3 .. :try_end_24} :catchall_22
throw v1
.end method
.method public static resetAverageSpeed()V
.registers 2
sget-object v1, Lco/vine/android/util/video/VideoCache;->AVG_LOCK:[I
monitor-enter v1
const/4 v0, 0x0
:try_start_4
sput v0, Lco/vine/android/util/video/VideoCache;->averagePosition:I
const/4 v0, 0x0
sput v0, Lco/vine/android/util/video/VideoCache;->numberRecorded:I
monitor-exit v1
return-void
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_4 .. :try_end_d} :catchall_b
throw v0
.end method
.method public addListener(Lco/vine/android/util/video/VideoListener;)V
.registers 3
iget-object v0, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public get(JLco/vine/android/util/video/VideoKey;)Lco/vine/android/util/video/UrlVideo;
.registers 10
iget-object v4, p3, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
const/4 v5, 0x1
move-object v0, p0
move-wide v1, p1
move-object v3, p3
invoke-super/range {v0 .. v5}, Lco/vine/android/util/UrlResourceCache;->get(JLjava/lang/Object;Ljava/lang/String;Z)Lco/vine/android/util/UrlResource;
move-result-object v0
check-cast v0, Lco/vine/android/util/video/UrlVideo;
return-object v0
.end method
.method public getFile(JLco/vine/android/util/video/VideoKey;Z)Ljava/lang/String;
.registers 12
iget-object v4, p3, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
const/4 v5, 0x1
move-object v0, p0
move-wide v1, p1
move-object v3, p3
invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/video/VideoCache;->get(JLjava/lang/Object;Ljava/lang/String;Z)Lco/vine/android/util/UrlResource;
move-result-object v6
check-cast v6, Lco/vine/android/util/video/UrlVideo;
if-eqz v6, :cond_17
iget-object v0, v6, Lco/vine/android/util/video/UrlVideo;->value:Ljava/lang/Object;
check-cast v0, Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
:goto_16
return-object v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method protected bridge synthetic instantiateResource(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/UrlResource;
.registers 5
check-cast p1, Lco/vine/android/util/video/VideoKey;
check-cast p3, Ljava/io/File;
invoke-virtual {p0, p1, p2, p3}, Lco/vine/android/util/video/VideoCache;->instantiateResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/File;)Lco/vine/android/util/video/UrlVideo;
move-result-object v0
return-object v0
.end method
.method protected instantiateResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/File;)Lco/vine/android/util/video/UrlVideo;
.registers 5
new-instance v0, Lco/vine/android/util/video/UrlVideo;
invoke-direct {v0, p2, p3}, Lco/vine/android/util/video/UrlVideo;-><init>(Ljava/lang/String;Ljava/io/File;)V
return-object v0
.end method
.method protected bridge synthetic loadResource(JLjava/lang/Object;Ljava/lang/String;)Lco/vine/android/util/UrlResource;
.registers 6
check-cast p3, Lco/vine/android/util/video/VideoKey;
invoke-virtual {p0, p1, p2, p3, p4}, Lco/vine/android/util/video/VideoCache;->loadResource(JLco/vine/android/util/video/VideoKey;Ljava/lang/String;)Lco/vine/android/util/video/UrlVideo;
move-result-object v0
return-object v0
.end method
.method protected loadResource(JLco/vine/android/util/video/VideoKey;Ljava/lang/String;)Lco/vine/android/util/video/UrlVideo;
.registers 12
const/4 v3, 0x0
invoke-static {p4}, Lco/vine/android/util/Util;->md5Digest(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_8
:goto_7
return-object v3
:cond_8
const/4 v2, 0x0
sget-object v4, Lco/vine/android/util/video/VideoCache;->LOCK:[I
monitor-enter v4
:try_start_c
iget-object v5, p0, Lco/vine/android/util/video/VideoCache;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/util/video/VideoCache;->getCacheInstance(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;
move-result-object v0
if-eqz v0, :cond_3f
invoke-virtual {v0}, Lcom/vandalsoftware/io/DiskLruCache;->isClosed()Z
:try_end_17
.catchall {:try_start_c .. :try_end_17} :catchall_25
move-result v5
if-nez v5, :cond_3f
:try_start_1a
invoke-virtual {v0, v1}, Lcom/vandalsoftware/io/DiskLruCache;->get(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
:try_end_1d
.catchall {:try_start_1a .. :try_end_1d} :catchall_41
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_3b
move-result-object v2
if-nez v2, :cond_28
:try_start_20
invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
monitor-exit v4
goto :goto_7
:catchall_25
move-exception v3
monitor-exit v4
:try_end_27
.catchall {:try_start_20 .. :try_end_27} :catchall_25
throw v3
:try_start_28
:cond_28
new-instance v5, Ljava/io/File;
const/4 v6, 0x0
invoke-virtual {v2, v6}, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->getPath(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, p3, p4, v5}, Lco/vine/android/util/video/VideoCache;->instantiateResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/File;)Lco/vine/android/util/video/UrlVideo;
:try_end_35
.catchall {:try_start_28 .. :try_end_35} :catchall_41
.catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_3b
move-result-object v3
:try_start_36
invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
monitor-exit v4
goto :goto_7
:catch_3b
move-exception v5
invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
:cond_3f
monitor-exit v4
goto :goto_7
:catchall_41
move-exception v3
invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
throw v3
:try_end_46
.catchall {:try_start_36 .. :try_end_46} :catchall_25
.end method
.method protected bridge synthetic obtainResource(Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/UrlResource;
.registers 5
check-cast p1, Lco/vine/android/util/video/VideoKey;
invoke-virtual {p0, p1, p2, p3}, Lco/vine/android/util/video/VideoCache;->obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;
move-result-object v0
return-object v0
.end method
.method protected obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;
.registers 20
move-object/from16 v0, p0
iget-object v12, v0, Lco/vine/android/util/video/VideoCache;->mContext:Landroid/content/Context;
invoke-static {v12}, Lco/vine/android/util/Util;->getCacheDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v2
if-eqz v2, :cond_34
invoke-static/range {p2 .. p2}, Lco/vine/android/util/Util;->md5Digest(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-nez v5, :cond_16
const/16 v12, 0xa
invoke-static {v12}, Lco/vine/android/util/Util;->randomString(I)Ljava/lang/String;
move-result-object v5
:cond_16
new-instance v4, Ljava/io/File;
invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
const/4 v6, 0x0
:try_start_1c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
new-instance v7, Ljava/io/FileOutputStream;
invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_25
.catchall {:try_start_1c .. :try_end_25} :catchall_86
.catch Ljava/io/IOException; {:try_start_1c .. :try_end_25} :catch_8e
const/16 v12, 0x1000
:try_start_27
move-object/from16 v0, p3
invoke-static {v0, v7, v12}, Lco/vine/android/util/Util;->readFullyWriteTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
:try_end_2c
.catchall {:try_start_27 .. :try_end_2c} :catchall_8b
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_7a
move-result v1
if-nez v1, :cond_3b
const/4 v12, 0x0
invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
:goto_33
return-object v12
:cond_34
const-string v12, "cache dir is null."
invoke-static {v12}, Lcom/edisonwang/android/slog/SLog;->w(Ljava/lang/String;)V
const/4 v12, 0x0
goto :goto_33
:try_start_3b
:cond_3b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v12
sub-long/2addr v12, v8
const-wide/16 v14, 0x3e8
div-long v10, v12, v14
if-lez v1, :cond_70
const-string v12, "Download time: {}."
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
invoke-static {v12, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
div-int/lit16 v12, v1, 0x400
int-to-double v12, v12
const-wide/16 v14, 0x1
invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J
move-result-wide v14
long-to-double v14, v14
div-double/2addr v12, v14
invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J
move-result-wide v12
long-to-int v12, v12
invoke-static {v12}, Lco/vine/android/util/video/VideoCache;->reportAverageSpeed(I)V
:goto_62
invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
:try_end_65
.catchall {:try_start_3b .. :try_end_65} :catchall_8b
.catch Ljava/io/IOException; {:try_start_3b .. :try_end_65} :catch_7a
invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
new-instance v12, Lco/vine/android/util/video/UrlVideo;
move-object/from16 v0, p2
invoke-direct {v12, v0, v4}, Lco/vine/android/util/video/UrlVideo;-><init>(Ljava/lang/String;Ljava/io/File;)V
goto :goto_33
:cond_70
:try_start_70
const-string v12, "Invalid bytesLen or time: {}"
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-static {v12, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_79
.catchall {:try_start_70 .. :try_end_79} :catchall_8b
.catch Ljava/io/IOException; {:try_start_70 .. :try_end_79} :catch_7a
goto :goto_62
:catch_7a
move-exception v3
move-object v6, v7
:goto_7c
:try_start_7c
const-string v12, "Failed to download file."
invoke-static {v12, v3}, Lcom/edisonwang/android/slog/SLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_81
.catchall {:try_start_7c .. :try_end_81} :catchall_86
const/4 v12, 0x0
invoke-static {v6}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
goto :goto_33
:catchall_86
move-exception v12
:goto_87
invoke-static {v6}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
throw v12
:catchall_8b
move-exception v12
move-object v6, v7
goto :goto_87
:catch_8e
move-exception v3
goto :goto_7c
.end method
.method protected onResourceError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
.registers 5
iget-object v1, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v0, v1, -0x1
:goto_8
if-ltz v0, :cond_18
iget-object v1, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/util/video/VideoListener;
invoke-interface {v1, p0, p1, p2}, Lco/vine/android/util/video/VideoListener;->onVideoPathError(Lco/vine/android/util/video/VideoCache;Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
add-int/lit8 v0, v0, -0x1
goto :goto_8
:cond_18
return-void
.end method
.method protected bridge synthetic onResourceError(Ljava/lang/Object;Lco/vine/android/network/HttpResult;)V
.registers 3
check-cast p1, Lco/vine/android/util/video/VideoKey;
invoke-virtual {p0, p1, p2}, Lco/vine/android/util/video/VideoCache;->onResourceError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
return-void
.end method
.method protected onResourceLoaded(Ljava/util/HashMap;)V
.registers 4
iget-object v1, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v0, v1, -0x1
:goto_8
if-ltz v0, :cond_18
iget-object v1, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/util/video/VideoListener;
invoke-interface {v1, p0, p1}, Lco/vine/android/util/video/VideoListener;->onVideoPathObtained(Lco/vine/android/util/video/VideoCache;Ljava/util/HashMap;)V
add-int/lit8 v0, v0, -0x1
goto :goto_8
:cond_18
return-void
.end method
.method public peekPath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
.registers 4
invoke-super {p0, p1}, Lco/vine/android/util/UrlResourceCache;->peek(Ljava/lang/Object;)Lco/vine/android/util/UrlResource;
move-result-object v0
check-cast v0, Lco/vine/android/util/video/UrlVideo;
if-eqz v0, :cond_b
iget-object v1, v0, Lco/vine/android/util/video/UrlVideo;->url:Ljava/lang/String;
:goto_a
return-object v1
:cond_b
const/4 v1, 0x0
goto :goto_a
.end method
.method public prepopulateVideoCacheForUrl(JLco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)V
.registers 13
const/4 v6, 0x0
move-object v0, p0
move-wide v1, p1
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v6}, Lco/vine/android/util/video/VideoCache;->saveResource(JLco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;Z)Lco/vine/android/util/video/UrlVideo;
const/4 v0, 0x0
invoke-virtual {p0, p3, p4, v0}, Lco/vine/android/util/video/VideoCache;->instantiateResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/File;)Lco/vine/android/util/video/UrlVideo;
return-void
.end method
.method public removeListener(Lco/vine/android/util/video/VideoListener;)V
.registers 3
iget-object v0, p0, Lco/vine/android/util/video/VideoCache;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method protected bridge synthetic saveResource(JLjava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;Z)Lco/vine/android/util/UrlResource;
.registers 14
move-object v3, p3
check-cast v3, Lco/vine/android/util/video/VideoKey;
move-object v0, p0
move-wide v1, p1
move-object v4, p4
move-object v5, p5
move v6, p6
invoke-virtual/range {v0 .. v6}, Lco/vine/android/util/video/VideoCache;->saveResource(JLco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;Z)Lco/vine/android/util/video/UrlVideo;
move-result-object v0
return-object v0
.end method
.method protected saveResource(JLco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;Z)Lco/vine/android/util/video/UrlVideo;
.registers 31
invoke-static/range {p4 .. p4}, Lco/vine/android/util/Util;->md5Digest(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const/4 v9, 0x0
const/4 v11, 0x0
sget-object v19, Lco/vine/android/util/video/VideoCache;->LOCK:[I
monitor-enter v19
:try_start_9
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/util/video/VideoCache;->mContext:Landroid/content/Context;
move-object/from16 v18, v0
invoke-static/range {v18 .. v18}, Lco/vine/android/util/video/VideoCache;->getCacheInstance(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;
move-result-object v6
if-eqz v6, :cond_175
invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache;->isClosed()Z
:try_end_18
.catchall {:try_start_9 .. :try_end_18} :catchall_15b
move-result v18
if-nez v18, :cond_175
const/4 v15, 0x0
:try_start_1c
invoke-virtual {v6, v7}, Lcom/vandalsoftware/io/DiskLruCache;->edit(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Editor;
move-result-object v9
if-eqz v9, :cond_a6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v13
const/16 v18, 0x0
move/from16 v0, v18
invoke-virtual {v9, v0}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;
move-result-object v18
const/16 v20, 0x1000
move-object/from16 v0, p5
move-object/from16 v1, v18
move/from16 v2, v20
invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->readFullyWriteTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
move-result v5
if-lez v5, :cond_d3
const/4 v15, 0x1
:goto_3d
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v20
sub-long v20, v20, v13
const-wide/16 v22, 0x3e8
div-long v16, v20, v22
const-string v18, "Bytes {} Download time: {}."
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v20
invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v21
move-object/from16 v0, v18
move-object/from16 v1, v20
move-object/from16 v2, v21
invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
if-lez v5, :cond_84
if-eqz p6, :cond_84
div-int/lit16 v0, v5, 0x400
move/from16 v18, v0
move/from16 v0, v18
int-to-double v0, v0
move-wide/from16 v20, v0
const-wide/16 v22, 0x1
move-wide/from16 v0, v22
move-wide/from16 v2, v16
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v22
move-wide/from16 v0, v22
long-to-double v0, v0
move-wide/from16 v22, v0
div-double v20, v20, v22
invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J
move-result-wide v20
move-wide/from16 v0, v20
long-to-int v0, v0
move/from16 v18, v0
invoke-static/range {v18 .. v18}, Lco/vine/android/util/video/VideoCache;->reportAverageSpeed(I)V
:cond_84
const/16 v18, 0x8
invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v20
move-wide/from16 v0, v20
invoke-virtual {v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
const/16 v18, 0x1
move/from16 v0, v18
invoke-virtual {v9, v0}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;
move-result-object v18
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v20
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
:try_end_a6
.catchall {:try_start_1c .. :try_end_a6} :catchall_132
.catch Ljava/io/IOException; {:try_start_1c .. :try_end_a6} :catch_ed
:cond_a6
if-eqz v9, :cond_d1
if-eqz v15, :cond_d6
:try_start_aa
invoke-virtual {v9}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V
invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
new-instance v10, Ljava/io/File;
const/16 v18, 0x0
move/from16 v0, v18
invoke-virtual {v6, v7, v0}, Lcom/vandalsoftware/io/DiskLruCache;->get(Ljava/lang/String;Z)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
move-result-object v18
const/16 v20, 0x0
move-object/from16 v0, v18
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->getPath(I)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v12, Lco/vine/android/util/video/UrlVideo;
move-object/from16 v0, p4
invoke-direct {v12, v0, v10}, Lco/vine/android/util/video/UrlVideo;-><init>(Ljava/lang/String;Ljava/io/File;)V
:try_end_d0
.catchall {:try_start_aa .. :try_end_d0} :catchall_15b
.catch Ljava/io/IOException; {:try_start_aa .. :try_end_d0} :catch_eb
move-object v11, v12
:try_start_d1
:cond_d1
:goto_d1
monitor-exit v19
:try_end_d2
.catchall {:try_start_d1 .. :try_end_d2} :catchall_15b
return-object v11
:cond_d3
const/4 v15, 0x0
goto/16 :goto_3d
:cond_d6
:try_start_d6
invoke-virtual {v9}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
move-object/from16 v0, p0
move-object/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, p5
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/util/video/VideoCache;->obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;
move-result-object v11
const-string v18, "Failed to save a video to DiskLruCache"
invoke-static/range {v18 .. v18}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:try_end_ea
.catchall {:try_start_d6 .. :try_end_ea} :catchall_15b
.catch Ljava/io/IOException; {:try_start_d6 .. :try_end_ea} :catch_eb
goto :goto_d1
:catch_eb
move-exception v18
goto :goto_d1
:catch_ed
move-exception v8
const/4 v15, 0x0
if-eqz v9, :cond_d1
if-eqz v15, :cond_11b
:try_start_f3
invoke-virtual {v9}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V
invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
new-instance v10, Ljava/io/File;
const/16 v18, 0x0
move/from16 v0, v18
invoke-virtual {v6, v7, v0}, Lcom/vandalsoftware/io/DiskLruCache;->get(Ljava/lang/String;Z)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
move-result-object v18
const/16 v20, 0x0
move-object/from16 v0, v18
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->getPath(I)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v12, Lco/vine/android/util/video/UrlVideo;
move-object/from16 v0, p4
invoke-direct {v12, v0, v10}, Lco/vine/android/util/video/UrlVideo;-><init>(Ljava/lang/String;Ljava/io/File;)V
move-object v11, v12
goto :goto_d1
:cond_11b
invoke-virtual {v9}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
move-object/from16 v0, p0
move-object/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, p5
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/util/video/VideoCache;->obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;
move-result-object v11
const-string v18, "Failed to save a video to DiskLruCache"
invoke-static/range {v18 .. v18}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:try_end_12f
.catchall {:try_start_f3 .. :try_end_12f} :catchall_15b
.catch Ljava/io/IOException; {:try_start_f3 .. :try_end_12f} :catch_130
goto :goto_d1
:catch_130
move-exception v18
goto :goto_d1
:catchall_132
move-exception v18
if-eqz v9, :cond_15a
if-eqz v15, :cond_15e
:try_start_137
invoke-virtual {v9}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V
invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
new-instance v10, Ljava/io/File;
const/16 v20, 0x0
move/from16 v0, v20
invoke-virtual {v6, v7, v0}, Lcom/vandalsoftware/io/DiskLruCache;->get(Ljava/lang/String;Z)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
move-result-object v20
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->getPath(I)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v20
invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v12, Lco/vine/android/util/video/UrlVideo;
move-object/from16 v0, p4
invoke-direct {v12, v0, v10}, Lco/vine/android/util/video/UrlVideo;-><init>(Ljava/lang/String;Ljava/io/File;)V
:try_end_159
.catchall {:try_start_137 .. :try_end_159} :catchall_15b
.catch Ljava/io/IOException; {:try_start_137 .. :try_end_159} :catch_173
move-object v11, v12
:goto_15a
:cond_15a
:try_start_15a
throw v18
:catchall_15b
move-exception v18
monitor-exit v19
:try_end_15d
.catchall {:try_start_15a .. :try_end_15d} :catchall_15b
throw v18
:cond_15e
:try_start_15e
invoke-virtual {v9}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
move-object/from16 v0, p0
move-object/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, p5
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/util/video/VideoCache;->obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;
move-result-object v11
const-string v20, "Failed to save a video to DiskLruCache"
invoke-static/range {v20 .. v20}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:try_end_172
.catchall {:try_start_15e .. :try_end_172} :catchall_15b
.catch Ljava/io/IOException; {:try_start_15e .. :try_end_172} :catch_173
goto :goto_15a
:catch_173
move-exception v20
goto :goto_15a
:try_start_175
:cond_175
move-object/from16 v0, p0
move-object/from16 v1, p3
move-object/from16 v2, p4
move-object/from16 v3, p5
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/util/video/VideoCache;->obtainResource(Lco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/video/UrlVideo;
move-result-object v11
const-string v18, "Videos DiskLruCache could not be opened"
invoke-static/range {v18 .. v18}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:try_end_186
.catchall {:try_start_175 .. :try_end_186} :catchall_15b
goto/16 :goto_d1
.end method