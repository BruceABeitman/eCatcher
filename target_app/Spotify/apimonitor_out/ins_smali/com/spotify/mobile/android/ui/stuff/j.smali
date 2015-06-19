.class public final Lcom/spotify/mobile/android/ui/stuff/j;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 4
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cO:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
const v0, 0x7f0f020b
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {p1, p2}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
return-object p1
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 3
new-instance v0, Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
invoke-static {p0, v0, p1}, Lcom/spotify/mobile/android/ui/stuff/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
return-object v0
.end method