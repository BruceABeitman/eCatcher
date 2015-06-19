.class final Lcom/spotify/mobile/android/ui/fragments/logic/m$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/m;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/m$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 8
const-string v0, "error_code"
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyError;->a:Lcom/spotify/mobile/android/util/SpotifyError;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyError;->a()I
move-result v1
invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/SpotifyError;->a(I)Lcom/spotify/mobile/android/util/SpotifyError;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyError;->a:Lcom/spotify/mobile/android/util/SpotifyError;
if-eq v0, v1, :cond_1c
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/m$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/m;->a(Lcom/spotify/mobile/android/ui/fragments/logic/m;)Z
move-result v1
if-eqz v1, :cond_1d
:cond_1c
:goto_1c
return-void
:cond_1d
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyError;->h:Lcom/spotify/mobile/android/util/SpotifyError;
if-ne v0, v1, :cond_46
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/m$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/m$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/m;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x2
invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/m;->a(Lcom/spotify/mobile/android/ui/fragments/logic/m;Landroid/content/Intent;)Landroid/content/Intent;
:goto_31
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/m$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/fragments/logic/m;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/m$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/fragments/logic/m;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/m$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/m$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/m;->c(Lcom/spotify/mobile/android/ui/fragments/logic/m;)Z
goto :goto_1c
:cond_46
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/m$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
new-instance v2, Landroid/content/Intent;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/m$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/fragments/logic/m;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const-class v4, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/m;->a(Lcom/spotify/mobile/android/ui/fragments/logic/m;Landroid/content/Intent;)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/m$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/m;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/m;->b(Lcom/spotify/mobile/android/ui/fragments/logic/m;)Landroid/content/Intent;
move-result-object v1
const-string v2, "error_code"
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyError;->a()I
move-result v0
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
goto :goto_31
.end method