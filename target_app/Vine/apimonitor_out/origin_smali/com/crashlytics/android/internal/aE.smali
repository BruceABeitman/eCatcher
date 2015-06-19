.class public abstract Lcom/crashlytics/android/internal/aE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/crashlytics/android/internal/aD;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/crashlytics/android/internal/aD;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/crashlytics/android/internal/aE;->a()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_28
    .catch Lcom/crashlytics/android/internal/aD; {:try_start_2 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_18

    move-result-object v0

    :try_start_6
    invoke-virtual {p0}, Lcom/crashlytics/android/internal/aE;->b()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Lcom/crashlytics/android/internal/aD;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/internal/aD;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_11
    move-exception v0

    :try_start_12
    throw v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    :goto_14
    :try_start_14
    invoke-virtual {p0}, Lcom/crashlytics/android/internal/aE;->b()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_1f

    :cond_17
    throw v0

    :catch_18
    move-exception v0

    :try_start_19
    new-instance v2, Lcom/crashlytics/android/internal/aD;

    invoke-direct {v2, v0}, Lcom/crashlytics/android/internal/aD;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_13

    :catch_1f
    move-exception v2

    if-nez v1, :cond_17

    new-instance v0, Lcom/crashlytics/android/internal/aD;

    invoke-direct {v0, v2}, Lcom/crashlytics/android/internal/aD;-><init>(Ljava/io/IOException;)V

    throw v0

    :catchall_28
    move-exception v0

    move v1, v2

    goto :goto_14
.end method
