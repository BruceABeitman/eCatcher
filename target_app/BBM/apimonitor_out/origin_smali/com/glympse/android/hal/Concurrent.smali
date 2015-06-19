.class public Lcom/glympse/android/hal/Concurrent;
.super Ljava/lang/Object;
.source "Concurrent.java"


# static fields
.field public static final BACKGROUND_EVENTS:I = 0x1

.field public static final BACKGROUND_FULL:I = 0x2

.field public static final BACKGROUND_NONE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackgroundMode()I
    .registers 1

    const/4 v0, 0x2

    return v0
.end method

.method public static getTime()J
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static sleep(J)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method
