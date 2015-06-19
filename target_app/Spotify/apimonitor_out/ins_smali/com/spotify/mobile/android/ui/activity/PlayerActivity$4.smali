.class final Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/logic/g;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->f(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4$1;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method