.class public final Lcom/spotify/mobile/android/spotlets/browse/view/c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/spotlets/browse/b/c;
.field private b:I
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
.registers 12
const v7, 0x7f0b0025
const/4 v0, 0x0
const/4 v6, -0x1
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/c;
new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/b/d;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->O:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v5, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct {v2, v3, v4, v5}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
const/4 v3, 0x1
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/b/c;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;Z)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/c;->a:Lcom/spotify/mobile/android/spotlets/browse/b/c;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->setOrientation(I)V
const v1, 0x7f0201ce
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->setBackgroundResource(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v1, v1
invoke-virtual {p0, v1, v0, v1, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->setPadding(IIII)V
iput p3, p0, Lcom/spotify/mobile/android/spotlets/browse/view/c;->b:I
:goto_32
if-ge v0, p3, :cond_6c
if-lez v0, :cond_53
new-instance v1, Landroid/widget/LinearLayout;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/4 v3, 0x0
invoke-direct {v2, v6, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F
move-result v3
float-to-int v3, v3
iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I
invoke-virtual {p0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_53
invoke-static {p1, p2}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/view/c$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/browse/view/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/browse/view/c;)V
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/high16 v3, 0x3f80
invoke-direct {v2, v6, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {p0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
add-int/lit8 v0, v0, 0x1
goto :goto_32
:cond_6c
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/browse/view/c;)Lcom/spotify/mobile/android/spotlets/browse/b/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/c;->a:Lcom/spotify/mobile/android/spotlets/browse/b/c;
return-object v0
.end method
.method public final a(Ljava/util/List;)V
.registers 6
const/4 v3, 0x0
move v2, v3
:goto_2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/c;->b:I
if-ge v2, v0, :cond_29
mul-int/lit8 v0, v2, 0x2
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
if-ge v2, v1, :cond_24
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->a(Lcom/spotify/mobile/android/spotlets/browse/model/Genre;)V
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->setVisibility(I)V
:goto_20
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_2
:cond_24
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->setVisibility(I)V
goto :goto_20
:cond_29
return-void
.end method