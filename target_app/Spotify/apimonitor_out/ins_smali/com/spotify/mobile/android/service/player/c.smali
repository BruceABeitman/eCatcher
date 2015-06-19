.class public final Lcom/spotify/mobile/android/service/player/c;
.super Lcom/spotify/mobile/android/service/connections/f;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const-class v0, Lcom/spotify/mobile/android/service/player/PlayerStateService;
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/service/connections/f;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
return-void
.end method
.method public final h()Lcom/spotify/mobile/android/service/player/a/f;
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/c;->g()Landroid/os/Binder;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/a;
iget-object v0, v0, Lcom/spotify/mobile/android/service/player/a;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->a()Lcom/spotify/mobile/android/service/player/a/f;
move-result-object v0
return-object v0
.end method