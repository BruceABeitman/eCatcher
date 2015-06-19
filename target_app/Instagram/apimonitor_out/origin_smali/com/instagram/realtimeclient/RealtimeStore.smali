.class public Lcom/instagram/realtimeclient/RealtimeStore;
.super Ljava/lang/Object;
.source "RealtimeStore.java"


# instance fields
.field private final mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private mOperationStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/realtimeclient/RealtimeOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mTombstoneStore:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mOperationStore:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mTombstoneStore:Ljava/util/Set;

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method private processAddOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)Z
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    move v0, v2

    :goto_16
    return v0

    :cond_17
    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    const-string v0, "/direct_share/inbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "/direct_share"

    :goto_2d
    iput-object v3, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    :try_start_39
    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mOperationStore:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mTombstoneStore:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mOperationStore:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_39 .. :try_end_50} :catchall_51

    goto :goto_16

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_54
    monitor-exit p0

    move v0, v2

    goto :goto_16

    :cond_57
    move-object v0, v1

    goto :goto_2d
.end method

.method private declared-synchronized processRemoveOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mOperationStore:Ljava/util/Map;

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mTombstoneStore:Ljava/util/Set;

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processReplaceOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mTombstoneStore:Ljava/util/Set;

    iget-object v3, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3a

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mOperationStore:Ljava/util/Map;

    iget-object v3, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/realtimeclient/RealtimeOperation;

    if-eqz v0, :cond_2f

    iget-object v0, v0, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;

    iget-object v3, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/instagram/realtimeclient/RealtimePatchEvent;->compareSequences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_38

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mOperationStore:Ljava/util/Map;

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_e

    :cond_2f
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mOperationStore:Ljava/util/Map;

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_3a

    move v0, v2

    goto :goto_e

    :cond_38
    move v0, v1

    goto :goto_e

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mOperationStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mTombstoneStore:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOperations()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/realtimeclient/RealtimeOperation;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mOperationStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/realtimeclient/RealtimeOperation;

    iget-object v3, v0, Lcom/instagram/realtimeclient/RealtimeOperation;->value:Ljava/lang/Object;

    if-eqz v3, :cond_10

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_10

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_27
    :try_start_27
    new-instance v0, Lcom/instagram/realtimeclient/RealtimeStore$1;

    invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeStore$1;-><init>(Lcom/instagram/realtimeclient/RealtimeStore;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_24

    monitor-exit p0

    return-object v1
.end method

.method public patchStoreWithOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)Z
    .registers 4

    sget-object v0, Lcom/instagram/realtimeclient/RealtimeStore$2;->$SwitchMap$com$instagram$realtimeclient$RealtimeOperation$Type:[I

    iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->op:Lcom/instagram/realtimeclient/RealtimeOperation$Type;

    invoke-virtual {v1}, Lcom/instagram/realtimeclient/RealtimeOperation$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    const/4 v0, 0x0

    :goto_e
    return v0

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/instagram/realtimeclient/RealtimeStore;->processAddOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)Z

    move-result v0

    goto :goto_e

    :pswitch_14
    invoke-direct {p0, p1}, Lcom/instagram/realtimeclient/RealtimeStore;->processRemoveOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)Z

    move-result v0

    goto :goto_e

    :pswitch_19
    invoke-direct {p0, p1}, Lcom/instagram/realtimeclient/RealtimeStore;->processReplaceOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)Z

    move-result v0

    goto :goto_e

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_f
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method

.method public declared-synchronized patchStoreWithPatches(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/realtimeclient/RealtimePatchTuple;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/realtimeclient/RealtimePatchTuple;

    iget-boolean v1, v1, Lcom/instagram/realtimeclient/RealtimePatchTuple;->isTombstone:Z

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mOperationStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeStore;->mTombstoneStore:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    goto :goto_9

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_35
    :try_start_35
    new-instance v3, Lcom/instagram/realtimeclient/RealtimeOperation;

    invoke-direct {v3}, Lcom/instagram/realtimeclient/RealtimeOperation;-><init>()V

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeOperation$Type;->replace:Lcom/instagram/realtimeclient/RealtimeOperation$Type;

    iput-object v1, v3, Lcom/instagram/realtimeclient/RealtimeOperation;->op:Lcom/instagram/realtimeclient/RealtimeOperation$Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/realtimeclient/RealtimePatchTuple;

    iget-object v0, v0, Lcom/instagram/realtimeclient/RealtimePatchTuple;->timestamp:Ljava/lang/String;

    iput-object v0, v3, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/instagram/realtimeclient/RealtimeStore;->processReplaceOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)Z
    :try_end_53
    .catchall {:try_start_35 .. :try_end_53} :catchall_32

    goto :goto_9

    :cond_54
    monitor-exit p0

    return-void
.end method
