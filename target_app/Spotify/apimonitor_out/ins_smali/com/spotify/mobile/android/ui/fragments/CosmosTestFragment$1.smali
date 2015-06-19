.class final Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$1;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onServiceConnected(Lcom/spotify/cosmos/android/Resolver;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$1; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Connected to service"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$1; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onServiceConnectionFailed(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
.registers 7
const-string v0, "Connection to service failed: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p2}, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->name()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public final onServiceDisconnected(Lcom/spotify/cosmos/android/Resolver;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$1; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Service disconnected"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$1; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method