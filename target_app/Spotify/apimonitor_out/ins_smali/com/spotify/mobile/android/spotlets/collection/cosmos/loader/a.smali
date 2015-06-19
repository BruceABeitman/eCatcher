.class public final Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/collection/a/a;
.field private static final a:Ljava/util/List;
.field private static final b:Lcom/spotify/mobile/android/util/cw;
.field private static final c:Lcom/spotify/mobile/android/util/cw;
.field private static final d:Lcom/spotify/mobile/android/util/cw;
.field private static final e:Lcom/spotify/mobile/android/util/cw;
.field private static f:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/Policy;
.field private g:Landroid/os/Handler;
.field private final h:Lcom/spotify/cosmos/android/Resolver;
.field private final i:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
.field private final j:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;
.field private final k:Lcom/fasterxml/jackson/databind/ObjectMapper;
.field private l:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumsModel;
.field private m:Lcom/spotify/cosmos/android/Subscription;
.field private n:I
.field private o:I
.field private p:Ljava/lang/String;
.field private q:Lcom/spotify/mobile/android/util/cw;
.field private final r:Ljava/lang/String;
.field private s:Z
.field private t:Z
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x1
new-instance v0, Lcom/spotify/mobile/android/util/cw;
const-string v1, "name"
const v2, 0x7f0f03ab
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->b:Lcom/spotify/mobile/android/util/cw;
new-instance v0, Lcom/spotify/mobile/android/util/cw;
const-string v1, "artist.name"
const v2, 0x7f0f03a5
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->b:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cw;->a(Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->c:Lcom/spotify/mobile/android/util/cw;
new-instance v0, Lcom/spotify/mobile/android/util/cw;
const-string v1, "addTime"
const v2, 0x7f0f03aa
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/util/cw;->a(Z)Lcom/spotify/mobile/android/util/cw;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->d:Lcom/spotify/mobile/android/util/cw;
new-instance v0, Lcom/spotify/mobile/android/util/cw;
const-string v1, "mostPlayedRank"
const v2, 0x7f0f03a8
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;IZ)V
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->d:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cw;->a(Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->e:Lcom/spotify/mobile/android/util/cw;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->a:Ljava/util/List;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->b:Lcom/spotify/mobile/android/util/cw;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->a:Ljava/util/List;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->c:Lcom/spotify/mobile/android/util/cw;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->a:Ljava/util/List;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->d:Lcom/spotify/mobile/android/util/cw;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->a:Ljava/util/List;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->e:Lcom/spotify/mobile/android/util/cw;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;-><init>()V
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string v2, "link"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "collectionLink"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "name"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "numTracks"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "offline"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "syncProgress"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "covers"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "year"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "complete"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;->setListAttributes(Ljava/util/Map;)V
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string v2, "link"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "collectionLink"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "name"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "isFollowed"
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;->setArtistAttributes(Ljava/util/Map;)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;-><init>()V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;->setListPolicy(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/Policy;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/Policy;-><init>(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->f:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/Policy;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;Ljava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x1e
iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->o:I
new-instance v0, Landroid/os/Handler;
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->g:Landroid/os/Handler;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->j:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->p:Ljava/lang/String;
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->c:Lcom/spotify/mobile/android/util/cw;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->q:Lcom/spotify/mobile/android/util/cw;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->r:Ljava/lang/String;
new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->k:Lcom/fasterxml/jackson/databind/ObjectMapper;
new-instance v0, Lcom/spotify/cosmos/android/DeferredResolver;
invoke-direct {v0, p1}, Lcom/spotify/cosmos/android/DeferredResolver;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->h:Lcom/spotify/cosmos/android/Resolver;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->h:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/Player;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->h:Lcom/spotify/cosmos/android/Resolver;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;-><init>(Lcom/spotify/cosmos/android/Resolver;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->i:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->i:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
new-instance v1, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/CosmosAlbumsDataLoader$1;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->g:Landroid/os/Handler;
const-class v3, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
invoke-direct {v1, p0, v2, v3}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/CosmosAlbumsDataLoader$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->subscribe(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->j:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumsModel;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumsModel;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->l:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumsModel;
return-object p1
.end method
.method public final a()V
.registers 7
const/4 v1, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
const-string v2, "sp://core-collection/unstable/<username>/list/albums/all"
invoke-direct {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->r:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->q:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->a(Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->p:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
move-result-object v0
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->s:Z
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->a(Z)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
move-result-object v0
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->t:Z
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->b(Z)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
move-result-object v2
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->d:Lcom/spotify/mobile/android/util/cw;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->q:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/cw;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_74
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->e:Lcom/spotify/mobile/android/util/cw;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->q:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/cw;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_74
const/4 v0, 0x1
:goto_3b
invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->c(Z)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
move-result-object v0
iget v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->n:I
iget v3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->o:I
invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->a(II)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->a()Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->b()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->m:Lcom/spotify/cosmos/android/Subscription;
if-eqz v2, :cond_58
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->m:Lcom/spotify/cosmos/android/Subscription;
invoke-interface {v2}, Lcom/spotify/cosmos/android/Subscription;->unsubscribe()Z
:try_start_58
:cond_58
sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->f:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/Policy;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->subscribe(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->h:Lcom/spotify/cosmos/android/Resolver;
new-instance v3, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/CosmosAlbumsDataLoader$2;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->g:Landroid/os/Handler;
const-class v5, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumsModel;
invoke-direct {v3, p0, v4, v5}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/CosmosAlbumsDataLoader$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v2, v0, v3}, Lcom/spotify/cosmos/android/Resolver;->subscribe(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->m:Lcom/spotify/cosmos/android/Subscription;
:try_end_73
.catch Lcom/spotify/mobile/android/cosmos/ParserException; {:try_start_58 .. :try_end_73} :catch_76
:goto_73
return-void
:cond_74
move v0, v1
goto :goto_3b
:catch_76
move-exception v0
const-string v2, "Failed to serialize DecorationPolicy"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->j:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/ParserException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;->a(Ljava/lang/String;)V
goto :goto_73
.end method
.method public final a(II)V
.registers 3
iput p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->n:I
iput p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->o:I
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->l:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumsModel;
if-eqz v0, :cond_11
const-string v0, "model"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->k:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->l:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumsModel;
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:try_end_11
.catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_11} :catch_12
:goto_11
:cond_11
return-void
:catch_12
move-exception v0
const-string v1, ""
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_11
.end method
.method public final a(Lcom/spotify/mobile/android/util/cw;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->q:Lcom/spotify/mobile/android/util/cw;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->p:Ljava/lang/String;
return-void
.end method
.method public final a(ZZ)V
.registers 3
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->s:Z
iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->t:Z
return-void
.end method
.method public final b()V
.registers 1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->a()V
return-void
.end method
.method public final b(Landroid/os/Bundle;)V
.registers 6
if-eqz p1, :cond_21
:try_start_2
const-string v0, "model"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_21
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->j:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->k:Lcom/fasterxml/jackson/databind/ObjectMapper;
const-class v3, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumsModel;
invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;->a(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;)Z
:try_end_19
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_1d
move-result v0
if-eqz v0, :cond_21
:goto_1c
return-void
:catch_1d
move-exception v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Exception;)V
:cond_21
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->a()V
goto :goto_1c
.end method
.method public final c()Ljava/util/List;
.registers 2
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->a:Ljava/util/List;
return-object v0
.end method
.method public final d()Lcom/spotify/mobile/android/util/cw;
.registers 2
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->c:Lcom/spotify/mobile/android/util/cw;
return-object v0
.end method
.method public final e()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->h:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
return-void
.end method