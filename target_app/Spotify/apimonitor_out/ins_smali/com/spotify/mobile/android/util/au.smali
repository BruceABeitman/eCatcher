.class public final Lcom/spotify/mobile/android/util/au;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
.registers 4
const v0, 0x1090003
invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
return-void
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 10
if-nez p2, :cond_65
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/au;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p3}, Lcom/spotify/android/paste/widget/h;->l(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object p2
:goto_a
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/util/au;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/av;
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->d()V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/av;->a()Z
move-result v1
if-eqz v1, :cond_55
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->k:Lcom/spotify/android/paste/graphics/SpotifyIcon;
new-instance v2, Lcom/spotify/android/paste/graphics/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/au;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/au;->getContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0b0069
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v4
int-to-float v4, v4
invoke-direct {v2, v3, v1, v4}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/au;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f09006d
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V
new-instance v1, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/au;->getContext()Landroid/content/Context;
move-result-object v3
invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
:cond_55
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/au;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/av;->b()I
move-result v0
invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
return-object p2
:cond_65
check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;
goto :goto_a
.end method