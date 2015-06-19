.class public Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;
.super Ljava/lang/Object;
.source "DmLogManager.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;


# instance fields
.field private lastLog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;

    invoke-direct {v0}, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->sInstance:Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->lastLog:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->sInstance:Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clear()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/pinguo/lib/log/LogWriter;->clearDmLog()V

    return-void
.end method

.method public getLogs(Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const/4 v4, 0x0

    sget-object v5, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getLogs"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/pinguo/lib/log/LogWriter;->dumpDmLogMsg()[Lcom/pinguo/lib/log/LogMsg;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    if-nez v5, :cond_18

    new-array v4, v4, [Ljava/lang/String;

    :goto_17
    return-object v4

    :cond_18
    array-length v5, v3

    :goto_19
    if-lt v4, v5, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->lastLog:Ljava/lang/String;

    :cond_35
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_17

    :cond_3c
    aget-object v2, v3, v4

    invoke-virtual {p0, v2, p1}, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->matchLogLevel(Lcom/pinguo/lib/log/LogMsg;Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;)Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-virtual {p0, v2, p2}, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->matchFilterKey(Lcom/pinguo/lib/log/LogMsg;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-virtual {v2}, Lcom/pinguo/lib/log/LogMsg;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_19
.end method

.method public hasNewLog()Z
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hasNewLog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->lastLog:Ljava/lang/String;

    invoke-static {v0}, Lcom/pinguo/lib/log/LogWriter;->hasNewDmLog(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected matchFilterKey(Lcom/pinguo/lib/log/LogMsg;Ljava/lang/String;)Z
    .registers 7

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    const/4 v2, 0x1

    :goto_9
    return v2

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ".*"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pinguo/lib/log/LogMsg;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_9
.end method

.method protected matchLogLevel(Lcom/pinguo/lib/log/LogMsg;Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;)Z
    .registers 9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "VERBOSE"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "DEBUG  "

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "INFO   "

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "WARN   "

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "ERROR  "

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->VERBOSE:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->DEBUG:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->INFO:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->WARN:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;->ERROR:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/pinguo/lib/log/LogMsg;->getLevel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lt v0, v1, :cond_51

    const/4 v5, 0x1

    :goto_50
    return v5

    :cond_51
    const/4 v5, 0x0

    goto :goto_50
.end method

.method public start()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pinguo/lib/log/LogWriter;->setDevMode(Z)V

    return-void
.end method

.method public stop()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmLogManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pinguo/lib/log/LogWriter;->setDevMode(Z)V

    return-void
.end method
