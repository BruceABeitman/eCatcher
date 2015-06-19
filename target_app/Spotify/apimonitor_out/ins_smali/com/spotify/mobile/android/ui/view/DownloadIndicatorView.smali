.class public Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"
.field private a:Landroid/widget/ProgressBar;
.field private b:Landroid/widget/ImageView;
.field private c:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->c:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->c:Z
return-void
.end method
.method public final a()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->c:Z
return-void
.end method
.method public final a(I)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->a(II)V
return-void
.end method
.method public final a(II)V
.registers 11
const/16 v2, 0x8
const/4 v1, 0x0
invoke-static {p1}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->c(I)Z
move-result v3
invoke-static {p1, p2}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(II)Z
move-result v4
invoke-static {p1, p2}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b(II)Z
move-result v5
iget-object v6, p0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->a:Landroid/widget/ProgressBar;
if-eqz v3, :cond_6f
move v0, v1
:goto_14
invoke-virtual {v6, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V
new-instance v6, Lcom/spotify/android/paste/graphics/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->getContext()Landroid/content/Context;
move-result-object v0
sget-object v7, Lcom/spotify/android/paste/graphics/SpotifyIcon;->y:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {v6, v0, v7}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
if-eqz v4, :cond_71
const v0, 0x7f09006d
:goto_2f
invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v6, v0}, Lcom/spotify/android/paste/graphics/f;->a(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v7, 0x7f0b0076
invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
int-to-float v0, v0
invoke-virtual {v6, v0}, Lcom/spotify/android/paste/graphics/f;->a(F)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->b:Landroid/widget/ImageView;
invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v6, p0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->b:Landroid/widget/ImageView;
if-nez v5, :cond_54
if-eqz v4, :cond_75
:cond_54
move v0, v1
:goto_55
invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->c:Z
if-eqz v0, :cond_77
if-nez v3, :cond_62
if-nez v4, :cond_62
if-eqz v5, :cond_77
:cond_62
:goto_62
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->b:Landroid/widget/ImageView;
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
return-void
:cond_6f
move v0, v2
goto :goto_14
:cond_71
const v0, 0x7f090078
goto :goto_2f
:cond_75
move v0, v2
goto :goto_55
:cond_77
move v1, v2
goto :goto_62
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_a
:goto_9
return-void
:cond_a
const v0, 0x7f0a027f
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->a:Landroid/widget/ProgressBar;
const v0, 0x7f0a0288
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->b:Landroid/widget/ImageView;
goto :goto_9
.end method