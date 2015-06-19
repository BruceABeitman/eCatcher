.class final Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/logic/g;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->d(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3$1;-><init>(Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method