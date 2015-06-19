.class public Lcom/lenovo/content/base/ContentContainer;
.super Lcom/lenovo/content/base/ContentObject;
.source "ContentContainer.java"


# static fields
.field public static final CONTAINER_STATUS_LOADED:I = 0x2

.field public static final CONTAINER_STATUS_LOADING:I = 0x1

.field public static final CONTAINER_STATUS_UNLOAD:I = 0x0

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final ROOT_CONTAINER_ID:Ljava/lang/String; = "ROOT"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/content/base/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/content/base/ContentContainer;",
            ">;"
        }
    .end annotation
.end field

.field protected c:I

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/lenovo/content/base/ContentObject;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/content/base/ContentContainer;->c:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentObject;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentContainer;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_a

    :goto_9
    return-void

    :cond_a
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_10
    iget-object v3, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    iget-object v3, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/content/base/ContentItem;

    invoke-virtual {v3}, Lcom/lenovo/content/base/ContentItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2c
    const-string/jumbo v3, "items"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9
.end method

.method public final addChild(Lcom/lenovo/content/base/ContentContainer;)V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addChild(Lcom/lenovo/content/base/ContentItem;)V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getAllItems()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/content/base/ContentItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAllObjects()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/content/base/ContentObject;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/lenovo/content/base/ContentContainer;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lcom/lenovo/content/base/ContentContainer;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iget-object v2, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    iget-object v2, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2f
    return-object v1
.end method

.method public final getAllSubContainers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/content/base/ContentContainer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->b:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/content/base/ContentContainer;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getChildrernCount()I
    .registers 3

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentContainer;->getSubContainerCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentContainer;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getItem(I)Lcom/lenovo/content/base/ContentItem;
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/content/base/ContentItem;

    return-object v0
.end method

.method public final getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getLoadStatus()I
    .registers 3

    iget-object v1, p0, Lcom/lenovo/content/base/ContentContainer;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/lenovo/content/base/ContentContainer;->c:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final getObject(I)Lcom/lenovo/content/base/ContentObject;
    .registers 5

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentContainer;->getSubContainerCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentContainer;->getItemCount()I

    move-result v0

    if-ltz p1, :cond_e

    add-int v2, v1, v0

    if-lt p1, v2, :cond_14

    :cond_e
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_14
    if-ge p1, v1, :cond_1b

    invoke-virtual {p0, p1}, Lcom/lenovo/content/base/ContentContainer;->getSubContainer(I)Lcom/lenovo/content/base/ContentContainer;

    move-result-object v2

    :goto_1a
    return-object v2

    :cond_1b
    sub-int v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/lenovo/content/base/ContentContainer;->getItem(I)Lcom/lenovo/content/base/ContentItem;

    move-result-object v2

    goto :goto_1a
.end method

.method public final getSubContainer(I)Lcom/lenovo/content/base/ContentContainer;
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/content/base/ContentContainer;

    return-object v0
.end method

.method public final getSubContainerCount()I
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTotalItemCount()I
    .registers 5

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentContainer;->getItemCount()I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentContainer;->getSubContainerCount()I

    move-result v1

    :goto_9
    if-ge v0, v1, :cond_17

    invoke-virtual {p0, v0}, Lcom/lenovo/content/base/ContentContainer;->getSubContainer(I)Lcom/lenovo/content/base/ContentContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/content/base/ContentContainer;->getTotalItemCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    return v2
.end method

.method public final getTotalSubContainerCount()I
    .registers 5

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentContainer;->getSubContainerCount()I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentContainer;->getSubContainerCount()I

    move-result v1

    :goto_9
    if-ge v0, v1, :cond_17

    invoke-virtual {p0, v0}, Lcom/lenovo/content/base/ContentContainer;->getSubContainer(I)Lcom/lenovo/content/base/ContentContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/content/base/ContentContainer;->getTotalSubContainerCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    return v2
.end method

.method public final isLoaded()Z
    .registers 4

    iget-object v1, p0, Lcom/lenovo/content/base/ContentContainer;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/lenovo/content/base/ContentContainer;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final setChildren(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/content/base/ContentContainer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/content/base/ContentItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->b:Ljava/util/List;

    :goto_9
    if-nez p2, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    :goto_12
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/content/base/ContentContainer;->setLoadStatus(I)V

    return-void

    :cond_17
    iput-object p1, p0, Lcom/lenovo/content/base/ContentContainer;->b:Ljava/util/List;

    goto :goto_9

    :cond_1a
    iput-object p2, p0, Lcom/lenovo/content/base/ContentContainer;->a:Ljava/util/List;

    goto :goto_12
.end method

.method public final setLoadStatus(I)V
    .registers 4

    iget-object v1, p0, Lcom/lenovo/content/base/ContentContainer;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/lenovo/content/base/ContentContainer;->c:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .registers 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/lenovo/content/base/ContentContainer;->a(Lorg/json/JSONObject;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_8} :catch_9

    :goto_8
    return-object v1

    :catch_9
    move-exception v0

    const-string/jumbo v2, "ContentContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toJSON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_8
.end method

.method public final waitLoaded(J)V
    .registers 8

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/lenovo/content/base/ContentContainer;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget v0, p0, Lcom/lenovo/content/base/ContentContainer;->c:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_21

    if-ne v0, v4, :cond_19

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1b

    :goto_e
    :try_start_e
    iget v0, p0, Lcom/lenovo/content/base/ContentContainer;->c:I

    if-ne v0, v4, :cond_19

    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_21
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_e

    :catch_18
    move-exception v0

    :cond_19
    :goto_19
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_21

    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/lenovo/content/base/ContentContainer;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_21
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_18

    goto :goto_19

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method
