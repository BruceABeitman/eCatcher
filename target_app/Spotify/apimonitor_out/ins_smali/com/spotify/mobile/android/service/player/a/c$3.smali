.class final Lcom/spotify/mobile/android/service/player/a/c$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/service/player/a/c;
.method constructor <init>(Lcom/spotify/mobile/android/service/player/a/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/player/a/c$3;->a:Lcom/spotify/mobile/android/service/player/a/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/service/player/a/e;
iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/c$3;->a:Lcom/spotify/mobile/android/service/player/a/c;
invoke-static {v1}, Lcom/spotify/mobile/android/service/player/a/c;->a(Lcom/spotify/mobile/android/service/player/a/c;)Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/player/a/e;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c$3;->a:Lcom/spotify/mobile/android/service/player/a/c;
invoke-static {v0}, Lcom/spotify/mobile/android/service/player/a/c;->b(Lcom/spotify/mobile/android/service/player/a/c;)Lcom/spotify/mobile/android/service/player/a/d;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/player/a/d;->a(Lcom/spotify/mobile/android/service/player/model/b;)V
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 4
check-cast p2, Lcom/spotify/mobile/android/service/player/model/b;
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c$3;->a:Lcom/spotify/mobile/android/service/player/a/c;
invoke-static {v0}, Lcom/spotify/mobile/android/service/player/a/c;->b(Lcom/spotify/mobile/android/service/player/a/c;)Lcom/spotify/mobile/android/service/player/a/d;
move-result-object v0
invoke-interface {v0, p2}, Lcom/spotify/mobile/android/service/player/a/d;->a(Lcom/spotify/mobile/android/service/player/model/b;)V
return-void
.end method