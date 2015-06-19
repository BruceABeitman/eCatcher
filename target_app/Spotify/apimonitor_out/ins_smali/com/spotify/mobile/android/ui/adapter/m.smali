.class public final Lcom/spotify/mobile/android/ui/adapter/m;
.super Landroid/support/v4/widget/b;
.source "SourceFile"
.field private final j:Lcom/spotify/mobile/android/ui/contextmenu/f;
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Landroid/graphics/drawable/Drawable;
.field private n:Landroid/graphics/drawable/Drawable;
.field private o:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;)V
.registers 4
invoke-direct {p0, p1}, Landroid/support/v4/widget/b;-><init>(Landroid/content/Context;)V
const v0, 0x7f0f02d0
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/m;->l:Ljava/lang/String;
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ab:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/m;->m:Landroid/graphics/drawable/Drawable;
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->av:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/m;->n:Landroid/graphics/drawable/Drawable;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/k;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/m;->o:Landroid/graphics/drawable/Drawable;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/f;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/m;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
return-void
.end method
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
const v0, 0x7f0101c5
invoke-static {p1, p3, v0}, Lcom/spotify/android/paste/widget/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/e;
move-result-object v0
invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/e;->b(Landroid/view/View;)V
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 15
const/4 v2, 0x1
const/4 v1, 0x0
invoke-static {p1}, Lcom/spotify/android/paste/widget/e;->a(Landroid/view/View;)Lcom/spotify/android/paste/widget/e;
move-result-object v3
new-instance v4, Lcom/spotify/mobile/android/model/f;
invoke-direct {v4}, Lcom/spotify/mobile/android/model/f;-><init>()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/m;->l:Ljava/lang/String;
invoke-virtual {v4, p3, v0}, Lcom/spotify/mobile/android/model/f;->a(Landroid/database/Cursor;Ljava/lang/String;)V
invoke-virtual {v3, v4}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/Object;)V
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/e;->e()Landroid/view/View;
move-result-object v5
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->m()Z
move-result v0
if-eqz v0, :cond_147
const/16 v0, 0x8
:goto_1f
invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;
move-result-object v5
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->m()Z
move-result v0
if-nez v0, :cond_14a
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->o()Z
move-result v0
if-eqz v0, :cond_38
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->n()Z
move-result v0
if-nez v0, :cond_14a
:cond_38
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->d()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v6
invoke-virtual {v0, v6}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v6, p0, Lcom/spotify/mobile/android/ui/adapter/m;->o:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v6}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
invoke-virtual {v0, v5}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
:goto_5d
invoke-virtual {v3, v2}, Lcom/spotify/android/paste/widget/e;->d(Z)V
invoke-virtual {v4, p2}, Lcom/spotify/mobile/android/model/f;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/CharSequence;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->n()Z
move-result v5
if-nez v5, :cond_95
invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->c()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_95
iget-object v5, p0, Lcom/spotify/mobile/android/ui/adapter/m;->d:Landroid/content/Context;
const v6, 0x7f0f02e4
new-array v7, v2, [Ljava/lang/Object;
invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->c()Ljava/lang/String;
move-result-object v8
aput-object v8, v7, v1
invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v5, " \u2022 "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_95
invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->m()Z
move-result v5
if-eqz v5, :cond_198
iget-object v5, p0, Lcom/spotify/mobile/android/ui/adapter/m;->d:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0e0011
invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->e()I
move-result v7
new-array v8, v2, [Ljava/lang/Object;
invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->e()I
move-result v9
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v8, v1
invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->f()I
move-result v5
if-lez v5, :cond_e7
const-string v5, ", "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Lcom/spotify/mobile/android/ui/adapter/m;->d:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f0e0010
invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->f()I
move-result v8
new-array v9, v2, [Ljava/lang/Object;
invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->f()I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v9, v1
invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_e7
:cond_e7
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->g()I
move-result v5
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->h()I
move-result v6
invoke-static {p2, v0, v5, v6}, Lcom/spotify/mobile/android/util/aq;->a(Landroid/content/Context;Landroid/widget/TextView;II)Z
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->u()Z
move-result v0
if-eqz v0, :cond_1ba
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->a()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1ba
move v0, v2
:goto_10e
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/m;->k:Ljava/lang/String;
if-eqz v0, :cond_1bd
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/m;->k:Ljava/lang/String;
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->a()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1bd
:goto_121
invoke-virtual {v3, v2}, Lcom/spotify/android/paste/widget/e;->c(Z)V
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->k()Z
move-result v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Z)V
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->m()Z
move-result v0
if-nez v0, :cond_146
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/m;->d:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/m;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {v0, v1, v4}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Landroid/view/View;)V
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/m;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/Object;)V
:cond_146
return-void
:cond_147
move v0, v1
goto/16 :goto_1f
:cond_14a
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V
sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->s()Z
move-result v0
if-eqz v0, :cond_16c
const v0, 0x7f020198
invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V
goto/16 :goto_5d
:cond_16c
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->m()Z
move-result v0
if-eqz v0, :cond_17e
sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/m;->m:Landroid/graphics/drawable/Drawable;
invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto/16 :goto_5d
:cond_17e
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/f;->o()Z
move-result v0
if-eqz v0, :cond_190
sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/m;->n:Landroid/graphics/drawable/Drawable;
invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto/16 :goto_5d
:cond_190
const v0, 0x7f020197
invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V
goto/16 :goto_5d
:cond_198
iget-object v5, p0, Lcom/spotify/mobile/android/ui/adapter/m;->d:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0e0012
invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->e()I
move-result v7
new-array v8, v2, [Ljava/lang/Object;
invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->e()I
move-result v9
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v8, v1
invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_e7
:cond_1ba
move v0, v1
goto/16 :goto_10e
:cond_1bd
move v2, v1
goto/16 :goto_121
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/m;->k:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/m;->notifyDataSetChanged()V
return-void
.end method