.class final Lcom/spotify/mobile/android/ui/activity/DeviceActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/feature/a;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->a(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Z
move-result v0
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->b(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->d(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->c(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->e(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Lcom/spotify/mobile/android/service/feature/c;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/feature/c;->b(Ljava/lang/Object;)V
goto :goto_1c
.end method