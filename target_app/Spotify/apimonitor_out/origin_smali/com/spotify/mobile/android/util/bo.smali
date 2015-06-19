.class public final Lcom/spotify/mobile/android/util/bo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/DateFormat;

.field private static final b:Ljava/util/Date;

.field private static c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/spotify/mobile/android/util/bp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/spotify/mobile/android/util/bo;->a:Ljava/text/DateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/util/bo;->b:Ljava/util/Date;

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/spotify/mobile/android/util/bo;->c:Ljava/util/Deque;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/spotify/mobile/android/util/bo;

    monitor-enter v1

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v0, Lcom/spotify/mobile/android/util/bo;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/bp;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/bp;->a(Ljava/lang/StringBuilder;)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_25

    goto :goto_10

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_28
    :try_start_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method private static a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-class v7, Lcom/spotify/mobile/android/util/bo;

    monitor-enter v7

    :try_start_7
    sget-object v0, Lcom/spotify/mobile/android/util/bo;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_27

    sget-object v0, Lcom/spotify/mobile/android/util/bo;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/bp;

    :goto_19
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/spotify/mobile/android/util/bp;->a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;J)V

    sget-object v1, Lcom/spotify/mobile/android/util/bo;->c:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    monitor-exit v7

    return-void

    :cond_27
    new-instance v0, Lcom/spotify/mobile/android/util/bp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/bp;-><init>(B)V
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2e

    goto :goto_19

    :catchall_2e
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x44

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/spotify/mobile/android/util/bo;->a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/16 v0, 0x44

    invoke-static {v0, p0, p1, p2}, Lcom/spotify/mobile/android/util/bo;->a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b()Ljava/util/Date;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/util/bo;->b:Ljava/util/Date;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x56

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/spotify/mobile/android/util/bo;->a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/16 v0, 0x56

    invoke-static {v0, p0, p1, p2}, Lcom/spotify/mobile/android/util/bo;->a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic c()Ljava/text/DateFormat;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/util/bo;->a:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/spotify/mobile/android/util/bo;->a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/16 v0, 0x49

    invoke-static {v0, p0, p1, p2}, Lcom/spotify/mobile/android/util/bo;->a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/spotify/mobile/android/util/bo;->a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/16 v0, 0x57

    invoke-static {v0, p0, p1, p2}, Lcom/spotify/mobile/android/util/bo;->a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/spotify/mobile/android/util/bo;->a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/16 v0, 0x45

    invoke-static {v0, p0, p1, p2}, Lcom/spotify/mobile/android/util/bo;->a(CLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
