.class public final Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/content/Context;
.field private b:Lcom/spotify/cosmos/android/Resolver;
.field private c:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->a:Landroid/content/Context;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->c:Z
return-void
.end method
.method private c()Lcom/spotify/cosmos/android/Resolver;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->b:Lcom/spotify/cosmos/android/Resolver;
if-nez v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->b:Lcom/spotify/cosmos/android/Resolver;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->b:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
:cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->b:Lcom/spotify/cosmos/android/Resolver;
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)V
.registers 9
const/4 v4, 0x1
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->c:Z
if-nez v0, :cond_34
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getStreams()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->setIncludeRequestingUser(Z)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getId()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/activityfeed/client/BouncerClient$1;
new-instance v2, Landroid/os/Handler;
invoke-direct {v2}, Landroid/os/Handler;-><init>()V
invoke-direct {v1, p0, v2, p2, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/BouncerClient$1;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;Landroid/os/Handler;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->c()Lcom/spotify/cosmos/android/Resolver;
move-result-object v2
const-string v3, "hm://bouncer/stream/%s"
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object v0, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->post(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
invoke-virtual {v2, v0, v1}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
:cond_34
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)V
.registers 11
const/16 v0, 0x80
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->c()Lcom/spotify/cosmos/android/Resolver;
move-result-object v1
new-instance v2, Lcom/spotify/bouncer/proto/SocialStory$Builder;
invoke-direct {v2}, Lcom/spotify/bouncer/proto/SocialStory$Builder;-><init>()V
invoke-virtual {v2, p1}, Lcom/spotify/bouncer/proto/SocialStory$Builder;->uri(Ljava/lang/String;)Lcom/spotify/bouncer/proto/SocialStory$Builder;
move-result-object v2
sget-object v3, Lcom/spotify/bouncer/proto/SocialStory$StoryType;->d:Lcom/spotify/bouncer/proto/SocialStory$StoryType;
invoke-virtual {v2, v3}, Lcom/spotify/bouncer/proto/SocialStory$Builder;->type(Lcom/spotify/bouncer/proto/SocialStory$StoryType;)Lcom/spotify/bouncer/proto/SocialStory$Builder;
move-result-object v2
new-instance v3, Lcom/spotify/bouncer/proto/Metadata$Builder;
invoke-direct {v3}, Lcom/spotify/bouncer/proto/Metadata$Builder;-><init>()V
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v6
if-ge v6, v0, :cond_29
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
:cond_29
invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/bouncer/proto/Metadata$Builder;->summary(Ljava/lang/String;)Lcom/spotify/bouncer/proto/Metadata$Builder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/bouncer/proto/Metadata$Builder;->build()Lcom/spotify/bouncer/proto/Metadata;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/spotify/bouncer/proto/SocialStory$Builder;->metadata(Lcom/spotify/bouncer/proto/Metadata;)Lcom/spotify/bouncer/proto/SocialStory$Builder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/bouncer/proto/SocialStory$Builder;->build()Lcom/spotify/bouncer/proto/SocialStory;
move-result-object v0
const-string v2, "hm://bouncer/story"
invoke-virtual {v0}, Lcom/spotify/bouncer/proto/SocialStory;->a()[B
move-result-object v0
invoke-static {v2, v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->postBytes(Ljava/lang/String;[B)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
invoke-virtual {v1, v0, p3}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->c:Z
return-void
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->c:Z
return v0
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->b:Lcom/spotify/cosmos/android/Resolver;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->b:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
:cond_9
return-void
.end method