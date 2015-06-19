.class public final Lcom/instagram/n/a;
.super Ljava/lang/Object;
.source "AppInitUtil.java"


# static fields
.field private static a:Lcom/instagram/n/a;


# instance fields
.field private volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/n/a;

    invoke-direct {v0}, Lcom/instagram/n/a;-><init>()V

    sput-object v0, Lcom/instagram/n/a;->a:Lcom/instagram/n/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/instagram/n/a;
    .registers 1

    sget-object v0, Lcom/instagram/n/a;->a:Lcom/instagram/n/a;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/instagram/n/a;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/instagram/n/a;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_13

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_10
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    :catch_9
    move-exception v0

    :try_start_a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    monitor-exit p0

    return-void
.end method
