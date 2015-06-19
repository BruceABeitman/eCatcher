.class public final Lcom/pinguo/Camera360Lib/log/GLogger;
.super Ljava/lang/Object;
.source "GLogger.java"


# static fields
.field public static final DEBUG:Ljava/lang/String; = "DEBUG  "

.field public static final ERROR:Ljava/lang/String; = "ERROR  "

.field public static final INFO:Ljava/lang/String; = "INFO   "

.field public static final LOG_QUEUE_CAPACITY:I = 0x12c

.field public static final VERBOSE:Ljava/lang/String; = "VERBOSE"

.field public static final WARN:Ljava/lang/String; = "WARN   "

.field private static mLogEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_12

    new-instance v0, Lcom/pinguo/Camera360Lib/log/LogMsg;

    const-string/jumbo v1, "DEBUG  "

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/Camera360Lib/log/LogMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pinguo/Camera360Lib/log/LogWriter;->offerLog(Lcom/pinguo/Camera360Lib/log/LogMsg;)V

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_16

    new-instance v0, Lcom/pinguo/Camera360Lib/log/LogMsg;

    const-string/jumbo v1, "DEBUG  "

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/Camera360Lib/log/LogMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/pinguo/Camera360Lib/log/LogWriter;->offerLog(Lcom/pinguo/Camera360Lib/log/LogMsg;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/pinguo/Camera360Lib/log/LogMsg;

    const-string/jumbo v1, "ERROR  "

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/Camera360Lib/log/LogMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pinguo/Camera360Lib/log/LogWriter;->offerLog(Lcom/pinguo/Camera360Lib/log/LogMsg;)V

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_12

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Lcom/pinguo/Camera360Lib/log/LogMsg;

    const-string/jumbo v1, "ERROR  "

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/Camera360Lib/log/LogMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/pinguo/Camera360Lib/log/LogWriter;->offerLog(Lcom/pinguo/Camera360Lib/log/LogMsg;)V

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_16

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public static getEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/pinguo/Camera360Lib/log/LogMsg;

    const-string/jumbo v1, "INFO   "

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/Camera360Lib/log/LogMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pinguo/Camera360Lib/log/LogWriter;->offerLog(Lcom/pinguo/Camera360Lib/log/LogMsg;)V

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_12

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Lcom/pinguo/Camera360Lib/log/LogMsg;

    const-string/jumbo v1, "INFO   "

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/Camera360Lib/log/LogMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/pinguo/Camera360Lib/log/LogWriter;->offerLog(Lcom/pinguo/Camera360Lib/log/LogMsg;)V

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_16

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public static logFinalize(Ljava/lang/Object;)V
    .registers 4

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "logFinalize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Object :["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is released."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public static logMethodName()V
    .registers 5

    const/4 v4, 0x1

    sget-boolean v1, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v1, :cond_31

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string/jumbo v1, "MethodName"

    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void
.end method

.method public static logMethodName(Ljava/lang/String;)V
    .registers 6

    const/4 v4, 0x1

    sget-boolean v1, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string/jumbo v1, "MethodName"

    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void
.end method

.method public static logTODO(Ljava/lang/String;)V
    .registers 7

    const/4 v5, 0x1

    sget-boolean v4, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v4, :cond_77

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v4, v3, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v3, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " This method is TODO !! : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " This method is TODO !! : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " This method is TODO !! : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " This method is TODO !! : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return-void
.end method

.method public static printStackTrace(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public static setEnabled(Z)V
    .registers 1

    sput-boolean p0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_12

    new-instance v0, Lcom/pinguo/Camera360Lib/log/LogMsg;

    const-string/jumbo v1, "VERBOSE"

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/Camera360Lib/log/LogMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pinguo/Camera360Lib/log/LogWriter;->offerLog(Lcom/pinguo/Camera360Lib/log/LogMsg;)V

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_16

    new-instance v0, Lcom/pinguo/Camera360Lib/log/LogMsg;

    const-string/jumbo v1, "VERBOSE"

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/Camera360Lib/log/LogMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/pinguo/Camera360Lib/log/LogWriter;->offerLog(Lcom/pinguo/Camera360Lib/log/LogMsg;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/pinguo/Camera360Lib/log/LogMsg;

    const-string/jumbo v1, "WARN   "

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/Camera360Lib/log/LogMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pinguo/Camera360Lib/log/LogWriter;->offerLog(Lcom/pinguo/Camera360Lib/log/LogMsg;)V

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_12

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Lcom/pinguo/Camera360Lib/log/LogMsg;

    const-string/jumbo v1, "WARN   "

    invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/Camera360Lib/log/LogMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/pinguo/Camera360Lib/log/LogWriter;->offerLog(Lcom/pinguo/Camera360Lib/log/LogMsg;)V

    sget-boolean v0, Lcom/pinguo/Camera360Lib/log/GLogger;->mLogEnabled:Z

    if-eqz v0, :cond_16

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method
