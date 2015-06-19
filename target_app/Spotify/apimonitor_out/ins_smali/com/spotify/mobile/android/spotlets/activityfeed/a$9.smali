.class final Lcom/spotify/mobile/android/spotlets/activityfeed/a$9;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/cb;
.field final synthetic a:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$9;->a:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/PlaybackListener;Ljava/util/EnumSet;)V
.registers 7
invoke-static {}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->G()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v0
if-eqz v0, :cond_55
invoke-static {}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->H()Z
move-result v0
if-nez v0, :cond_55
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->j()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_55
invoke-static {}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->G()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getResource()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getUri()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->j()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_55
invoke-static {}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->G()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getStreams()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->getIncludeRequestingUser()Z
move-result v0
if-nez v0, :cond_55
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$9;->a:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;-><init>(Landroid/content/Context;)V
invoke-static {}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->H()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->a(Z)V
invoke-static {}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->G()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$9$1;
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
invoke-direct {v2, p0, v3, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$9$1;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a$9;Landroid/os/Handler;Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)V
:cond_55
return-void
.end method