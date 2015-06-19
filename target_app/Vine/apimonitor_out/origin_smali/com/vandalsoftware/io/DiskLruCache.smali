.class public final Lcom/vandalsoftware/io/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vandalsoftware/io/DiskLruCache$Entry;,
        Lcom/vandalsoftware/io/DiskLruCache$Editor;,
        Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field private static final CLEAN:I = 0x1

.field private static final DIRTY:I = 0x2

.field private static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field private static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field private static final MAGIC:J = -0x7eb5b3baf2f5e5f6L

.field private static final READ:I = 0x4

.field private static final REDUNDANT_OP_COMPACT_THRESHOLD:I = 0x7d0

.field private static final REMOVE:I = 0x3

.field private static final VERSION:I = 0x2


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalStream:Ljava/io/DataOutputStream;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vandalsoftware/io/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/vandalsoftware/io/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/vandalsoftware/io/DiskLruCache$1;-><init>(Lcom/vandalsoftware/io/DiskLruCache;)V

    iput-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    iput-object p1, p0, Lcom/vandalsoftware/io/DiskLruCache;->directory:Ljava/io/File;

    iput p2, p0, Lcom/vandalsoftware/io/DiskLruCache;->appVersion:I

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iput p3, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    iput-wide p4, p0, Lcom/vandalsoftware/io/DiskLruCache;->maxSize:J

    return-void
.end method

