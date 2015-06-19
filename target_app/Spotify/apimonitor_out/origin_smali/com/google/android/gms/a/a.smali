.class public final Lcom/google/android/gms/a/a;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/google/android/gms/a/a;


# instance fields
.field final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/app/PendingIntent;

.field private e:Landroid/os/Handler;

.field private f:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/a/a;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/google/android/gms/a/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/a/a$1;-><init>(Lcom/google/android/gms/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/a/a;->e:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/google/android/gms/a/a;->e:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/a/a;->f:Landroid/os/Messenger;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/a/a;
    .registers 3

    const-class v1, Lcom/google/android/gms/a/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/a/a;->a:Lcom/google/android/gms/a/a;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/a/a;

    invoke-direct {v0}, Lcom/google/android/gms/a/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/a/a;->a:Lcom/google/android/gms/a/a;

    iput-object p0, v0, Lcom/google/android/gms/a/a;->c:Landroid/content/Context;

    :cond_10
    sget-object v0, Lcom/google/android/gms/a/a;->a:Lcom/google/android/gms/a/a;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Landroid/content/Intent;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/a/a;->d:Landroid/app/PendingIntent;

    if-nez v0, :cond_19

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.example.invalidpackage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/a/a;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/a/a;->d:Landroid/app/PendingIntent;

    :cond_19
    const-string v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/a/a;->d:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/a/a;->d:Landroid/app/PendingIntent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/a/a;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/a/a;->d:Landroid/app/PendingIntent;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private varargs b([Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No senderIds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_16
    array-length v2, p1

    if-ge v0, v2, :cond_27

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "google.messenger"

    iget-object v3, p0, Lcom/google/android/gms/a/a;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/google/android/gms/a/a;->a(Landroid/content/Intent;)V

    const-string v2, "sender"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/a/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/a/a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/a/a;->b([Ljava/lang/String;)V

    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/a/a;->b:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_3b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_30} :catch_30

    :catch_30
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    :try_start_3b
    const-string v1, "registration_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    return-object v1

    :cond_44
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_57
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_5f} :catch_30
.end method

.method public final a()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/a/a;->b()V

    return-void
.end method
