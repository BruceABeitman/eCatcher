.class final Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;
.field final synthetic a:Z
.field final synthetic b:J
.field final synthetic c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;ZJ)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->a:Z
iput-wide p3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->b:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V
.registers 9
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->d(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->a:Z
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->e(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V
:cond_17
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v0
array-length v1, v0
if-lez v1, :cond_4e
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v1
array-length v1, v1
if-nez v1, :cond_79
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->b(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;
move-result-object v1
array-length v0, v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->f(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->d()I
move-result v2
invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(II)V
:goto_3d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->merge(Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->g(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/a;Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V
:cond_4e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->d(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->isEmpty()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->b(Lcom/spotify/mobile/android/spotlets/activityfeed/a;Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->h(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->b(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;
move-result-object v0
iget-wide v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->b:J
invoke-virtual/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(JJJ)V
return-void
:cond_79
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->b(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v2
array-length v2, v2
array-length v5, v0
add-int/2addr v2, v5
array-length v0, v0
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->b(II)V
goto :goto_3d
.end method
.method public final a(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 10
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v0
array-length v0, v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->d(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V
:cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->h(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->b(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;
move-result-object v0
iget-wide v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;->b:J
invoke-virtual/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(JJJ)V
return-void
.end method