.class  Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$17;
.super Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.source "SourceFile"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$17;->b:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$17;->a:Ljava/lang/String;
invoke-direct {p0, p2}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$17;->b:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/Throwable;)V
return-void
.end method
.method protected onResolved(Lcom/spotify/cosmos/router/Response;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$17;->b:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$17;->b:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
const-string v1, "player"
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$17;->a:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method