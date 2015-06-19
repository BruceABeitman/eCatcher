.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "CollectionService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "com.spotify.mobile.android.spotlets.collection.cosmos.service.action.ADD"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1, p2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "com.spotify.mobile.android.spotlets.collection.cosmos.service.action.REMOVE"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1, p2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 11

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/Items;

    invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/Items;-><init>()V

    const-string v2, "uris"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/Items;->items:[Ljava/lang/String;

    const-string v2, "source"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/Items;->source:Ljava/lang/String;

    const-string v2, "com.spotify.mobile.android.spotlets.collection.cosmos.service.action.ADD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string v0, "POST"

    :goto_23
    new-instance v2, Lcom/spotify/cosmos/android/DeferredResolver;

    invoke-direct {v2, p0}, Lcom/spotify/cosmos/android/DeferredResolver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/spotify/cosmos/android/Resolver;->connect()V

    :try_start_2b
    new-instance v3, Ljava/util/concurrent/Semaphore;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/spotify/cosmos/router/Request;

    const-string v6, "sp://core-collection/unstable/items"

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v8, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v5, v0, v6, v7, v1}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService$1;

    const-class v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;

    invoke-direct {v0, p0, v4, v1, v3}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;Landroid/os/Handler;Ljava/lang/Class;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v5, v0}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_60
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_2b .. :try_end_60} :catch_88
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_60} :catch_8f

    :goto_60
    invoke-virtual {v2}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    :goto_63
    return-void

    :cond_64
    const-string v2, "com.spotify.mobile.android.spotlets.collection.cosmos.service.action.REMOVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v0, "DELETE"

    goto :goto_23

    :cond_6f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in CollectionService."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_63

    :catch_88
    move-exception v0

    const-string v0, "Failed to serialize item request."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_60

    :catch_8f
    move-exception v0

    const-string v0, "Wait was interrupted."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_60
.end method
