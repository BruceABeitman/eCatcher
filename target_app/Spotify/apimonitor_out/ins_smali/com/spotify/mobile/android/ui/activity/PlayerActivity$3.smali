.class final Lcom/spotify/mobile/android/ui/activity/PlayerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/feature/a;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->c(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->d(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->f(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->e(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_1c
return-void
.end method