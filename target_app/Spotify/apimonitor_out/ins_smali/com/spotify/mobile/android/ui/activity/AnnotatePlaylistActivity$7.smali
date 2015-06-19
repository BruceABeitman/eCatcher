.class final Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "image_uri"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "name"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "description"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "image_is_annotated"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->k(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->b:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 6
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_e
invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-nez v0, :cond_f
:cond_e
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->p(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
const-string v1, "name"
const-string v2, ""
invoke-static {p2, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->a(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Ljava/lang/String;)Ljava/lang/String;
:cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->q(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_39
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
const-string v1, "description"
const-string v2, ""
invoke-static {p2, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->b(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Ljava/lang/String;)Ljava/lang/String;
:cond_39
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->r(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_56
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
const-string v1, "image_uri"
const-string v2, ""
invoke-static {p2, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Ljava/lang/String;)Ljava/lang/String;
:cond_56
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
const-string v1, "image_is_annotated"
invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;)Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->t(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
move-result v0
if-eqz v0, :cond_87
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->l(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/EditText;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->p(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->m(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/EditText;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->q(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_87
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->f(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/net/Uri;
move-result-object v0
if-nez v0, :cond_9e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->r(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Landroid/net/Uri;)V
:cond_9e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->e()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0157
invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V
goto/16 :goto_e
.end method