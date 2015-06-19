.class final Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;->a(Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;)Landroid/widget/Button;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
return-void
.end method