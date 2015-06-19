.class public Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private b:Lcom/spotify/cosmos/android/Resolver;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "AnnotateUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v7, 0x0

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v2, Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;

    invoke-direct {v2}, Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "sp://playlist/v1/rootlist"

    :goto_13
    :try_start_13
    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v4, Lcom/spotify/mobile/android/spotlets/collection/service/CreatePlaylist;

    invoke-direct {v4, p1, p3}, Lcom/spotify/mobile/android/spotlets/collection/service/CreatePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsBytes(Ljava/lang/Object;)[B

    move-result-object v3

    new-instance v4, Lcom/spotify/cosmos/router/Request;

    const-string v5, "POST"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6, v3}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;->b:Lcom/spotify/cosmos/android/Resolver;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService$1;

    const-class v5, Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;

    invoke-direct {v3, p0, v5, v2, v1}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0, v4, v3}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
    :try_end_32
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_13 .. :try_end_32} :catch_4c

    :goto_32
    :try_start_32
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_58

    :goto_35
    iget-object v0, v2, Lcom/spotify/mobile/android/spotlets/collection/service/Playlist;->uri:Ljava/lang/String;

    return-object v0

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "sp://playlist/v1/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :catch_4c
    move-exception v0

    const-string v3, "createPlaylist().JsonProcessingException"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_32

    :catch_58
    move-exception v0

    const-string v0, "getIdentityToken() was interrupted."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_35
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-static {p0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;->b:Lcom/spotify/cosmos/android/Resolver;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;->b:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;->b:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.spotify.mobile.android.spotlets.collection.service.AnnotateService.action.ANNOTATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in AnnotateUploadService."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    const-string v0, "playlist_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image_uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "folder_uri"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "add_uri"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_91

    const-string v0, "Creating new playlist."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v3, v4, v5}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    :cond_5e
    :goto_5e
    if-nez v1, :cond_62

    if-eqz v2, :cond_26

    :cond_62
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "title"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "description"

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "image_uri"

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "playlist_uri"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/music/internal/provider/annotate/a;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->a(Landroid/content/Context;)V

    goto :goto_26

    :cond_91
    if-eqz v3, :cond_5e

    const-string v4, "Renaming playlist %s to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "name"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5e
.end method
