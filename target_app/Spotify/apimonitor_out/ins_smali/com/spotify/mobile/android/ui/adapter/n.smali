.class public final Lcom/spotify/mobile/android/ui/adapter/n;
.super Landroid/support/v4/widget/b;
.source "SourceFile"
.field private final j:Landroid/graphics/drawable/Drawable;
.field private k:Lcom/spotify/mobile/android/util/df;
.field private l:Landroid/view/LayoutInflater;
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.field private o:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/widget/b;-><init>(Landroid/content/Context;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/n;->k:Lcom/spotify/mobile/android/util/df;
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/n;->o:Ljava/lang/String;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/n;->l:Landroid/view/LayoutInflater;
const v0, 0x7f0f02d0
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/n;->m:Ljava/lang/String;
const v0, 0x7f0f02e0
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/n;->n:Ljava/lang/String;
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/n;->j:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/n;->l:Landroid/view/LayoutInflater;
const v1, 0x7f0300c3
const/4 v2, 0x0
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0248
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/CardView;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/n;->d:Landroid/content/Context;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/stuff/b;->a(Landroid/content/Context;)Landroid/widget/ImageButton;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->a(Landroid/view/View;)V
const/high16 v2, 0x4100
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-static {v2, v3}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v2
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->a(I)V
return-object v1
.end method
.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 15
new-instance v5, Lcom/spotify/mobile/android/model/g;
invoke-direct {v5, p3}, Lcom/spotify/mobile/android/model/g;-><init>(Landroid/database/Cursor;)V
invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
const v0, 0x7f0a0248
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/CardView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->a(Z)V
invoke-interface {v5}, Lcom/spotify/mobile/android/model/k;->b()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_21
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/n;->m:Ljava/lang/String;
:cond_21
invoke-interface {v5}, Lcom/spotify/mobile/android/model/k;->c()Ljava/lang/String;
move-result-object v2
new-instance v6, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-interface {v5}, Lcom/spotify/mobile/android/model/k;->e()Ljava/lang/String;
move-result-object v3
invoke-direct {v6, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_38
invoke-static {p2, v6}, Lcom/spotify/music/spotlets/radio/c/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;)Ljava/lang/String;
move-result-object v2
:cond_38
invoke-interface {v5}, Lcom/spotify/mobile/android/model/k;->d()Ljava/lang/String;
move-result-object v4
invoke-virtual {v6}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v3
sget-object v7, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->aj:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-ne v3, v7, :cond_cc
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/n;->n:Ljava/lang/String;
move-object v3, v1
:goto_47
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;
if-eqz v1, :cond_60
invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I
move-result v7
if-nez v7, :cond_93
iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
invoke-virtual {v1, v7, v8, v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
:cond_60
:goto_60
invoke-virtual {v0, v3}, Lcom/spotify/android/paste/widget/CardView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->b(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/n;->o:Ljava/lang/String;
invoke-interface {v5}, Lcom/spotify/mobile/android/model/k;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->b(Z)V
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->c()Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v6}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->L:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-ne v0, v2, :cond_ca
invoke-interface {v5}, Lcom/spotify/mobile/android/model/k;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/bc;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_87
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_9e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/n;->j:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_92
return-void
:cond_93
const/4 v7, 0x0
iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
invoke-virtual {v1, v7, v8, v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
goto :goto_60
:cond_9e
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/n;->k:Lcom/spotify/mobile/android/util/df;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v2
invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/n;->j:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v6}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->h:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-ne v2, v3, :cond_c6
invoke-static {}, Lcom/spotify/mobile/android/ui/b/b;->a()Lcom/spotify/mobile/android/util/dg;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;Lcom/spotify/mobile/android/util/dg;)Lcom/squareup/picasso/ai;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
goto :goto_92
:cond_c6
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
goto :goto_92
:cond_ca
move-object v0, v4
goto :goto_87
:cond_cc
move-object v3, v1
goto/16 :goto_47
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/n;->o:Ljava/lang/String;
return-void
.end method