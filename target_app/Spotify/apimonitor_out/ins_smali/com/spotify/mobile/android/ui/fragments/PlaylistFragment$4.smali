.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v3, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->i:[Ljava/lang/String;
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
.registers 11
const/16 v6, 0xa
const/16 v5, 0x9
const/16 v3, 0x8
const/4 v2, 0x1
const/4 v1, 0x0
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_16
invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-nez v0, :cond_17
:cond_16
:goto_16
return-void
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/4 v4, 0x5
invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->c(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->d(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/4 v4, 0x3
invoke-static {p2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/4 v4, 0x4
invoke-static {p2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->c(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/4 v4, 0x6
invoke-static {p2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->d(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {p2, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->e(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/16 v4, 0xb
invoke-static {p2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->f(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/16 v4, 0xc
invoke-static {p2, v4}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->g(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {p2, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->h(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {p2, v6}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->i(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/16 v0, 0x13
invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
if-nez v0, :cond_8b
const/16 v0, 0x14
invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
if-eqz v0, :cond_210
:cond_8b
move v0, v2
:goto_8c
invoke-static {v4, v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/4 v4, 0x2
invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/4 v4, 0x7
invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
invoke-static {p2, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
if-eqz v0, :cond_b7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const v5, 0x7f0f02e8
invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(I)Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->c(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
:cond_b7
invoke-static {p2, v6}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
if-eqz v0, :cond_cb
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const v5, 0x7f0f02e9
invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(I)Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->c(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
:cond_cb
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->c(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/16 v4, 0x12
invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->d(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->r(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
move-result v0
if-nez v0, :cond_106
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
const/16 v4, 0xf
invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
const/16 v5, 0x10
invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
move-result-wide v5
const/16 v7, 0x11
invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I
move-result v7
invoke-static {v0, v4, v5, v6, v7}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;JI)V
:cond_106
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->h(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->e(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->h()Landroid/os/Bundle;
move-result-object v0
const-string v4, "title"
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->u(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->r(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
move-result v0
if-nez v0, :cond_213
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->t(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->u(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V
:goto_139
const/16 v0, 0xe
invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
iget-boolean v4, v4, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->Z:Z
if-nez v4, :cond_15e
sget-object v4, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v4
if-eqz v4, :cond_22b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->w(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/view/View;
move-result-object v0
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->v(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I
move-result v4
if-lez v4, :cond_228
:goto_15b
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_15e
:cond_15e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "playlist_owner_uri"
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->g(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0193
const/4 v3, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->x(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/support/v4/app/z;
move-result-object v4
invoke-virtual {v0, v1, v3, v4}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
move-result v0
if-nez v0, :cond_23a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->f(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
move-result v0
if-nez v0, :cond_23a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->y(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
iget-boolean v0, v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->Z:Z
if-nez v0, :cond_1c2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->t(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f0900c1
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(I)V
:goto_1c2
:cond_1c2
const/16 v0, 0xd
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->B(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_1e4
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->r(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
move-result v1
if-nez v1, :cond_1f6
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->C(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
move-result v1
if-eqz v1, :cond_1f6
:cond_1e4
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->f(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->r(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
move-result v0
if-nez v0, :cond_1f6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->D(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
:cond_1f6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->r(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
move-result v0
if-nez v0, :cond_203
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->E(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
:cond_203
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->b:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V
goto/16 :goto_16
:cond_210
move v0, v1
goto/16 :goto_8c
:cond_213
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->u(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
move-result-object v5
invoke-interface {v0, v4, v5}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
goto/16 :goto_139
:cond_228
move v1, v3
goto/16 :goto_15b
:cond_22b
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->w(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/view/View;
move-result-object v4
if-lez v0, :cond_238
:goto_233
invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_15e
:cond_238
move v1, v3
goto :goto_233
:cond_23a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->y(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->z(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I
move-result v1
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->A(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I
move-result v3
invoke-virtual {v0, v1, v3}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(II)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
iget-boolean v0, v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->Z:Z
if-nez v0, :cond_1c2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->t(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v3, 0x7f010186
invoke-static {v1, v3}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(I)V
goto/16 :goto_1c2
.end method