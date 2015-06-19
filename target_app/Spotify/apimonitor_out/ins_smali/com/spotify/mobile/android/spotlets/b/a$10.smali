.class final Lcom/spotify/mobile/android/spotlets/b/a$10;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/player/a/g;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/b/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->e(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
move-result-object v0
div-int/lit16 v1, p1, 0x3e8
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->setProgress(I)V
return-void
.end method
.method public final a(Lcom/google/common/base/Optional;)V
.registers 7
const/4 v4, 0x4
const/4 v3, 0x0
const v2, 0x7f0200fd
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/b/a;->a(Lcom/spotify/mobile/android/spotlets/b/a;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
invoke-virtual {p1}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_de
invoke-virtual {p1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/c;->d()Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->k(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getTrackName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->l(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getArtistName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b()Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->m(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
invoke-virtual {p1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/c;->a()Z
move-result v0
if-eqz v0, :cond_ca
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->n(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {p1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/c;->c()Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
move-result-object v1
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b()Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->n(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
:goto_8d
invoke-virtual {p1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/c;->b()Z
move-result v0
if-eqz v0, :cond_d4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->o(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {p1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/c;->e()Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
move-result-object v1
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b()Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->o(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
:goto_c9
return-void
:cond_ca
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->n(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_8d
:cond_d4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->o(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_c9
:cond_de
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->k(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/TextView;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->l(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/TextView;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->n(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->m(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->o(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_c9
.end method
.method public final a(Lcom/spotify/mobile/android/service/player/model/b;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->j(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/spotlets/b/b;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/b/b;->a(Lcom/spotify/mobile/android/service/player/model/b;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/player/model/d;)V
.registers 6
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->a()Z
move-result v0
if-eqz v0, :cond_90
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_10
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->f(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageButton;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->k()Lcom/spotify/mobile/android/model/c;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/b/a;->a(Lcom/spotify/mobile/android/spotlets/b/a;Lcom/spotify/mobile/android/model/c;)Lcom/spotify/mobile/android/model/c;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->h(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->g(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/model/c;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/b/a;->k()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->l()Z
move-result v3
invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/model/c;->b(Landroid/content/res/Resources;Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->o()Z
move-result v0
if-eqz v0, :cond_9c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/j;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_4f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->i(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageButton;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->e(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->c()I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->setMax(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->e(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->b()I
move-result v1
div-int/lit16 v1, v1, 0x3e8
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->setProgress(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->e(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->f()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->setEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->e(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->refreshDrawableState()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/b/a;->a(Lcom/spotify/mobile/android/spotlets/b/a;Lcom/spotify/mobile/android/service/player/model/d;)V
return-void
:cond_90
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/j;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto/16 :goto_10
:cond_9c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$10;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/j;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_4f
.end method