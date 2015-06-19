.class public final Lcom/spotify/mobile/android/spotlets/browse/view/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:I
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
.registers 9
const/4 v0, 0x0
const/4 v4, -0x1
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/a;->setOrientation(I)V
const v1, 0x7f0201ce
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/a;->setBackgroundResource(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/a;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b003d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {p0, v1, v1, v1, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/a;->setPadding(IIII)V
iput p3, p0, Lcom/spotify/mobile/android/spotlets/browse/view/a;->a:I
:goto_1e
if-ge v0, p3, :cond_31
invoke-static {p1, p2}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;
move-result-object v1
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/high16 v3, 0x3f80
invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {p0, v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/browse/view/a;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
add-int/lit8 v0, v0, 0x1
goto :goto_1e
:cond_31
return-void
.end method
.method public final a(Ljava/util/List;Lcom/spotify/mobile/android/a/b;)V
.registers 7
const/4 v3, 0x0
move v2, v3
:goto_2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/a;->a:I
if-ge v2, v0, :cond_27
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/browse/view/a;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
if-ge v2, v1, :cond_22
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;
invoke-virtual {v0, v1, v2, p2}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->a(Lcom/spotify/mobile/android/spotlets/browse/model/Artist;ILcom/spotify/mobile/android/a/b;)V
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->setVisibility(I)V
:goto_1e
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_2
:cond_22
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->setVisibility(I)V
goto :goto_1e
:cond_27
return-void
.end method