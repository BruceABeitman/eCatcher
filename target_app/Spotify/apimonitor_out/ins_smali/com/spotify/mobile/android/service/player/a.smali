.class public final Lcom/spotify/mobile/android/service/player/a;
.super Landroid/os/Binder;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/d;
.field final synthetic a:Lcom/spotify/mobile/android/service/player/PlayerStateService;
.method public constructor <init>(Lcom/spotify/mobile/android/service/player/PlayerStateService;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/player/a;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/spotify/mobile/android/service/player/a/g;
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->a(Lcom/spotify/mobile/android/service/player/a/g;)V
return-void
.end method
.method public final bridge synthetic b(Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/spotify/mobile/android/service/player/a/g;
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a;->a:Lcom/spotify/mobile/android/service/player/PlayerStateService;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/player/PlayerStateService;->b(Lcom/spotify/mobile/android/service/player/a/g;)V
return-void
.end method