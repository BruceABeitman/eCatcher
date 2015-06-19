.class public final Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected static final a:Lcom/spotify/mobile/android/util/cz;
.field protected static final b:Lcom/spotify/mobile/android/util/cz;
.field private c:Landroid/content/Context;
.field private d:Ljava/lang/String;
.field private e:Z
.field private f:Lcom/spotify/mobile/android/util/cx;
.field private g:Lcom/spotify/cosmos/android/Resolver;
.method static constructor <clinit>()V
.registers 1
const-string v0, "activity_feed_last_story_id"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a:Lcom/spotify/mobile/android/util/cz;
const-string v0, "activity_feed_last_new_story_count"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->b:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->e:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->d:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->e:Z
invoke-static {p1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->f:Lcom/spotify/mobile/android/util/cx;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->d:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->e:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->e:Z
return v0
.end method
.method private f()Lcom/spotify/cosmos/android/Resolver;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->g:Lcom/spotify/cosmos/android/Resolver;
if-nez v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->c:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->g:Lcom/spotify/cosmos/android/Resolver;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->g:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
:cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->g:Lcom/spotify/cosmos/android/Resolver;
return-object v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->g:Lcom/spotify/cosmos/android/Resolver;
if-eqz v0, :cond_b
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->f()Lcom/spotify/cosmos/android/Resolver;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
:cond_b
return-void
.end method
.method protected final a(I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->f:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;)V
.registers 8
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->c()Z
move-result v0
if-nez v0, :cond_54
const-string v0, "hm://social-feed-view"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->d:Ljava/lang/String;
if-eqz v1, :cond_40
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1f
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a$1;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->f()Lcom/spotify/cosmos/android/Resolver;
move-result-object v2
new-instance v3, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$4;
new-instance v4, Landroid/os/Handler;
invoke-direct {v4}, Landroid/os/Handler;-><init>()V
const-class v5, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
invoke-direct {v3, p0, v4, v5, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$4;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;Landroid/os/Handler;Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;)V
invoke-virtual {v2, v0, v3}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
:goto_3f
return-void
:cond_40
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/v2/android/feed"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1f
:cond_54
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
const/4 v1, 0x0
new-array v1, v1, [Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;-><init>([Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V
goto :goto_3f
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;)V
.registers 9
const/4 v6, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->f:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a:Lcom/spotify/mobile/android/util/cz;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_4d
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->f()Lcom/spotify/cosmos/android/Resolver;
move-result-object v2
const-string v0, "hm://social-feed-view/v2/android/feed"
if-eqz v1, :cond_35
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "?%s=%s"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const-string v5, "newer_than"
aput-object v5, v4, v6
const/4 v5, 0x1
aput-object v1, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_35
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$1;
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
const-class v4, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
invoke-direct {v1, p0, v3, v4, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$1;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;Landroid/os/Handler;Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;)V
invoke-virtual {v2, v0, v1}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
:goto_4c
return-void
:cond_4d
invoke-virtual {p0, v6}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a(I)V
invoke-interface {p1, v6}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;->a(I)V
goto :goto_4c
.end method
.method protected final a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_11
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v1
array-length v2, v1
if-lez v2, :cond_11
const/4 v0, 0x0
aget-object v0, v1, v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getId()Ljava/lang/String;
move-result-object v0
:cond_11
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->f:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;)V
.registers 8
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->f()Lcom/spotify/cosmos/android/Resolver;
move-result-object v0
const-string v1, "hm://social-feed-view/v2/android/story/%s/reactions"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$3;
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
const-class v4, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
invoke-direct {v2, p0, v3, v4, p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$3;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;Landroid/os/Handler;Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
return-void
.end method
.method public final b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->e:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->d:Ljava/lang/String;
return-void
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->e:Z
if-nez v0, :cond_a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->d:Ljava/lang/String;
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final d()I
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->f:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->b:Lcom/spotify/mobile/android/util/cz;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;I)I
move-result v0
return v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->d:Ljava/lang/String;
return-object v0
.end method