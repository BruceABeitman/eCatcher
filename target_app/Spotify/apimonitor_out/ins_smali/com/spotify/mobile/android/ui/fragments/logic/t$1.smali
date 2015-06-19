.class final Lcom/spotify/mobile/android/ui/fragments/logic/t$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/c;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/t;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/t;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/util/List;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/t;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/t;->q()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/t;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/t;->a(Lcom/spotify/mobile/android/ui/fragments/logic/t;)Z
move-result v0
if-nez v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/t;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/t;->b(Lcom/spotify/mobile/android/ui/fragments/logic/t;)Lcom/spotify/mobile/android/service/connections/b;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->b()Lcom/spotify/mobile/android/service/ConnectDevice;
move-result-object v0
if-eqz v0, :cond_10
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/t$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/t;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/t;->a(Lcom/spotify/mobile/android/ui/fragments/logic/t;Lcom/spotify/mobile/android/service/ConnectDevice;)V
goto :goto_10
.end method