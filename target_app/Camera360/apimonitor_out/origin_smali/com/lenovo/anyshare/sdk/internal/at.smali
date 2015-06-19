.class public final Lcom/lenovo/anyshare/sdk/internal/at;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "AS."

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/at;->a:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/lenovo/anyshare/sdk/internal/at;->b:I

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 12

    const-wide/16 v10, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/lenovo/anyshare/sdk/internal/at;->c:J

    sub-long v0, v6, v8

    const-wide/32 v6, 0x36ee80

    div-long v6, v0, v6

    long-to-int v6, v6

    rem-int/lit8 v2, v6, 0x18

    const-wide/32 v6, 0xea60

    div-long v6, v0, v6

    long-to-int v6, v6

    rem-int/lit8 v4, v6, 0x3c

    div-long v6, v0, v10

    long-to-int v6, v6

    rem-int/lit8 v5, v6, 0x3c

    rem-long v6, v0, v10

    long-to-int v3, v6

    const-string/jumbo v6, "%02d:%02d:%02d.%03d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 12

    const/16 v2, 0x17

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget v1, Lcom/lenovo/anyshare/sdk/internal/at;->b:I

    if-ge p0, v1, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_19

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_19
    if-nez p3, :cond_3e

    const-string/jumbo v1, "%s[%d] %s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/at;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_3e
    const-string/jumbo v1, "%s[%d] %s - %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/at;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    invoke-static {p3}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x5

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x6

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x7

    invoke-static {v0, p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
