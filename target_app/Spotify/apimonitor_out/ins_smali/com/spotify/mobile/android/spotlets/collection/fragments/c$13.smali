.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/c;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->E()[Ljava/lang/String;
move-result-object v3
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
.registers 12
const/16 v8, 0x8
const/4 v7, 0x0
check-cast p2, Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/util/ar;
move-result-object v0
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/ar;->a(Ljava/lang/Object;Landroid/database/Cursor;)V
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_1e
invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-nez v0, :cond_1f
:goto_1e
:cond_1e
return-void
:cond_1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Landroid/database/Cursor;)Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v2
invoke-static {p2, v7, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
const/4 v2, 0x1
invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
if-eqz v0, :cond_e2
const/4 v0, 0x7
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v3}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v4
new-instance v5, Lcom/spotify/mobile/android/ui/c/a;
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v6
invoke-direct {v5, v6, v7}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V
invoke-virtual {v4, v5}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;
move-result-object v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v5
invoke-interface {v5}, Lcom/spotify/mobile/android/ui/prettylist/c;->d()Landroid/widget/ImageView;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v4
invoke-virtual {v4, v3}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v4
invoke-virtual {v4, v3}, Lcom/squareup/picasso/ad;->b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v5
invoke-interface {v5}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;
move-result-object v5
invoke-static {v5}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v4
invoke-interface {v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;
move-result-object v4
sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v4
invoke-virtual {v4}, Lcom/spotify/android/paste/widget/EmptyView;->d()Landroid/widget/ImageView;
move-result-object v4
sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I
move-result v5
if-nez v5, :cond_e2
invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/squareup/picasso/ad;->b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-static {v4}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
:cond_e2
if-eqz v1, :cond_e9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->n(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
:cond_e9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
const/4 v1, 0x2
invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
const/4 v1, 0x3
invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
const/4 v1, 0x6
invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
const/4 v1, 0x5
invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "title"
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
if-nez v0, :cond_1e6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
:goto_13d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->i:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/follow/a;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Lcom/spotify/mobile/android/spotlets/follow/a;)Lcom/spotify/mobile/android/spotlets/follow/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->o(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/a;
move-result-object v0
if-eqz v0, :cond_1f7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->o(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/a;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/follow/a;->d()Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Z)Z
:goto_167
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->i:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->p(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/b;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/b;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Z
move-result v0
if-eqz v0, :cond_215
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
const v2, 0x7f0f02bd
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->b(I)Ljava/lang/String;
move-result-object v0
:goto_196
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
const/4 v1, 0x4
invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/h;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_219
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->q(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Z
move-result v0
if-eqz v0, :cond_219
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->e()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V
:goto_1c4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->t(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->r(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->s(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(II)V
goto/16 :goto_1e
:cond_1e6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V
goto/16 :goto_13d
:cond_1f7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {p2, v8}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->Y:Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/d;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/d;)V
goto/16 :goto_167
:cond_215
const-string v0, ""
goto/16 :goto_196
:cond_219
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->e()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V
goto :goto_1c4
.end method