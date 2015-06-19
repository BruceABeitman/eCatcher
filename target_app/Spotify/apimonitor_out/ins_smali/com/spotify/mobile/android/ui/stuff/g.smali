.class public final Lcom/spotify/mobile/android/ui/stuff/g;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bD:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const v1, 0x7f0f0242
invoke-static {p0, p1, v0, v1}, Lcom/spotify/mobile/android/ui/stuff/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)Landroid/widget/Button;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)Landroid/widget/Button;
.registers 10
const/4 v5, 0x0
const/4 v4, 0x0
invoke-static {p0, p1}, Lcom/spotify/android/paste/widget/h;->d(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v0
new-instance v1, Lcom/spotify/android/paste/graphics/f;
invoke-direct {v1, p0, p2}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/android/paste/graphics/f;->a(Landroid/content/res/ColorStateList;)V
const/high16 v2, 0x4190
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-static {v2, v3}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v2
int-to-float v2, v2
invoke-virtual {v1, v2}, Lcom/spotify/android/paste/graphics/f;->a(F)V
const/high16 v2, 0x4240
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-static {v2, v3}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v2
invoke-virtual {v0, v2, v5, v2, v5}, Landroid/widget/Button;->setPadding(IIII)V
invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
const/high16 v1, 0x4100
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V
invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
return-object v0
.end method