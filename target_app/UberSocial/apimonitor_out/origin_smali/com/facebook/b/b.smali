.class public final Lcom/facebook/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = "key"

.field private static final c:Ljava/lang/String; = "tag"

.field private static final d:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Lcom/facebook/b/f;

.field private final g:Ljava/io/File;

.field private h:Z

.field private final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/b/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/b/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/f;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/b/b;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/b/b;->f:Lcom/facebook/b/f;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/b/b;->g:Ljava/io/File;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/b/b;->i:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/b/b;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/facebook/b/b;->g:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/b/c;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/b/b;->e()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/b/b;Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/b/b;->a(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/b/b;->g:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/b/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_14
    invoke-direct {p0}, Lcom/facebook/b/b;->d()V

    return-void
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    sget-object v0, Lcom/facebook/b/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private d()V
    .registers 4

    iget-object v1, p0, Lcom/facebook/b/b;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/facebook/b/b;->h:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/b/b;->h:Z

    invoke-static {}, Lcom/facebook/bm;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/facebook/b/b$2;

    invoke-direct {v2, p0}, Lcom/facebook/b/b$2;-><init>(Lcom/facebook/b/b;)V

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

.method private e()V
    .registers 22

    :try_start_0
    sget-object v1, Lcom/facebook/af;->d:Lcom/facebook/af;

    sget-object v2, Lcom/facebook/b/b;->a:Ljava/lang/String;

    const-string v3, "trim started"

    invoke-static {v1, v2, v3}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/PriorityQueue;

    invoke-direct {v8}, Ljava/util/PriorityQueue;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/b/b;->g:Ljava/io/File;

    invoke-static {}, Lcom/facebook/b/c;->a()Ljava/io/FilenameFilter;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    const/4 v1, 0x0

    move/from16 v16, v1

    move-wide/from16 v17, v2

    move-wide/from16 v1, v17

    move-wide/from16 v19, v4

    move-wide/from16 v3, v19

    move/from16 v5, v16

    :goto_2c
    if-ge v5, v10, :cond_fb

    aget-object v6, v9, v5

    new-instance v7, Lcom/facebook/b/g;

    invoke-direct {v7, v6}, Lcom/facebook/b/g;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/facebook/af;->d:Lcom/facebook/af;

    sget-object v12, Lcom/facebook/b/b;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  trim considering time="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/facebook/b/g;->b()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " name="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/facebook/b/g;->a()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v6, v3

    const-wide/16 v3, 0x1

    add-long v2, v1, v3

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-wide/from16 v16, v2

    move-wide/from16 v1, v16

    move-wide v3, v6

    goto :goto_2c

    :goto_7e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/b/b;->f:Lcom/facebook/b/f;

    invoke-virtual {v1}, Lcom/facebook/b/f;->a()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gtz v1, :cond_98

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/b/b;->f:Lcom/facebook/b/f;

    invoke-virtual {v1}, Lcom/facebook/b/f;->b()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-lez v1, :cond_ce

    :cond_98
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/b/g;

    invoke-virtual {v1}, Lcom/facebook/b/g;->a()Ljava/io/File;

    move-result-object v6

    sget-object v1, Lcom/facebook/af;->d:Lcom/facebook/af;

    sget-object v7, Lcom/facebook/b/b;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  trim removing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v7, v9}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    sub-long/2addr v4, v9

    const-wide/16 v9, 0x1

    sub-long v1, v2, v9

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_cc
    .catchall {:try_start_0 .. :try_end_cc} :catchall_e4

    move-wide v2, v1

    goto :goto_7e

    :cond_ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b/b;->i:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_d4
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/facebook/b/b;->h:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/b/b;->i:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :catchall_e1
    move-exception v1

    monitor-exit v2
    :try_end_e3
    .catchall {:try_start_d4 .. :try_end_e3} :catchall_e1

    throw v1

    :catchall_e4
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b/b;->i:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_eb
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/facebook/b/b;->h:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/b/b;->i:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_eb .. :try_end_f7} :catchall_f8

    throw v1

    :catchall_f8
    move-exception v1

    :try_start_f9
    monitor-exit v2
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    throw v1

    :cond_fb
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v4, v18

    move-wide/from16 v2, v16

    goto/16 :goto_7e
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/facebook/b/b;->b(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Lcom/facebook/b/e;

    invoke-direct {v1, p2, v0}, Lcom/facebook/b/e;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 11

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/b/b;->g:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/b/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_c
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_8a

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_18
    invoke-static {v1}, Lcom/facebook/b/i;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_85

    move-result-object v3

    if-nez v3, :cond_22

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :goto_21
    return-object v0

    :cond_22
    :try_start_22
    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_85

    move-result v4

    if-nez v4, :cond_34

    :cond_30
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_21

    :cond_34
    :try_start_34
    const-string v4, "tag"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_3f

    if-nez v3, :cond_47

    :cond_3f
    if-eqz p2, :cond_4b

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_85

    move-result v3

    if-nez v3, :cond_4b

    :cond_47
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_21

    :cond_4b
    :try_start_4b
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-object v0, Lcom/facebook/af;->d:Lcom/facebook/af;

    sget-object v5, Lcom/facebook/b/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting lastModified to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_83
    .catchall {:try_start_4b .. :try_end_83} :catchall_85

    move-object v0, v1

    goto :goto_21

    :catchall_85
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v0

    :catch_8a
    move-exception v1

    goto :goto_21
.end method

.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/b/b;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method b()J
    .registers 8

    iget-object v1, p0, Lcom/facebook/b/b;->i:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget-boolean v0, p0, Lcom/facebook/b/b;->h:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_26

    if-eqz v0, :cond_f

    :try_start_7
    iget-object v0, p0, Lcom/facebook/b/b;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_26
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_3

    :catch_d
    move-exception v0

    goto :goto_3

    :cond_f
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_26

    iget-object v0, p0, Lcom/facebook/b/b;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const-wide/16 v1, 0x0

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v4, :cond_29

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    return-wide v1
.end method

.method b(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 10

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/facebook/b/b;->g:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/b/c;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create file at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    :try_start_2d
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_32} :catch_5c

    new-instance v2, Lcom/facebook/b/b$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/facebook/b/b$1;-><init>(Lcom/facebook/b/b;Ljava/lang/String;Ljava/io/File;)V

    new-instance v0, Lcom/facebook/b/d;

    invoke-direct {v0, v1, v2}, Lcom/facebook/b/d;-><init>(Ljava/io/OutputStream;Lcom/facebook/b/h;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "tag"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_58
    invoke-static {v1, v0}, Lcom/facebook/b/i;->a(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_a7
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_5b} :catch_81

    return-object v1

    :catch_5c
    move-exception v0

    sget-object v1, Lcom/facebook/af;->d:Lcom/facebook/af;

    sget-object v2, Lcom/facebook/b/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating buffer output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v2, v3}, Lcom/facebook/b/j;->a(Lcom/facebook/af;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_81
    move-exception v0

    :try_start_82
    sget-object v2, Lcom/facebook/af;->d:Lcom/facebook/af;

    const/4 v3, 0x5

    sget-object v4, Lcom/facebook/b/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating JSON header for cache file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/b/j;->a(Lcom/facebook/af;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a7
    .catchall {:try_start_82 .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{FileLruCache: tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/b;->g:Ljava/io/File;

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
