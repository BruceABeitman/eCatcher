.class final Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3$1;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3$1;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->a(Lcom/spotify/mobile/android/ui/activity/s;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3$1;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
const-string v1, "tag_device_fragment"
invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/b;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3$1;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;
iget-object v1, v1, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/az;->a(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3$1;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;
iget-object v1, v1, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->a(Lcom/spotify/mobile/android/ui/activity/s;)V
return-void
.end method