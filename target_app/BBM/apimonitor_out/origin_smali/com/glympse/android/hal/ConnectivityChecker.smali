.class public Lcom/glympse/android/hal/ConnectivityChecker;
.super Ljava/lang/Object;
.source "ConnectivityChecker.java"


# static fields
.field private static ah:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glympse/android/hal/p;-><init>(Lcom/glympse/android/hal/ConnectivityChecker$1;)V

    sput-object v0, Lcom/glympse/android/hal/ConnectivityChecker;->ah:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    sput-object p0, Lcom/glympse/android/hal/ConnectivityChecker;->ah:Ljava/lang/Object;

    return-object p0
.end method

.method public static declared-synchronized isConnected()Z
    .registers 3

    const-class v1, Lcom/glympse/android/hal/ConnectivityChecker;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/glympse/android/hal/ConnectivityChecker;->ah:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_9} :catch_c

    move-result v0

    :goto_a
    monitor-exit v1

    return v0

    :catch_c
    move-exception v0

    const/4 v0, 0x1

    goto :goto_a

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic j()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/ConnectivityChecker;->ah:Ljava/lang/Object;

    return-object v0
.end method
