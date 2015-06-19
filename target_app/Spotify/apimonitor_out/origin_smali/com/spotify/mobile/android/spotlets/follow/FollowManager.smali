.class public Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# instance fields
.field private a:Lcom/spotify/cosmos/android/DeferredResolver;

.field private final b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/spotlets/follow/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/spotify/mobile/android/spotlets/follow/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$CaseInsensitiveMap;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$CaseInsensitiveMap;-><init>(B)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->c:Ljava/util/Map;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$CaseInsensitiveMap;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$CaseInsensitiveMap;-><init>(B)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/follow/FollowManager;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/follow/FollowManager;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/follow/b;

    invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/follow/b;->a(Lcom/spotify/mobile/android/spotlets/follow/a;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2d

    goto :goto_1d

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_30
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Z)V
    .registers 8

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->h:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-ne v0, v1, :cond_33

    const/4 v0, 0x1

    :goto_f
    const-string v1, "Uri is not an artist uri"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_followed"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/spotify/mobile/android/provider/b;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_35

    monitor-exit p0

    return-void

    :cond_33
    const/4 v0, 0x0

    goto :goto_f

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/a;

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/follow/a;->a(Lcom/spotify/mobile/android/spotlets/follow/a;Z)V

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/follow/a;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/a;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/spotify/mobile/android/spotlets/follow/a;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/follow/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/follow/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/b;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->d:Ljava/util/Map;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Z)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no model exists for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_84

    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    :cond_2c
    :try_start_2c
    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->c(Ljava/lang/String;Z)V

    if-eqz p2, :cond_87

    const-string v3, "POST"

    :goto_33
    const-string v0, "{\"target_uris\": [\"%s\"]}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v7, Lcom/spotify/cosmos/router/Request;

    const-string v1, "hm://socialgraph/v2/following?format=json"

    const/4 v2, 0x0

    invoke-direct {v7, v3, v1, v2, v0}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    monitor-enter p0
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_84

    :try_start_50
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a:Lcom/spotify/cosmos/android/DeferredResolver;

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a:Lcom/spotify/cosmos/android/DeferredResolver;

    :cond_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_8a

    :try_start_5d
    iget-object v8, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a:Lcom/spotify/cosmos/android/DeferredResolver;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$1;-><init>(Lcom/spotify/mobile/android/spotlets/follow/FollowManager;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v7, v0}, Lcom/spotify/cosmos/android/DeferredResolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->h:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-ne v0, v1, :cond_2a

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b(Ljava/lang/String;Z)V
    :try_end_83
    .catchall {:try_start_5d .. :try_end_83} :catchall_84

    goto :goto_2a

    :catchall_84
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_87
    :try_start_87
    const-string v3, "DELETE"

    goto :goto_33

    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_84
.end method

.method public final declared-synchronized b(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/b;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no listeners exist for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method
