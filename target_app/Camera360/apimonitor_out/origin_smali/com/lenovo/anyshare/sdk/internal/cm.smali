.class public Lcom/lenovo/anyshare/sdk/internal/cm;
.super Ljava/lang/Object;
.source "QuietUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/cm$4;,
        Lcom/lenovo/anyshare/sdk/internal/cm$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/anyshare/sdk/internal/bc;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cm$1;

    invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/cm$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/cm;)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->e:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bc;

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    const-string/jumbo v2, "share_params"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bd;->b(Landroid/content/Context;)Lcom/lenovo/anyshare/sdk/internal/bd$a;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v2, 0x0

    :goto_7
    return-object v2

    :cond_8
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;

    const-string/jumbo v3, ".tmp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1b
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "application.apk"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    move-object v0, p1

    goto :goto_8
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    move-object v0, p1

    goto :goto_8
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_10
    return-object p1

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_14} :catch_16

    move-result-wide v2

    goto :goto_c

    :catch_16
    move-exception v0

    goto :goto_10
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    move-object v0, p1

    goto :goto_8
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V
    .registers 11

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, p2, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput p5, v0, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p3, p4, p6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "QU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleEvent("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    if-nez v3, :cond_3c

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_6e

    iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_3b

    const-string/jumbo v5, "QU"

    const-string/jumbo v6, "network connected!"

    invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/cm;->b(Landroid/content/Context;)Z

    move-result v2

    iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/cm;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v2, :cond_65

    if-eqz v1, :cond_3b

    :cond_65
    new-instance v5, Lcom/lenovo/anyshare/sdk/internal/cm$2;

    invoke-direct {v5, p0, v2}, Lcom/lenovo/anyshare/sdk/internal/cm$2;-><init>(Lcom/lenovo/anyshare/sdk/internal/cm;Z)V

    invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/be;->b(Ljava/lang/Runnable;)V

    goto :goto_3b

    :cond_6e
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_3b

    iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v9, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_3b

    :cond_7b
    const-string/jumbo v5, "com.lenovo.anyshare.intent.QUIET_DOWNLOAD"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const-string/jumbo v5, "QU"

    const-string/jumbo v6, "receive quiet download intent"

    invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/lenovo/anyshare/sdk/internal/cm$3;

    invoke-direct {v5, p0}, Lcom/lenovo/anyshare/sdk/internal/cm$3;-><init>(Lcom/lenovo/anyshare/sdk/internal/cm;)V

    invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/be;->b(Ljava/lang/Runnable;)V

    goto :goto_3b
.end method

.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/cm;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/cm;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Z)V

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;JJLjava/io/File;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v2, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-wide/from16 v5, p4

    :try_start_6
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v12, "rw"

    move-object/from16 v0, p6

    invoke-direct {v11, v0, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_95

    :try_start_10
    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    const/high16 v12, 0x1

    new-array v3, v12, [B

    const/4 v4, 0x0

    :cond_22
    :goto_22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v12

    if-nez v12, :cond_3b

    iget-object v12, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_3b

    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_7d

    move-result v4

    const/4 v12, -0x1

    if-ne v4, v12, :cond_4d

    :cond_3b
    invoke-static {v11}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/RandomAccessFile;)V

    cmp-long v12, p2, v5

    if-nez v12, :cond_93

    const-wide/16 v8, -0x1

    :goto_44
    iget-object v12, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v13, "download_progress"

    invoke-virtual {v12, v13, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;J)V

    return-void

    :cond_4d
    if-eqz v4, :cond_22

    const/4 v12, 0x0

    :try_start_50
    invoke-virtual {v11, v3, v12, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v12, v4

    add-long/2addr v5, v12

    const-string/jumbo v12, "QU"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "========length = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " completed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_50 .. :try_end_7c} :catchall_7d

    goto :goto_22

    :catchall_7d
    move-exception v12

    move-object v10, v11

    :goto_7f
    invoke-static {v10}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/RandomAccessFile;)V

    cmp-long v13, p2, v5

    if-nez v13, :cond_91

    const-wide/16 v8, -0x1

    :goto_88
    iget-object v13, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v14, "download_progress"

    invoke-virtual {v13, v14, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;J)V

    throw v12

    :cond_91
    move-wide v8, v5

    goto :goto_88

    :cond_93
    move-wide v8, v5

    goto :goto_44

    :catchall_95
    move-exception v12

    goto :goto_7f
