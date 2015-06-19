.class public final Lcom/facebook/internal/FileLruCache;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FileLruCache$StreamCloseCallback;,
        Lcom/facebook/internal/FileLruCache$ModifiedFile;,
        Lcom/facebook/internal/FileLruCache$Limits;,
        Lcom/facebook/internal/FileLruCache$CopyingInputStream;,
        Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;,
        Lcom/facebook/internal/FileLruCache$StreamHeader;,
        Lcom/facebook/internal/FileLruCache$BufferFile;
    }
.end annotation


# static fields
.field private static final HEADER_CACHEKEY_KEY:Ljava/lang/String; = "key"

.field private static final HEADER_CACHE_CONTENT_TAG_KEY:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String;

.field private static final bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final directory:Ljava/io/File;

.field private isTrimPending:Z

.field private final limits:Lcom/facebook/internal/FileLruCache$Limits;

.field private final lock:Ljava/lang/Object;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/internal/FileLruCache$BufferFile;->deleteAll(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FileLruCache;->renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/FileLruCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/internal/FileLruCache;->trim()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    sget-object v0, Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private postTrim()V
    .registers 4

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/facebook/internal/FileLruCache$2;

    invoke-direct {v2, p0}, Lcom/facebook/internal/FileLruCache$2;-><init>(Lcom/facebook/internal/FileLruCache;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_14
    invoke-direct {p0}, Lcom/facebook/internal/FileLruCache;->postTrim()V

    return-void
.end method

.method private trim()V
    .registers 16

    :try_start_0
    sget-object v10, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v11, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    const-string v12, "trim started"

    invoke-static {v10, v11, v12}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/PriorityQueue;

    invoke-direct {v4}, Ljava/util/PriorityQueue;-><init>()V

    const-wide/16 v8, 0x0

    const-wide/16 v1, 0x0

    iget-object v10, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v6, :cond_65

    aget-object v3, v0, v5

    new-instance v7, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    invoke-direct {v7, v3}, Lcom/facebook/internal/FileLruCache$ModifiedFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    sget-object v10, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v11, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  trim considering time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v1, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_65
    :goto_65
    iget-object v10, p0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v10}, Lcom/facebook/internal/FileLruCache$Limits;->getByteCount()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gtz v10, :cond_7b

    iget-object v10, p0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v10}, Lcom/facebook/internal/FileLruCache$Limits;->getFileCount()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v1, v10

    if-lez v10, :cond_bd

    :cond_7b
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    invoke-virtual {v10}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v3

    sget-object v10, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v11, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  trim removing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v1, v10

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_ae
    .catchall {:try_start_0 .. :try_end_ae} :catchall_af

    goto :goto_65

    :catchall_af
    move-exception v10

    iget-object v11, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v11

    const/4 v12, 0x0

    :try_start_b4
    iput-boolean v12, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    iget-object v12, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v11
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_cd

    throw v10

    :cond_bd
    iget-object v11, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v11

    const/4 v10, 0x0

    :try_start_c1
    iput-boolean v10, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    iget-object v10, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v11

    return-void

    :catchall_ca
    move-exception v10

    monitor-exit v11
    :try_end_cc
    .catchall {:try_start_c1 .. :try_end_cc} :catchall_ca

    throw v10

    :catchall_cd
    move-exception v10

    :try_start_ce
    monitor-exit v11
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw v10
.end method


# virtual methods
.method public clearForTest()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v9, 0x0

    :try_start_e
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_2a

    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v12, 0x2000

    invoke-direct {v3, v10, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v11, 0x0

    :try_start_1b
    invoke-static {v3}, Lcom/facebook/internal/FileLruCache$StreamHeader;->readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_a0

    move-result-object v7

    if-nez v7, :cond_2d

    const/4 v12, 0x0

    if-nez v11, :cond_27

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_27
    move-object v9, v10

    move-object v3, v12

    :goto_29
    return-object v3

    :catch_2a
    move-exception v4

    const/4 v3, 0x0

    goto :goto_29

    :cond_2d
    :try_start_2d
    const-string v12, "key"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3d

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_a0

    move-result v12

    if-nez v12, :cond_46

    :cond_3d
    const/4 v12, 0x0

    if-nez v11, :cond_43

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_43
    move-object v9, v10

    move-object v3, v12

    goto :goto_29

    :cond_46
    :try_start_46
    const-string v12, "tag"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez p2, :cond_51

    if-nez v8, :cond_5b

    :cond_51
    if-eqz p2, :cond_64

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_46 .. :try_end_58} :catchall_a0

    move-result v12

    if-nez v12, :cond_64

    :cond_5b
    const/4 v12, 0x0

    if-nez v11, :cond_61

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_61
    move-object v9, v10

    move-object v3, v12

    goto :goto_29

    :cond_64
    :try_start_64
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sget-object v12, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v13, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting lastModified to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_98
    .catchall {:try_start_64 .. :try_end_98} :catchall_a0

    const/4 v11, 0x1

    if-nez v11, :cond_9e

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_9e
    move-object v9, v10

    goto :goto_29

    :catchall_a0
    move-exception v12

    if-nez v11, :cond_a6

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_a6
    throw v12
.end method

.method public interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Lcom/facebook/internal/FileLruCache$CopyingInputStream;

    invoke-direct {v1, p2, v0}, Lcom/facebook/internal/FileLruCache$CopyingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x5

    iget-object v8, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v8}, Lcom/facebook/internal/FileLruCache$BufferFile;->newFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-nez v8, :cond_2d

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not create file at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2d
    const/4 v4, 0x0

    :try_start_2e
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_33} :catch_64

    new-instance v6, Lcom/facebook/internal/FileLruCache$1;

    invoke-direct {v6, p0, p1, v0}, Lcom/facebook/internal/FileLruCache$1;-><init>(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V

    new-instance v2, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;

    invoke-direct {v2, v4, v6}, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x2000

    invoke-direct {v1, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/4 v7, 0x0

    :try_start_45
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "key"

    invoke-virtual {v5, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5a

    const-string v8, "tag"

    invoke-virtual {v5, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5a
    invoke-static {v1, v5}, Lcom/facebook/internal/FileLruCache$StreamHeader;->writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_af
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_5d} :catch_89

    const/4 v7, 0x1

    if-nez v7, :cond_63

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_63
    return-object v1

    :catch_64
    move-exception v3

    sget-object v8, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v9, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error creating buffer output stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v12, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_89
    move-exception v3

    :try_start_8a
    sget-object v8, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v9, 0x5

    sget-object v10, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error creating JSON header for cache file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_af
    .catchall {:try_start_8a .. :try_end_af} :catchall_af

    :catchall_af
    move-exception v8

    if-nez v7, :cond_b5

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_b5
    throw v8
.end method

.method sizeInBytesForTest()J
    .registers 10

    iget-object v8, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v8

    :goto_3
    :try_start_3
    iget-boolean v7, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_27

    if-eqz v7, :cond_f

    :try_start_7
    iget-object v7, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_27
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_3

    :catch_d
    move-exception v7

    goto :goto_3

    :cond_f
    :try_start_f
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_27

    iget-object v7, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const-wide/16 v5, 0x0

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v4, :cond_2a

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :catchall_27
    move-exception v7

    :try_start_28
    monitor-exit v8
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v7

    :cond_2a
    return-wide v5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{FileLruCache: tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
