.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "Tailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_BUFSIZE:I = 0x1000

.field private static final DEFAULT_DELAY_MILLIS:I = 0x3e8

.field private static final RAF_MODE:Ljava/lang/String; = "r"


# instance fields
.field private final delayMillis:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .registers 5

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .registers 13

    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)V
    .registers 15

    const/16 v7, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    iput-wide p3, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    iput-boolean p5, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    new-array v0, p7, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {p2, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    iput-boolean p6, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    return-void
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .registers 5

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .registers 11

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;
    .registers 14

    new-instance v0, Lorg/apache/commons/io/input/Tailer;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)Lorg/apache/commons/io/input/Tailer;
    .registers 13

    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .registers 16

    new-instance v0, Lorg/apache/commons/io/input/Tailer;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method private readLines(Ljava/io/RandomAccessFile;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0x1

    const/4 v11, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    move-wide v5, v3

    const/4 v8, 0x0

    :goto_e
    iget-boolean v9, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v9, :cond_5f

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_5f

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v2, :cond_5a

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    aget-byte v0, v9, v1

    packed-switch v0, :pswitch_data_64

    :pswitch_25
    if-eqz v8, :cond_38

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    int-to-long v9, v1

    add-long/2addr v9, v3

    add-long v5, v9, v12

    :cond_38
    int-to-char v9, v0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :pswitch_3f
    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    int-to-long v9, v1

    add-long/2addr v9, v3

    add-long v5, v9, v12

    goto :goto_3c

    :pswitch_51
    if-eqz v8, :cond_58

    const/16 v9, 0xd

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_58
    const/4 v8, 0x1

    goto :goto_3c

    :cond_5a
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    goto :goto_e

    :cond_5f
    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    return-wide v5

    nop

    :pswitch_data_64
    .packed-switch 0xa
        :pswitch_3f
        :pswitch_25
        :pswitch_25
        :pswitch_51
    .end packed-switch
.end method


# virtual methods
.method public getDelay()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    return-object v0
.end method

.method public run()V
    .registers 14

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v6, 0x0

    move-object v9, v8

    :goto_6
    :try_start_6
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_8} :catch_b5

    if-eqz v11, :cond_3f

    if-nez v9, :cond_3f

    :try_start_c
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_15} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_b5

    :goto_15
    if-nez v8, :cond_29

    :try_start_17
    iget-wide v11, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_c6
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_c8

    move-object v9, v8

    goto :goto_6

    :catch_1e
    move-exception v0

    :try_start_1f
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_b5

    move-object v8, v9

    goto :goto_15

    :catch_26
    move-exception v11

    move-object v9, v8

    goto :goto_6

    :cond_29
    :try_start_29
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v11, :cond_3c

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    :goto_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_c6
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3a} :catch_c8

    move-object v9, v8

    goto :goto_6

    :cond_3c
    const-wide/16 v6, 0x0

    goto :goto_33

    :cond_3f
    :goto_3f
    :try_start_3f
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v11, :cond_b0

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v11, v1, v2}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v5

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v11, v3, v6

    if-gez v11, :cond_72

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_58} :catch_b5

    move-object v10, v9

    :try_start_59
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_62} :catch_69
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_b5

    const-wide/16 v6, 0x0

    :try_start_64
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_c6
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_67} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_c8

    move-object v9, v8

    goto :goto_3f

    :catch_69
    move-exception v0

    move-object v8, v9

    :goto_6b
    :try_start_6b
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_c6
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_70} :catch_c8

    move-object v9, v8

    goto :goto_3f

    :cond_72
    cmp-long v11, v3, v6

    if-lez v11, :cond_a0

    :try_start_76
    invoke-direct {p0, v9}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :cond_7e
    :goto_7e
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v11, :cond_85

    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_85
    .catchall {:try_start_76 .. :try_end_85} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_85} :catch_b5

    :cond_85
    :try_start_85
    iget-wide v11, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_c0
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_8a} :catch_ca
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8a} :catch_b5

    :goto_8a
    :try_start_8a
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v11, :cond_ce

    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v11, :cond_ce

    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_8a .. :try_end_9b} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9b} :catch_b5

    :try_start_9b
    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_c6
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_c8

    :goto_9e
    move-object v9, v8

    goto :goto_3f

    :cond_a0
    if-eqz v5, :cond_7e

    const-wide/16 v6, 0x0

    :try_start_a4
    invoke-virtual {v9, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {p0, v9}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_ae
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ae} :catch_b5

    move-result-wide v1

    goto :goto_7e

    :cond_b0
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v8, v9

    :goto_b4
    return-void

    :catch_b5
    move-exception v0

    move-object v8, v9

    :goto_b7
    :try_start_b7
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_c6

    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_b4

    :catchall_c0
    move-exception v11

    move-object v8, v9

    :goto_c2
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v11

    :catchall_c6
    move-exception v11

    goto :goto_c2

    :catch_c8
    move-exception v0

    goto :goto_b7

    :catch_ca
    move-exception v11

    goto :goto_8a

    :catch_cc
    move-exception v0

    goto :goto_6b

    :cond_ce
    move-object v8, v9

    goto :goto_9e
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    return-void
.end method
