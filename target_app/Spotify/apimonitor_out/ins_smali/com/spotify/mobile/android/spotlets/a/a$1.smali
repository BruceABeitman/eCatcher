.class final Lcom/spotify/mobile/android/spotlets/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/a/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/a/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/a;->j(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/a;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {}, Lcom/spotify/mobile/android/spotlets/a/a;->c()[Ljava/lang/String;
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
.registers 13
const/4 v1, 0x1
const/4 v2, 0x0
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z
move-result v0
if-nez v0, :cond_16f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/a;->a(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z
move-result v0
if-nez v0, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/a;->a(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V
:cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/spotify/mobile/android/spotlets/a/a;->a(Lcom/spotify/mobile/android/spotlets/a/a;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/spotify/mobile/android/spotlets/a/a;->b(Lcom/spotify/mobile/android/spotlets/a/a;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
const/4 v3, 0x2
invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Lcom/spotify/mobile/android/spotlets/a/a;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
const/4 v3, 0x6
invoke-static {p2, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v3
invoke-static {v0, v3}, Lcom/spotify/mobile/android/spotlets/a/a;->a(Lcom/spotify/mobile/android/spotlets/a/a;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
const/4 v3, 0x7
invoke-static {p2, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v3
invoke-static {v0, v3}, Lcom/spotify/mobile/android/spotlets/a/a;->b(Lcom/spotify/mobile/android/spotlets/a/a;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
const/16 v3, 0x9
invoke-static {p2, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v3
invoke-static {v0, v3}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Lcom/spotify/mobile/android/spotlets/a/a;Z)Z
const/16 v0, 0xa
invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
const/16 v3, 0xb
invoke-static {p2, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v3
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Collection;->a(ZZ)Lcom/spotify/mobile/android/util/Collection$State;
move-result-object v0
invoke-static {v4, v0}, Lcom/spotify/mobile/android/spotlets/a/a;->a(Lcom/spotify/mobile/android/spotlets/a/a;Lcom/spotify/mobile/android/util/Collection$State;)Lcom/spotify/mobile/android/util/Collection$State;
const/16 v0, 0xd
invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
const/16 v3, 0xe
invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
const/16 v4, 0xc
invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
const/4 v5, 0x3
invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
const/4 v6, 0x4
invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
const/4 v7, 0x5
invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
iget-object v8, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v8}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/spotlets/a/b;
move-result-object v8
iget-object v9, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v9}, Lcom/spotify/mobile/android/spotlets/a/a;->b(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Lcom/spotify/mobile/android/spotlets/a/b;->c(Ljava/lang/String;)V
iget-object v8, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v8}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/spotlets/a/b;
move-result-object v8
iget-object v9, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v9}, Lcom/spotify/mobile/android/spotlets/a/a;->d(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Ljava/lang/String;)V
iget-object v8, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v8}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/spotlets/a/b;
move-result-object v8
iget-object v9, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v9}, Lcom/spotify/mobile/android/spotlets/a/a;->e(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Lcom/spotify/mobile/android/spotlets/a/b;->b(Ljava/lang/String;)V
iget-object v8, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v8}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/spotlets/a/b;
move-result-object v8
invoke-virtual {v8, v5}, Lcom/spotify/mobile/android/spotlets/a/b;->d(Ljava/lang/String;)V
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/spotlets/a/b;
move-result-object v5
invoke-virtual {v5, v6}, Lcom/spotify/mobile/android/spotlets/a/b;->e(Ljava/lang/String;)V
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/spotlets/a/b;
move-result-object v5
invoke-static {v7}, Lcom/spotify/mobile/android/spotlets/a/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/spotify/mobile/android/spotlets/a/b;->f(Ljava/lang/String;)V
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/spotlets/a/b;
move-result-object v5
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v6}, Lcom/spotify/mobile/android/spotlets/a/a;->f(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/util/Collection$State;
move-result-object v6
invoke-virtual {v5, v6, v0, v3}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Lcom/spotify/mobile/android/util/Collection$State;II)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/spotlets/a/b;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/a/a;->e(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3, v4}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/a;->b(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/a/a;->g(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_13e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/a/a;->b(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/spotify/mobile/android/spotlets/a/a;->d(Lcom/spotify/mobile/android/spotlets/a/a;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/a;->h()Landroid/os/Bundle;
move-result-object v0
const-string v3, "title"
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/a/a;->g(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/a/a;->g(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v3, v4}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
:cond_13e
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
const/16 v0, 0x8
invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-eqz v0, :cond_170
move v0, v1
:goto_149
invoke-static {v3, v0}, Lcom/spotify/mobile/android/spotlets/a/a;->d(Lcom/spotify/mobile/android/spotlets/a/a;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/spotlets/a/b;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/a/a;->h(Lcom/spotify/mobile/android/spotlets/a/a;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/a/b;->b(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/a;->i(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V
:cond_16f
return-void
:cond_170
move v0, v2
goto :goto_149
.end method