.end method

.method private declared-synchronized a(Z)V
    .registers 14

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cm;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->e()V

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cm;->g()V

    :cond_d
    const-string/jumbo v0, "auto_upgrade_enable"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2c

    move-result v0

    if-nez v0, :cond_21

    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cm;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/cm;->d(Z)V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2c

    goto :goto_1f

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2f
    :try_start_2f
    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cm;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "download_hint_timestamp"

    const-wide/32 v10, 0xa4cb800

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v1, "download_hint_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v8

    invoke-virtual {v0, v1, v10, v11}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;J)V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.lenovo.anyshare.intent.QUIET_DOWNLOAD"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v5, 0x800

    invoke-static {v0, v1, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string/jumbo v0, "download_notify_ticker"

    const-string/jumbo v1, "\u4e0b\u8f7d\u8304\u5b50\u5feb\u4f20!"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "download_notify_title"

    const-string/jumbo v1, "\u4e0b\u8f7d\u8304\u5b50\u5feb\u4f20"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "download_notify_message"

    const-string/jumbo v1, "\u8304\u5b50\u5feb\u4f20\u62e5\u6709\u66f4\u591a\u529f\u80fd,\u70b9\u51fb\u4e0b\u8f7d,\u5373\u523b\u4f53\u9a8c!"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v1, 0x1080027

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V
    :try_end_91
    .catchall {:try_start_2f .. :try_end_91} :catchall_2c

    goto :goto_1f
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_a} :catch_10

    move-result-object v0

    :goto_b
    if-nez v0, :cond_e

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d

    :catch_10
    move-exception v2

    goto :goto_b
.end method

