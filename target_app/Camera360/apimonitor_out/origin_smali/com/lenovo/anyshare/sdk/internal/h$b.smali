.class Lcom/lenovo/anyshare/sdk/internal/h$b;
.super Ljava/lang/Object;
.source "ShareRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_15

    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_c
    monitor-exit p0

    return-object v1

    :cond_e
    :try_start_e
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_15

    goto :goto_c

    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_19

    if-nez v1, :cond_e

    const/4 v2, 0x0

    :goto_c
    monitor-exit p0

    return-object v2

    :cond_e
    :try_start_e
    invoke-direct {p0, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_19

    goto :goto_c

    :catchall_19
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_17
    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    :cond_28
    monitor-exit p0

    return-object v2

    :catchall_2a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/h$b;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/h$b;->c()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->emptyContent()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_25

    move-result v1

    if-eqz v1, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-virtual {p2}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getShareId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_25

    goto :goto_7

    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->a:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_15

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->a:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3b

    goto :goto_19

    :catchall_3b
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_3e
    :try_start_3e
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->a:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_3b

    :cond_49
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_15

    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_c
    monitor-exit p0

    return-object v1

    :cond_e
    :try_start_e
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_15

    goto :goto_c

    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_19

    if-nez v1, :cond_e

    const/4 v2, 0x0

    :goto_c
    monitor-exit p0

    return-object v2

    :cond_e
    :try_start_e
    invoke-direct {p0, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_19

    goto :goto_c

    :catchall_19
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized b()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2a

    goto :goto_10

    :catchall_2a
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2d
    :try_start_2d
    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_50
    .catchall {:try_start_2d .. :try_end_50} :catchall_2a

    goto :goto_37

    :cond_51
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord;
    .registers 10

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->b:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_16

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/channel/base/ShareRecord;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_43

    if-eqz v3, :cond_16

    :goto_14
    monitor-exit p0

    return-object v3

    :cond_16
    :try_start_16
    iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->a:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_22

    move-object v3, v5

    goto :goto_14

    :cond_22
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_43

    move-result v6

    if-eqz v6, :cond_2a

    goto :goto_14

    :cond_41
    move-object v3, v5

    goto :goto_14

    :catchall_43
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/h$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
