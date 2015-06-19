.class final Lcom/spotify/mobile/android/ui/fragments/logic/d$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/d;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/d;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/d$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/d;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/d$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/d;->a(Lcom/spotify/mobile/android/ui/fragments/logic/d;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/d$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/d;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/d$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/d;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const-class v3, Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/d;->a(Lcom/spotify/mobile/android/ui/fragments/logic/d;Landroid/content/Intent;)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/d$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/d;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/fragments/logic/d;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/d$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/d;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/fragments/logic/d;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/d$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/d;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/d$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/d;->b(Lcom/spotify/mobile/android/ui/fragments/logic/d;)Z
goto :goto_8
.end method