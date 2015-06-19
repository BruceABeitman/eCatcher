.class public final Lcom/fasterxml/jackson/core/util/InternCache;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "InternCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_ENTRIES:I = 0xb4

.field private static final _flushLock:Ljava/lang/Object;

.field public static final instance:Lcom/fasterxml/jackson/core/util/InternCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/InternCache;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->_flushLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/16 v0, 0xb4

    const v1, 0x3f4ccccd

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method


# virtual methods
.method public intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0xb4

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/InternCache;->size()I

    move-result v0

    if-lt v0, v2, :cond_1e

    sget-object v1, Lcom/fasterxml/jackson/core/util/InternCache;->_flushLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/InternCache;->size()I

    move-result v0

    if-lt v0, v2, :cond_1d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/InternCache;->clear()V

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_26

    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v0}, Lcom/fasterxml/jackson/core/util/InternCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method
