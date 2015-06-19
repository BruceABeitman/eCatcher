.class public final Lcom/google/android/gms/internal/jg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/je;


# static fields
.field private static a:Lcom/google/android/gms/internal/jg;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/google/android/gms/internal/je;
    .registers 2

    const-class v1, Lcom/google/android/gms/internal/jg;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/jg;->a:Lcom/google/android/gms/internal/jg;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/jg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jg;->a:Lcom/google/android/gms/internal/jg;

    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/jg;->a:Lcom/google/android/gms/internal/jg;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
