.class public final Lcom/spotify/mobile/android/ui/fragments/f;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.field private a:Lcom/spotify/mobile/android/util/dw;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
return-void
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f030076
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
const-string v1, "file:///android_asset/licenses.xhtml"
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f0f024e
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/f;->a(Z)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->ay:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/f;->a:Lcom/spotify/mobile/android/util/dw;
return-void
.end method
.method public final a(Landroid/view/Menu;)V
.registers 2
invoke-interface {p1}, Landroid/view/Menu;->clear()V
return-void
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/f;->a:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/f;->a:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method