.class  Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$14;
.super Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$14;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
invoke-direct {p0, p2}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$14;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/Throwable;)V
return-void
.end method
.method protected onResolved(Lcom/spotify/cosmos/router/Response;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$14;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
const-string v1, "sp://echo"
new-instance v2, Ljava/lang/String;
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getBody()[B
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method