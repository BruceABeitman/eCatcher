.class  Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;Landroid/os/Handler;Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;->a()V
return-void
.end method
.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 5
check-cast p2, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v1
array-length v1, v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/ActivityFeedClient$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v1
array-length v1, v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;->a(I)V
return-void
.end method