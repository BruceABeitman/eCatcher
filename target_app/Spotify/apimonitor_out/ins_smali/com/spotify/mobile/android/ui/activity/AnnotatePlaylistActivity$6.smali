.class final Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const-string v4, "playlist_uri=?"
const/4 v0, 0x1
new-array v5, v0, [Ljava/lang/String;
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->k(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v1
aput-object v1, v5, v0
const-string v6, "_id DESC"
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
sget-object v2, Lcom/spotify/music/internal/provider/annotate/a;->a:Landroid/net/Uri;
const/4 v3, 0x0
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 8
const/4 v4, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
check-cast p2, Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z
move-result v3
invoke-static {v0, v3}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->b(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->l(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/EditText;
move-result-object v3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->i(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
move-result v0
if-nez v0, :cond_f4
move v0, v1
:goto_1d
invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->m(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/EditText;
move-result-object v3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->i(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
move-result v0
if-nez v0, :cond_f7
move v0, v1
:goto_2f
invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->n(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/view/View;
move-result-object v3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->i(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
move-result v0
if-eqz v0, :cond_fa
move v0, v2
:goto_41
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->j(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/Button;
move-result-object v3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->i(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
move-result v0
if-nez v0, :cond_fe
move v0, v1
:goto_53
invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->o(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/ImageView;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->i(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
move-result v3
if-nez v3, :cond_101
:goto_64
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->i(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
move-result v0
if-eqz v0, :cond_104
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
const-string v1, "title"
invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->a(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
const-string v1, "description"
invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->b(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
const-string v1, "image_uri"
invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->p(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_b3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->l(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/EditText;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->p(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_b3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->q(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_ca
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->m(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/EditText;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->q(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_ca
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->r(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->r(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Landroid/net/Uri;)V
:goto_e1
:cond_e1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->e()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0157
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->s(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/support/v4/app/z;
move-result-object v2
invoke-virtual {v0, v1, v4, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
:cond_f4
move v0, v2
goto/16 :goto_1d
:cond_f7
move v0, v2
goto/16 :goto_2f
:cond_fa
const/16 v0, 0x8
goto/16 :goto_41
:cond_fe
move v0, v2
goto/16 :goto_53
:cond_101
move v1, v2
goto/16 :goto_64
:cond_104
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->a(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->b(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Ljava/lang/String;)Ljava/lang/String;
goto :goto_e1
.end method