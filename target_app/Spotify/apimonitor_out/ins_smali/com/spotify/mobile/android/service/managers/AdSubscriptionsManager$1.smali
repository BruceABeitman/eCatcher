.class  Lcom/spotify/mobile/android/service/managers/AdSubscriptionsManager$1;
.super Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/service/managers/a;
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 6
const-string v0, "Unable to subcribe to video ads = %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 6
check-cast p2, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;
const-string v0, "video ad event received : %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/AdSubscriptionsManager$1;->a:Lcom/spotify/mobile/android/service/managers/a;
invoke-static {v0, p2}, Lcom/spotify/mobile/android/service/managers/a;->a(Lcom/spotify/mobile/android/service/managers/a;Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;)V
return-void
.end method