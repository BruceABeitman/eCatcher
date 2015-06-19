.class final Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4$1;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4$1;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
const v1, 0x7f0a0224
invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4$1;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;
iget-object v1, v1, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/az;->a(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V
return-void
.end method