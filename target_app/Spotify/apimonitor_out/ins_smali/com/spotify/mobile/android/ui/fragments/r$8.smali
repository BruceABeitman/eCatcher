.class final Lcom/spotify/mobile/android/ui/fragments/r$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/player/a/g;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/r;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 2
return-void
.end method
.method public final a(Lcom/google/common/base/Optional;)V
.registers 2
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/player/model/b;)V
.registers 7
const/4 v4, 0x0
const/4 v2, 0x1
const/4 v1, 0x0
if-eqz p1, :cond_15
invoke-interface {p1}, Lcom/spotify/mobile/android/service/player/model/b;->a()I
move-result v0
if-eqz v0, :cond_15
invoke-interface {p1, v1}, Lcom/spotify/mobile/android/service/player/model/b;->a(I)Lcom/google/common/base/Optional;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-nez v0, :cond_1e
:cond_15
move v0, v2
:goto_16
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->w(Lcom/spotify/mobile/android/ui/fragments/r;)V
:goto_1d
return-void
:cond_1e
move v0, v1
goto :goto_16
:cond_20
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-interface {p1, v1}, Lcom/spotify/mobile/android/service/player/model/b;->a(I)Lcom/google/common/base/Optional;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-static {v3, v0}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/r;->x(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/r;->b(Lcom/spotify/mobile/android/ui/fragments/r;Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)V
new-instance v0, Lcom/spotify/mobile/android/service/player/model/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/r;->x(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
move-result-object v1
invoke-direct {v0, v4, v1, v4}, Lcom/spotify/mobile/android/service/player/model/c;-><init>(Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/adapter/k;
move-result-object v1
invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/spotify/mobile/android/ui/adapter/k;->a(Lcom/google/common/base/Optional;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/r;->y(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/support/v4/view/ViewPager;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/c;->h()I
move-result v0
invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V
goto :goto_1d
.end method
.method public final a(Lcom/spotify/mobile/android/service/player/model/d;)V
.registers 9
const/16 v3, 0x8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->a()Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/r;->b(Lcom/spotify/mobile/android/ui/fragments/r;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->l()Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/r;->c(Lcom/spotify/mobile/android/ui/fragments/r;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->q()Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/r;->d(Lcom/spotify/mobile/android/ui/fragments/r;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->n()Z
move-result v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/r;->e(Lcom/spotify/mobile/android/ui/fragments/r;Z)Z
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->e()Z
move-result v4
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->m()I
move-result v5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->i(Lcom/spotify/mobile/android/ui/fragments/r;)Z
move-result v0
if-eqz v0, :cond_d9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->q(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->r(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/snackbar/f;
move-result-object v0
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/f;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->s(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/snackbar/e;
move-result-object v0
const v6, 0x7f0f02e3
invoke-interface {v0, v6}, Lcom/spotify/mobile/android/ui/view/snackbar/e;->a(I)V
:goto_5b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->u(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/widget/ImageButton;
move-result-object v6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->t(Lcom/spotify/mobile/android/ui/fragments/r;)Z
move-result v0
if-eqz v0, :cond_117
move v0, v3
:goto_6a
invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->c(Landroid/content/Context;)Z
move-result v0
sget-object v6, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->B:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v6}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v6
if-nez v0, :cond_81
if-eqz v6, :cond_cf
:cond_81
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->v(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/widget/ImageButton;
move-result-object v6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->t(Lcom/spotify/mobile/android/ui/fragments/r;)Z
move-result v0
if-eqz v0, :cond_11a
move v0, v3
:goto_90
invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->v(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/widget/ImageButton;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V
if-nez v5, :cond_11d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->v(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/widget/ImageButton;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/j;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_b1
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/r;->v(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/widget/ImageButton;
move-result-object v4
invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/adapter/k;
move-result-object v0
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/r;->v(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/widget/ImageButton;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I
move-result v4
if-eq v4, v3, :cond_128
:goto_cc
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/k;->a(Z)V
:cond_cf
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->k()Lcom/spotify/mobile/android/model/c;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;Lcom/spotify/mobile/android/model/c;)Lcom/spotify/mobile/android/model/c;
return-void
:cond_d9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v6}, Lcom/spotify/mobile/android/ui/fragments/r;->j(Lcom/spotify/mobile/android/ui/fragments/r;)Z
move-result v6
invoke-static {v0, v6}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->q(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->r(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/snackbar/f;
move-result-object v6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->k(Lcom/spotify/mobile/android/ui/fragments/r;)Z
move-result v0
if-eqz v0, :cond_115
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->t(Lcom/spotify/mobile/android/ui/fragments/r;)Z
move-result v0
if-nez v0, :cond_115
move v0, v1
:goto_104
invoke-interface {v6, v0}, Lcom/spotify/mobile/android/ui/view/snackbar/f;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->s(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/snackbar/e;
move-result-object v0
const v6, 0x7f0f03ad
invoke-interface {v0, v6}, Lcom/spotify/mobile/android/ui/view/snackbar/e;->a(I)V
goto/16 :goto_5b
:cond_115
move v0, v2
goto :goto_104
:cond_117
move v0, v2
goto/16 :goto_6a
:cond_11a
move v0, v2
goto/16 :goto_90
:cond_11d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$8;->a:Lcom/spotify/mobile/android/ui/fragments/r;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/j;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_b1
:cond_128
move v1, v2
goto :goto_cc
.end method