.method static synthetic b(Lcom/lenovo/anyshare/sdk/internal/cm;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cm;->d(Z)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 4

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method private b(Z)Z
    .registers 6

    const-string/jumbo v2, "auto_download_mode"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/cm$a;->a(I)Lcom/lenovo/anyshare/sdk/internal/cm$a;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cm$4;->a:[I

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cm$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_30

    const-string/jumbo v2, "QU"

    const-string/jumbo v3, "is not surport download mode!"

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return v1

    :pswitch_2a
    const/4 v1, 0x1

    goto :goto_29

    :pswitch_2c
    const/4 v1, 0x0

    goto :goto_29

    :pswitch_2e
    move v1, p1

    goto :goto_29

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2c
        :pswitch_2e
    .end packed-switch
.end method

.method private c()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v3, "check_online_config"

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    :goto_d
    return v0

    :cond_e
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    const-string/jumbo v3, "com.lenovo.anyshare"

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v3, "check_online_config"

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_22
    move v0, v1

    goto :goto_d
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 5

    const/4 v2, 0x0

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    :cond_14
    return v2
.end method

.method private c(Z)Z
    .registers 13

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v7, "auto_download_mode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/cm$a;->a(I)Lcom/lenovo/anyshare/sdk/internal/cm$a;

    move-result-object v2

    sget-object v7, Lcom/lenovo/anyshare/sdk/internal/cm$a;->a:Lcom/lenovo/anyshare/sdk/internal/cm$a;

    if-ne v2, v7, :cond_1c

    :goto_1b
    return v6

    :cond_1c
    iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v8, "download_hint_timestamp"

    invoke-virtual {v7, v8, v9, v10}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v7, v3, v9

    if-nez v7, :cond_2f

    :cond_2d
    :goto_2d
    move v6, v5

    goto :goto_1b

    :cond_2f
    cmp-long v7, v0, v3

    if-gtz v7, :cond_2d

    move v5, v6

    goto :goto_2d
.end method

.method private d(Z)V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_11

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cm;->h()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_1b

    :cond_11
    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cm;->d()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cm;->e(Z)V

    goto :goto_d

    :catch_1b
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private d()Z
    .registers 9

    const-wide/16 v6, 0x0

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v5, "download_progress"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_13

    const/4 v0, 0x0

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v5, "download_progress"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;J)V

    goto :goto_12
.end method

.method private e(Z)V
    .registers 10

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "application/vnd.android.package-archive"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1400

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_50

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v5, 0x800

    invoke-static {v0, v1, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string/jumbo v0, "install_notify_ticker"

    const-string/jumbo v1, "\u5b89\u88c5\u8304\u5b50\u5feb\u4f20!"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "install_notify_title"

    const-string/jumbo v1, "\u5b89\u88c5\u8304\u5b50\u5feb\u4f20"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "install_notify_message"

    const-string/jumbo v1, "WLAN\u4e0b,\u8304\u5b50\u5feb\u4f20\u4e0b\u8f7d\u5b8c\u6210,\u70b9\u51fb\u5b89\u88c5,\u5373\u523b\u4f53\u9a8c"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v1, 0x1080027

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V

    :goto_4f
    return-void

    :cond_50
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4f
.end method

.method private e()Z
    .registers 9

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v5, "install_hint_timestamp"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    const/4 v4, 0x1

    :goto_14
    return v4

    :cond_15
    const/4 v4, 0x0

    goto :goto_14
.end method

.method private f()Z
    .registers 10

    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v6, "next_check_timestamp"

    invoke-virtual {v5, v6, v7, v8}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v5, v2, v7

    if-nez v5, :cond_15

    :cond_14
    :goto_14
    return v4

    :cond_15
    cmp-long v5, v0, v2

    if-gtz v5, :cond_14

    const/4 v4, 0x0

    goto :goto_14
.end method

.method private g()V
    .registers 7

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v3, "download_progress"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;I)V

    const-string/jumbo v2, "next_check_timestamp"

    const-wide/32 v3, 0x240c8400

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v3, "next_check_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;J)V

    const-string/jumbo v2, "download_hint_timestamp"

    const-wide/32 v3, 0xa4cb800

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v3, "download_hint_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;J)V

    const-string/jumbo v2, "install_hint_timestamp"

    const-wide/32 v3, 0x5265c00

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v3, "install_hint_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;J)V

    return-void
.end method

.method private h()V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x3a98

    const/16 v10, 0x3a98

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_1d

    const-string/jumbo v2, "QU"

    const-string/jumbo v23, "can not create local file!"

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    new-instance v21, Lcom/lenovo/anyshare/sdk/internal/bf;

    invoke-direct/range {v21 .. v21}, Lcom/lenovo/anyshare/sdk/internal/bf;-><init>()V

    const-string/jumbo v2, "download_address"

    const-string/jumbo v23, ""

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v23, "download_progress"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;I)I

    move-result v11

    :try_start_3f
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_87

    const-string/jumbo v2, "QU"

    const-string/jumbo v23, "download url is empty!"

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_270

    const-string/jumbo v2, "QU"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "download time spend: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " ms"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_7c

    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_7c
    if-eqz v13, :cond_1c

    invoke-interface {v13}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v13, 0x0

    goto :goto_1c

    :cond_87
    :try_start_87
    const-string/jumbo v2, "QU"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Ready to download "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_87 .. :try_end_b0} :catchall_270

    :try_start_b0
    const-string/jumbo v2, "Accept-Ranges"

    const-string/jumbo v23, "bytes"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v11, :cond_e6

    const-string/jumbo v2, "Range"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "bytes="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string/jumbo v23, "http.route.default-proxy"

    sget-object v24, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v2, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const/16 v2, 0x3a98

    const/16 v23, 0x3a98

    move/from16 v0, v23

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/as;->a(II)Lorg/apache/http/client/HttpClient;

    move-result-object v13

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    const-string/jumbo v2, "QU"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "download status code:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12e
    .catchall {:try_start_b0 .. :try_end_12e} :catchall_2a6

    const/16 v2, 0xc8

    move/from16 v0, v19

    if-eq v2, v0, :cond_13a

    const/16 v2, 0xce

    move/from16 v0, v19

    if-ne v2, v0, :cond_178

    :cond_13a
    const/16 v20, 0x1

    :goto_13c
    if-nez v20, :cond_17b

    const-string/jumbo v2, "QU"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "download time spend: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " ms"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v17, :cond_16a

    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_16a
    if-eqz v13, :cond_174

    invoke-interface {v13}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v13, 0x0

    :cond_174
    move-object/from16 v16, v17

    goto/16 :goto_1c

    :cond_178
    const/16 v20, 0x0

    goto :goto_13c

    :cond_17b
    const-wide/16 v6, 0x0

    :try_start_17d
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/as;->a(Lorg/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v12

    const/16 v2, 0xce

    move/from16 v0, v19

    if-ne v0, v2, :cond_22f

    const-string/jumbo v2, "Content-Range"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_1a0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1fa

    :cond_1a0
    const-string/jumbo v2, "QU"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Content-Range not found in a range download response, url = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c0
    .catchall {:try_start_17d .. :try_end_1c0} :catchall_2a6

    const-string/jumbo v2, "QU"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "download time spend: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " ms"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v17, :cond_1ec

    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_1ec
    if-eqz v13, :cond_1f6

    invoke-interface {v13}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v13, 0x0

    :cond_1f6
    move-object/from16 v16, v17

    goto/16 :goto_1c

    :cond_1fa
    :try_start_1fa
    const-string/jumbo v2, "bytes "

    const-string/jumbo v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v15, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const/16 v2, 0x2d

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    move-object/from16 v18, v15

    if-ltz v14, :cond_219

    const/4 v2, 0x0

    invoke-virtual {v15, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    :cond_219
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v2, 0x2f

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_26e

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_22f
    :goto_22f
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Lorg/apache/http/HttpResponse;JJLjava/io/File;)V
    :try_end_234
    .catchall {:try_start_1fa .. :try_end_234} :catchall_2a6

    const-string/jumbo v2, "QU"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "download time spend: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " ms"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v17, :cond_260

    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_260
    if-eqz v13, :cond_26a

    invoke-interface {v13}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v13, 0x0

    :cond_26a
    move-object/from16 v16, v17

    goto/16 :goto_1c

    :cond_26e
    add-long/2addr v4, v6

    goto :goto_22f

    :catchall_270
    move-exception v2

    :goto_271
    const-string/jumbo v23, "QU"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "download time spend: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_29b

    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_29b
    if-eqz v13, :cond_2a5

    invoke-interface {v13}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v13, 0x0

    :cond_2a5
    throw v2

    :catchall_2a6
    move-exception v2

    move-object/from16 v16, v17

    goto :goto_271
.end method


# virtual methods
.method public a()V
    .registers 9

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cm;->c()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cm;->d()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cm;->e()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v3, "install_hint_timestamp"

    const-wide/32 v4, 0x5265c00

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->b:Lcom/lenovo/anyshare/sdk/internal/bc;

    const-string/jumbo v4, "install_hint_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;J)V

    invoke-direct {p0, v7}, Lcom/lenovo/anyshare/sdk/internal/cm;->e(Z)V

    goto :goto_a

    :cond_40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.lenovo.anyshare.intent.QUIET_DOWNLOAD"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_a
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cm;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_a

    :catch_13
    move-exception v0

    goto :goto_a
.end method
