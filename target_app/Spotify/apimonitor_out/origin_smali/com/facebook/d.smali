.class final Lcom/facebook/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/facebook/internal/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/facebook/internal/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/d;->b:Ljava/util/List;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/d;->g:I

    iput-object p1, p0, Lcom/facebook/d;->d:Lcom/facebook/internal/a;

    iput-object p2, p0, Lcom/facebook/d;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/d;->f:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    :goto_7
    return-object v0

    :catch_8
    move-exception v1

    invoke-static {}, Lcom/facebook/internal/ai;->a()V

    goto :goto_7
.end method


# virtual methods
.method public final declared-synchronized a()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/facebook/Request;ZZZ)I
    .registers 10

    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/facebook/d;->c:I

    iget-object v0, p0, Lcom/facebook/d;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/d;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/facebook/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AppEventsLogger$AppEvent;

    if-nez p2, :cond_2e

    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AppEvent;->b()Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_2e
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AppEvent;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_1a

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_39
    :try_start_39
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_36

    :goto_41
    return v0

    :cond_42
    monitor-exit p0

    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v0

    const-string v3, "event"

    const-string v4, "CUSTOM_APP_EVENTS"

    invoke-interface {v0, v3, v4}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lcom/facebook/d;->c:I

    if-lez v3, :cond_5b

    const-string v3, "num_skipped_events"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5b
    if-eqz p3, :cond_64

    iget-object v1, p0, Lcom/facebook/d;->d:Lcom/facebook/internal/a;

    iget-object v3, p0, Lcom/facebook/d;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3, p4}, Lcom/facebook/internal/ai;->a(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/a;Ljava/lang/String;Z)V

    :cond_64
    const-string v1, "application_package_name"

    iget-object v3, p0, Lcom/facebook/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/Request;->a(Lcom/facebook/model/GraphObject;)V

    invoke-virtual {p1}, Lcom/facebook/Request;->a()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_79

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_79
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8b

    const-string v3, "custom_events_file"

    invoke-static {v1}, Lcom/facebook/d;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p1, v1}, Lcom/facebook/Request;->a(Ljava/lang/Object;)V

    :cond_8b
    invoke-virtual {p1, v0}, Lcom/facebook/Request;->a(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_41
.end method

.method public final declared-synchronized a(Lcom/facebook/AppEventsLogger$AppEvent;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1a

    iget v0, p0, Lcom/facebook/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/d;->c:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_20

    :goto_18
    monitor-exit p0

    return-void

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_20

    goto :goto_18

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_a

    :try_start_3
    iget-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/d;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    iget-object v0, p0, Lcom/facebook/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/d;->c:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/d;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/d;->a:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
