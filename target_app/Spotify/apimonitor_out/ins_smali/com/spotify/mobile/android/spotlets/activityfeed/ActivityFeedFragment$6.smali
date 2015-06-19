.class  Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$6;
.super Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;Landroid/os/Handler;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$6;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-direct {p0, p2}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$6;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->c()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->notifyDataSetChanged()V
return-void
.end method
.method protected onResolved(Lcom/spotify/cosmos/router/Response;)V
.registers 2
return-void
.end method