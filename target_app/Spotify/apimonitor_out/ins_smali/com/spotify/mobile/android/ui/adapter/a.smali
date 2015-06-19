.class public final Lcom/spotify/mobile/android/ui/adapter/a;
.super Landroid/support/v4/widget/b;
.source "SourceFile"
.field private j:Ljava/lang/String;
.field private k:Landroid/graphics/drawable/Drawable;
.field private l:Landroid/graphics/drawable/Drawable;
.field private m:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/widget/b;-><init>(Landroid/content/Context;)V
const v0, 0x7f0f02d0
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/a;->j:Ljava/lang/String;
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ab:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/a;->k:Landroid/graphics/drawable/Drawable;
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->av:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/a;->l:Landroid/graphics/drawable/Drawable;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/k;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/a;->m:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public final synthetic a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
new-instance v1, Lcom/spotify/android/paste/widget/ListItemView;
invoke-direct {v1, p1}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/a;->d:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f03005d
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->c(Landroid/view/View;)V
return-object v1
.end method
.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 13
const/4 v8, 0x0
const/4 v7, 0x1
check-cast p1, Lcom/spotify/android/paste/widget/ListItemView;
new-instance v1, Lcom/spotify/mobile/android/model/f;
invoke-direct {v1}, Lcom/spotify/mobile/android/model/f;-><init>()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/a;->j:Ljava/lang/String;
invoke-virtual {v1, p3, v0}, Lcom/spotify/mobile/android/model/f;->a(Landroid/database/Cursor;Ljava/lang/String;)V
invoke-virtual {p1, v7}, Lcom/spotify/android/paste/widget/ListItemView;->b(Z)V
invoke-virtual {p1, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v1}, Lcom/spotify/mobile/android/model/f;->m()Z
move-result v0
if-nez v0, :cond_2a
invoke-virtual {v1}, Lcom/spotify/mobile/android/model/f;->o()Z
move-result v0
if-eqz v0, :cond_f8
invoke-virtual {v1}, Lcom/spotify/mobile/android/model/f;->n()Z
move-result v0
if-eqz v0, :cond_f8
:cond_2a
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V
sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/model/f;->m()Z
move-result v0
if-eqz v0, :cond_ec
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/a;->k:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_49
invoke-virtual {v1, p2}, Lcom/spotify/mobile/android/model/f;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {p1}, Lcom/spotify/android/paste/widget/ListItemView;->h()Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;
invoke-virtual {v1}, Lcom/spotify/mobile/android/model/f;->g()I
move-result v2
invoke-virtual {v1}, Lcom/spotify/mobile/android/model/f;->h()I
move-result v3
invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->a(II)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v1}, Lcom/spotify/mobile/android/model/j;->n()Z
move-result v2
if-nez v2, :cond_8f
invoke-interface {v1}, Lcom/spotify/mobile/android/model/j;->c()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_8f
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/a;->d:Landroid/content/Context;
const v3, 0x7f0f02e4
new-array v4, v7, [Ljava/lang/Object;
invoke-interface {v1}, Lcom/spotify/mobile/android/model/j;->c()Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v8
invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, " \u2014 "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_8f
invoke-interface {v1}, Lcom/spotify/mobile/android/model/j;->m()Z
move-result v2
if-eqz v2, :cond_11f
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/a;->d:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0011
invoke-interface {v1}, Lcom/spotify/mobile/android/model/j;->e()I
move-result v4
new-array v5, v7, [Ljava/lang/Object;
invoke-interface {v1}, Lcom/spotify/mobile/android/model/j;->e()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v8
invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v1}, Lcom/spotify/mobile/android/model/j;->f()I
move-result v2
if-lez v2, :cond_e1
const-string v2, ", "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/a;->d:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e0010
invoke-interface {v1}, Lcom/spotify/mobile/android/model/j;->f()I
move-result v5
new-array v6, v7, [Ljava/lang/Object;
invoke-interface {v1}, Lcom/spotify/mobile/android/model/j;->f()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v6, v8
invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_e1
:cond_e1
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
invoke-virtual {p1, v7}, Lcom/spotify/android/paste/widget/ListItemView;->setEnabled(Z)V
return-void
:cond_ec
sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/a;->l:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto/16 :goto_49
:cond_f8
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v1}, Lcom/spotify/mobile/android/model/f;->d()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/a;->m:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v3}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
goto/16 :goto_49
:cond_11f
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/a;->d:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0012
invoke-interface {v1}, Lcom/spotify/mobile/android/model/j;->e()I
move-result v4
new-array v5, v7, [Ljava/lang/Object;
invoke-interface {v1}, Lcom/spotify/mobile/android/model/j;->e()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v5, v8
invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_e1
.end method