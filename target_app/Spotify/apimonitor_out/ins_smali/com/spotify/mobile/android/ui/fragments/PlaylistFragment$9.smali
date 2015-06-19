.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->g(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/provider/ab;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->Y:[Ljava/lang/String;
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
if-eqz v0, :cond_84
const/4 v0, 0x0
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->M(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_44
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->g(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->r(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
move-result v1
if-nez v1, :cond_44
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->E(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->i(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/paste/a;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v2
iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->d(Ljava/lang/String;)V
:cond_44
const/4 v0, 0x1
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->r(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
move-result v0
if-nez v0, :cond_84
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-static {v1}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->i(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/paste/a;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/paste/a;->a()Landroid/widget/ImageView;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
:cond_84
return-void
.end method