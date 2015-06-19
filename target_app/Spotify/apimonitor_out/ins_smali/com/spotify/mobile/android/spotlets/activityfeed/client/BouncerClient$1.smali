.class  Lcom/spotify/mobile/android/spotlets/activityfeed/client/BouncerClient$1;
.super Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
.field final synthetic c:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;Landroid/os/Handler;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/BouncerClient$1;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/BouncerClient$1;->a:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/BouncerClient$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
invoke-direct {p0, p2}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/BouncerClient$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getStreams()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->setIncludeRequestingUser(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/BouncerClient$1;->a:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
invoke-virtual {v0, p1}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;->sendOnError(Ljava/lang/Throwable;)V
return-void
.end method
.method protected onResolved(Lcom/spotify/cosmos/router/Response;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/BouncerClient$1;->a:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
invoke-virtual {v0, p1}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;->sendOnResolved(Lcom/spotify/cosmos/router/Response;)V
return-void
.end method