.class public Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"
.field private a:Landroid/widget/TextView;
.field private b:Landroid/widget/ImageView;
.field private c:Landroid/view/View;
.field private final d:Lcom/spotify/mobile/android/spotlets/browse/b/e;
.field private final e:Lcom/spotify/mobile/android/spotlets/browse/b/a;
.method public constructor <init>(Landroid/content/Context;)V
.registers 7
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/e;
new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->R:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/e;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->d:Lcom/spotify/mobile/android/spotlets/browse/b/e;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/a;
new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->U:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->e:Lcom/spotify/mobile/android/spotlets/browse/b/a;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 8
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/e;
new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->R:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/e;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->d:Lcom/spotify/mobile/android/spotlets/browse/b/e;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/a;
new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->U:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->e:Lcom/spotify/mobile/android/spotlets/browse/b/a;
return-void
.end method
.method public hasFocusable()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a01fc
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->a:Landroid/widget/TextView;
const v0, 0x7f0a01f8
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->b:Landroid/widget/ImageView;
const v0, 0x7f0a024c
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->c:Landroid/view/View;
return-void
.end method
.method protected onMeasure(II)V
.registers 10
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->getSuggestedMinimumWidth()I
move-result v0
invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->getDefaultSize(II)I
move-result v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->getSuggestedMinimumHeight()I
move-result v0
invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->getDefaultSize(II)I
move-result v1
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v3
if-nez v0, :cond_1d
const/high16 v0, 0x4000
move v1, v2
:cond_1d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0b0070
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v4
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0b006f
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v5
invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I
move-result v1
sub-int v2, v1, v4
add-int/2addr v2, v5
invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-super {p0, v2, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V
return-void
.end method
.method public setPressed(Z)V
.registers 4
invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCellHorizontal;->c:Landroid/view/View;
if-eqz p1, :cond_c
const/4 v0, 0x0
:goto_8
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_c
const/16 v0, 0x8
goto :goto_8
.end method