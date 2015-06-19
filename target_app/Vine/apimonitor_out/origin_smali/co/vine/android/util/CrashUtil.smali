.class public Lco/vine/android/util/CrashUtil;
.super Ljava/lang/Object;
.source "CrashUtil.java"


# static fields
.field private static final sEnv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:[I

.field private static sLogsOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lco/vine/android/util/CrashUtil;->sEnv:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lco/vine/android/util/CrashUtil;->sLock:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lco/vine/android/util/CrashUtil;->sLogsOn:Z

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/edisonwang/android/slog/SLog;->i2(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1}, Lcom/edisonwang/android/slog/MessageFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;

    move-result-object v1

    invoke-virtual {v1}, Lcom/edisonwang/android/slog/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lco/vine/android/util/CrashUtil;->sLogsOn:Z

    if-eqz v1, :cond_10

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->i2(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lco/vine/android/util/CrashUtil;->sLogsOn:Z

    if-eqz v0, :cond_a

    const-string v0, "Exception was logged."

    invoke-static {v0, p0}, Lcom/edisonwang/android/slog/SLog;->e2(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    const-string v0, "LastException"

    invoke-static {p0}, Lco/vine/android/util/CrashUtil;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static varargs logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    invoke-static {p1, p2}, Lcom/edisonwang/android/slog/MessageFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;

    move-result-object v3

    invoke-virtual {v3}, Lcom/edisonwang/android/slog/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lco/vine/android/util/CrashUtil;->sLogsOn:Z

    if-eqz v3, :cond_53

    sget-object v4, Lco/vine/android/util/CrashUtil;->sLock:[I

    monitor-enter v4

    :try_start_f
    const-string v3, "logException triggered: "

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V

    sget-object v3, Lco/vine/android/util/CrashUtil;->sEnv:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lco/vine/android/util/CrashUtil;->sEnv:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    goto :goto_1e

    :catchall_4b
    move-exception v3

    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_4b

    throw v3

    :cond_4e
    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    invoke-static {v2, p0}, Lcom/edisonwang/android/slog/SLog;->e2(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_52
    return-void

    :cond_53
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_52
.end method

.method public static logOrThrowInDebug(Ljava/lang/Exception;)V
    .registers 3

    sget-boolean v0, Lco/vine/android/util/CrashUtil;->sLogsOn:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    const-string v0, "LastException"

    invoke-static {p0}, Lco/vine/android/util/CrashUtil;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static set(Ljava/lang/String;I)V
    .registers 3

    sget-boolean v0, Lco/vine/android/util/CrashUtil;->sLogsOn:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lco/vine/android/util/CrashUtil;->setEnv(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_c
    invoke-static {p0, p1}, Lcom/crashlytics/android/Crashlytics;->setInt(Ljava/lang/String;I)V

    goto :goto_b
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_4

    const-string p1, "null"

    :cond_4
    sget-boolean v0, Lco/vine/android/util/CrashUtil;->sLogsOn:Z

    if-eqz v0, :cond_c

    invoke-static {p0, p1}, Lco/vine/android/util/CrashUtil;->setEnv(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_c
    invoke-static {p0, p1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static setEnv(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    sget-object v1, Lco/vine/android/util/CrashUtil;->sLock:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/util/CrashUtil;->sEnv:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static setup(Z)V
    .registers 1

    sput-boolean p0, Lco/vine/android/util/CrashUtil;->sLogsOn:Z

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 2

    sget-boolean v0, Lco/vine/android/util/CrashUtil;->sLogsOn:Z

    if-eqz v0, :cond_a

    const-string v0, "Crashlytics will be started now if this is running with logs off."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;)V

    goto :goto_9
.end method
