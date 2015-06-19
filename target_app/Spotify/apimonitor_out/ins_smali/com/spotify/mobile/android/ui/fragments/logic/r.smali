.class public abstract Lcom/spotify/mobile/android/ui/fragments/logic/r;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field protected c:Lcom/spotify/mobile/android/util/DialogPresenter;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
return-void
.end method
.method protected abstract a()V
.end method
.method public a(IILandroid/content/Intent;)V
.registers 5
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/r;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/r;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
invoke-virtual {v0, p1, p2, p3}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(IILandroid/content/Intent;)V
:cond_c
return-void
.end method
.method public a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_19
const-string v0, "presenter_tag"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_19
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->l()Landroid/support/v4/app/r;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/DialogPresenter;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/r;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
:cond_19
return-void
.end method
.method public a(Lcom/spotify/mobile/android/util/DialogPresenter;)V
.registers 2
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/r;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a()V
return-void
.end method
.method public abstract c()V
.end method
.method public d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/r;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/r;->c:Lcom/spotify/mobile/android/util/DialogPresenter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/DialogPresenter;->p_()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_14
const-string v1, "presenter_tag"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_14
return-void
.end method