.method static synthetic access$000(Lcom/vandalsoftware/io/DiskLruCache;)Ljava/io/DataOutputStream;
    .registers 2

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vandalsoftware/io/DiskLruCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1300(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/vandalsoftware/io/DiskLruCache;->completeEdit(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vandalsoftware/io/DiskLruCache;)I
    .registers 2

    iget v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/vandalsoftware/io/DiskLruCache;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vandalsoftware/io/DiskLruCache;)Z
    .registers 2

    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/vandalsoftware/io/DiskLruCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method private checkNotClosed()V
    .registers 3

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Editor;->entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->access$1100(Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Entry;

    move-result-object v2

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_14

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_14
    if-eqz p2, :cond_4a

    :try_start_16
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$500(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_4a

    const/4 v3, 0x0

    :goto_1d
    iget v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_4a

    invoke-virtual {v2, v3}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_47

    invoke-virtual {p1}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "edit didn\'t create file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    iget v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_7f

    invoke-virtual {v2, v3}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_7b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_78

    invoke-virtual {v2, v3}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vandalsoftware/io/IoUtils;->renameFileOrThrow(Ljava/io/File;Ljava/io/File;)V

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    iget-wide v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    :cond_78
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_7b
    invoke-static {v1}, Lcom/vandalsoftware/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)Z

    goto :goto_78

    :cond_7f
    iget v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    const/4 v8, 0x0

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v2, v8}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$602(Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$500(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_b0

    const/4 v8, 0x1

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v8}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$502(Lcom/vandalsoftware/io/DiskLruCache$Entry;Z)Z

    iget-object v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    invoke-direct {p0, v8, v2}, Lcom/vandalsoftware/io/DiskLruCache;->writeCleanEntry(Ljava/io/DataOutput;Lcom/vandalsoftware/io/DiskLruCache$Entry;)V

    :goto_99
    iget-wide v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/vandalsoftware/io/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_a7

    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_ae

    :cond_a7
    iget-object v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Lcom/vandalsoftware/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_ae
    .catchall {:try_start_16 .. :try_end_ae} :catchall_11

    :cond_ae
    monitor-exit p0

    return-void

    :cond_b0
    :try_start_b0
    iget-object v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$900(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    const/4 v9, 0x3

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$900(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/vandalsoftware/io/DiskLruCache;->writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_b0 .. :try_end_c3} :catchall_11

    goto :goto_99
.end method

.method private static deleteIfExists(Ljava/io/File;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private journalRebuildRequired()Z
    .registers 3

    iget v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/vandalsoftware/io/DiskLruCache;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    if-gtz p2, :cond_18

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    new-instance v0, Lcom/vandalsoftware/io/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vandalsoftware/io/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7a

    :try_start_29
    invoke-direct {v0}, Lcom/vandalsoftware/io/DiskLruCache;->readJournal()I

    move-result v7

    invoke-direct {v0}, Lcom/vandalsoftware/io/DiskLruCache;->processJournal()V

    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, v0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    iget-object v1, v0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    sub-int v1, v7, v1

    iput v1, v0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4e} :catch_50

    move-object v6, v0

    :goto_4f
    return-object v6

    :catch_50
    move-exception v8

    const-string v1, "DiskLruCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/vandalsoftware/io/DiskLruCache;->delete()V

    :cond_7a
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_86

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_94

    :cond_86
    new-instance v0, Lcom/vandalsoftware/io/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vandalsoftware/io/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lcom/vandalsoftware/io/DiskLruCache;->rebuildJournal()V

    move-object v6, v0

    goto :goto_4f

    :cond_94
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "directory not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private processJournal()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/vandalsoftware/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)Z

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_34

    const/4 v2, 0x0

    :goto_22
    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_f

    iget-wide v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_34
    const/4 v3, 0x0

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0, v3}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$602(Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    const/4 v2, 0x0

    :goto_39
    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_4e

    invoke-virtual {v0, v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/vandalsoftware/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)Z

    invoke-virtual {v0, v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/vandalsoftware/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_4e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_52
    return-void
.end method

.method private readJournal()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_11
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const-wide v9, -0x7eb5b3baf2f5e5f6L

    cmp-long v9, v9, v4

    if-nez v9, :cond_3d

    const/4 v9, 0x2

    if-ne v9, v7, :cond_3d

    iget v9, p0, Lcom/vandalsoftware/io/DiskLruCache;->appVersion:I

    if-ne v9, v3, :cond_3d

    iget v9, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ne v9, v6, :cond_3d

    const/16 v9, 0xa

    if-eq v0, v9, :cond_7f

    :cond_3d
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected journal header: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_7a
    .catchall {:try_start_11 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v9

    invoke-static {v8}, Lcom/vandalsoftware/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    :cond_7f
    const/4 v2, 0x0

    :goto_80
    :try_start_80
    invoke-direct {p0, v8}, Lcom/vandalsoftware/io/DiskLruCache;->readJournalLine(Ljava/io/DataInput;)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_7a
    .catch Ljava/io/EOFException; {:try_start_80 .. :try_end_83} :catch_86

    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    :catch_86
    move-exception v1

    invoke-static {v8}, Lcom/vandalsoftware/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v2
.end method

.method private readJournalLine(Ljava/io/DataInput;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v7, 0xa

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1c

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v5

    if-ne v5, v7, :cond_1c

    iget-object v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    if-nez v0, :cond_30

    new-instance v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    invoke-direct {v0, p0, v2, v8}, Lcom/vandalsoftware/io/DiskLruCache$Entry;-><init>(Lcom/vandalsoftware/io/DiskLruCache;Ljava/lang/String;Lcom/vandalsoftware/io/DiskLruCache$1;)V

    iget-object v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    if-ne v3, v10, :cond_7d

    iget v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    new-array v4, v5, [J

    const/4 v1, 0x0

    :goto_37
    iget v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v1, v5, :cond_44

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v5

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_44
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v5

    if-eq v5, v7, :cond_6d

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6d
    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v10}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$502(Lcom/vandalsoftware/io/DiskLruCache$Entry;Z)Z

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0, v8}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$602(Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v5

    iget v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    invoke-static {v4, v9, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1b

    :cond_7d
    const/4 v5, 0x2

    if-ne v3, v5, :cond_8f

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v5

    if-ne v5, v7, :cond_8f

    new-instance v5, Lcom/vandalsoftware/io/DiskLruCache$Editor;

    invoke-direct {v5, p0, v0, v8}, Lcom/vandalsoftware/io/DiskLruCache$Editor;-><init>(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$1;)V

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0, v5}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$602(Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    goto :goto_1b

    :cond_8f
    const/4 v5, 0x4

    if-ne v3, v5, :cond_98

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v5

    if-eq v5, v7, :cond_1b

    :cond_98
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private declared-synchronized rebuildJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :cond_a
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_60

    const-wide v3, -0x7eb5b3baf2f5e5f6L

    :try_start_20
    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->appVersion:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_63

    const/4 v3, 0x2

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$900(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/vandalsoftware/io/DiskLruCache;->writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_20 .. :try_end_5a} :catchall_5b

    goto :goto_40

    :catchall_5b
    move-exception v3

    :try_start_5c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    throw v3
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_63
    :try_start_63
    invoke-direct {p0, v2, v0}, Lcom/vandalsoftware/io/DiskLruCache;->writeCleanEntry(Ljava/io/DataOutput;Lcom/vandalsoftware/io/DiskLruCache$Entry;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_5b

    goto :goto_40

    :cond_67
    :try_start_67
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/vandalsoftware/io/IoUtils;->renameFileOrThrow(Ljava/io/File;Ljava/io/File;)V

    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    iput v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I
    :try_end_88
    .catchall {:try_start_67 .. :try_end_88} :catchall_60

    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v1, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_22

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/vandalsoftware/io/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_22
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .registers 5

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    return-void
.end method

.method private writeCleanEntry(Ljava/io/DataOutput;Lcom/vandalsoftware/io/DiskLruCache$Entry;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {p2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$900(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {p2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v0

    array-length v4, v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v4, :cond_1b

    aget-wide v2, v0, v1

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1b
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method private writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-interface {p1, p3}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-nez v2, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_30

    goto :goto_16

    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->trimToSize()V

    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_30

    goto :goto_5
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/vandalsoftware/io/DiskLruCache;->close()V

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/vandalsoftware/io/IoUtils;->deleteContents(Ljava/io/File;)V

    :cond_10
    return-void
.end method

.method public declared-synchronized edit(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Editor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/vandalsoftware/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    if-nez v1, :cond_33

    new-instance v1, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;-><init>(Lcom/vandalsoftware/io/DiskLruCache;Ljava/lang/String;Lcom/vandalsoftware/io/DiskLruCache$1;)V

    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    new-instance v0, Lcom/vandalsoftware/io/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;-><init>(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$1;)V

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$602(Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, p1}, Lcom/vandalsoftware/io/DiskLruCache;->writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_3a

    :goto_31
    monitor-exit p0

    return-object v0

    :cond_33
    :try_start_33
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3a

    move-result-object v2

    if-eqz v2, :cond_1d

    goto :goto_31

    :catchall_3a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->trimToSize()V

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/vandalsoftware/io/DiskLruCache;->get(Ljava/lang/String;Z)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;Z)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/vandalsoftware/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vandalsoftware/io/DiskLruCache$Entry;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_5f

    if-nez v1, :cond_14

    :cond_12
    :goto_12
    monitor-exit p0

    return-object v6

    :cond_14
    :try_start_14
    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$500(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget v7, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    new-array v4, v7, [Ljava/io/InputStream;

    iget v7, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    new-array v5, v7, [Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_5f

    const/4 v3, 0x0

    :goto_23
    :try_start_23
    iget v7, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v3, v7, :cond_3d

    invoke-virtual {v1, v3}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v7, v4, v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_38} :catch_3b

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :catch_3b
    move-exception v0

    goto :goto_12

    :cond_3d
    if-nez p2, :cond_58

    :try_start_3f
    iget v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    iget-object v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7, p1}, Lcom/vandalsoftware/io/DiskLruCache;->writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v6

    if-eqz v6, :cond_58

    iget-object v6, p0, Lcom/vandalsoftware/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lcom/vandalsoftware/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_58
    new-instance v6, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v5, v7}, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;-><init>([Ljava/io/InputStream;[Ljava/lang/String;Lcom/vandalsoftware/io/DiskLruCache$1;)V
    :try_end_5e
    .catchall {:try_start_3f .. :try_end_5e} :catchall_5f

    goto :goto_12

    :catchall_5f
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public getLruEntries()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vandalsoftware/io/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public maxSize()J
    .registers 3

    iget-wide v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/vandalsoftware/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vandalsoftware/io/DiskLruCache$Entry;

    if-eqz v0, :cond_17

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_5c

    move-result-object v3

    if-eqz v3, :cond_1a

    :cond_17
    const/4 v3, 0x0

    :goto_18
    monitor-exit p0

    return v3

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    :try_start_1b
    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3c

    invoke-virtual {v0, v2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/vandalsoftware/io/IoUtils;->deleteFileOrThrow(Ljava/io/File;)V

    iget-wide v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3c
    iget v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->redundantOpCount:I

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, p1}, Lcom/vandalsoftware/io/DiskLruCache;->writeEntryKey(Ljava/io/DataOutput;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/vandalsoftware/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/vandalsoftware/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_5a
    .catchall {:try_start_1b .. :try_end_5a} :catchall_5c

    :cond_5a
    const/4 v3, 0x1

    goto :goto_18

    :catchall_5c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized size()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/vandalsoftware/io/DiskLruCache;->size:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
