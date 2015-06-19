.class public final Lcom/spotify/mobile/android/ui/adapter/u;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"
.field private a:I
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
.registers 5
const v0, 0x1090003
invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/ui/adapter/u;->a:I
iput p3, p0, Lcom/spotify/mobile/android/ui/adapter/u;->a:I
return-void
.end method
.method private a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/view/View;
.registers 6
new-instance v0, Lcom/spotify/android/paste/graphics/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/u;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/u;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b0069
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
invoke-direct {v0, v1, p1, v2}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/u;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f09006d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V
new-instance v1, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/u;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-object v1
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/adapter/u;->a:I
return v0
.end method
.method public final a(I)V
.registers 3
iget v0, p0, Lcom/spotify/mobile/android/ui/adapter/u;->a:I
if-eq v0, p1, :cond_9
iput p1, p0, Lcom/spotify/mobile/android/ui/adapter/u;->a:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/u;->notifyDataSetChanged()V
:cond_9
return-void
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
if-nez p2, :cond_3a
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/u;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p3}, Lcom/spotify/android/paste/widget/h;->l(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object p2
:goto_a
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/u;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/cw;
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->d()V
iget v1, p0, Lcom/spotify/mobile/android/ui/adapter/u;->a:I
if-ne v1, p1, :cond_26
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cw;->e()Z
move-result v1
if-nez v1, :cond_3d
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->k:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/adapter/u;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/view/View;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
:goto_26
:cond_26
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/u;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cw;->d()I
move-result v0
invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
const/4 v0, 0x0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
return-object p2
:cond_3a
check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;
goto :goto_a
:cond_3d
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cw;->f()Z
move-result v1
if-eqz v1, :cond_4d
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bU:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/adapter/u;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/view/View;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
goto :goto_26
:cond_4d
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bW:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/adapter/u;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/view/View;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
goto :goto_26
.end method