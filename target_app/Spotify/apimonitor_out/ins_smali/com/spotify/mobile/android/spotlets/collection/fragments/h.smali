.class public final Lcom/spotify/mobile/android/spotlets/collection/fragments/h;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/l;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.field private Y:Ljava/lang/String;
.field private Z:Ljava/lang/String;
.field private aa:Lcom/spotify/mobile/android/util/dw;
.field private i:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
return-void
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 7
const v0, 0x7f03008b
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
new-instance v1, Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->a(Landroid/widget/ListAdapter;)V
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->Z:Ljava/lang/String;
if-nez v0, :cond_c
const v0, 0x7f0f02e5
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->Z:Ljava/lang/String;
goto :goto_b
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "playlist_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->Y:Ljava/lang/String;
const-string v1, "title"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->Z:Ljava/lang/String;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->E:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->Y:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->i:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->i:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->aa:Lcom/spotify/mobile/android/util/dw;
return-void
.end method
.method public final a(Landroid/view/Menu;)V
.registers 2
invoke-interface {p1}, Landroid/view/Menu;->clear()V
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 6
return-void
.end method
.method public final b(Z)V
.registers 3
const/4 v0, 0x1
invoke-super {p0, v0}, Landroid/support/v4/app/x;->b(Z)V
return-void
.end method
.method public final g_()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->Y:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->aa:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;->aa:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method