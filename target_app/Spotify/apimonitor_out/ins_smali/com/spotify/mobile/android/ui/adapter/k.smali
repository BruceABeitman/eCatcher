.class public final Lcom/spotify/mobile/android/ui/adapter/k;
.super Landroid/support/v4/view/ah;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.field private final b:Landroid/view/View$OnClickListener;
.field private c:Lcom/google/common/base/Optional;
.field private d:Ljava/util/Queue;
.field private e:Ljava/util/List;
.field private f:Ljava/util/Set;
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
.registers 10
const/4 v1, 0x0
invoke-direct {p0}, Landroid/support/v4/view/ah;-><init>()V
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->c:Lcom/google/common/base/Optional;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->d:Ljava/util/Queue;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->e:Ljava/util/List;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->f:Ljava/util/Set;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/k;->a:Landroid/content/Context;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/adapter/k;->b:Landroid/view/View$OnClickListener;
move v0, v1
:goto_24
const/4 v2, 0x3
if-ge v0, v2, :cond_80
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/k;->a:Landroid/content/Context;
invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v2
const v3, 0x7f0300bd
invoke-virtual {v2, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
const/4 v3, 0x2
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/k;->b:Landroid/view/View$OnClickListener;
invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v3, Lcom/spotify/mobile/android/ui/b/c;
invoke-direct {v3}, Lcom/spotify/mobile/android/ui/b/c;-><init>()V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/adapter/k;->a:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f090066
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-virtual {v3, v4, v1}, Lcom/spotify/mobile/android/ui/b/c;->a(Landroid/graphics/drawable/Drawable;Z)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/adapter/k;->a:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f090026
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I
move-result v4
sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
invoke-virtual {v3, v4, v5}, Lcom/spotify/mobile/android/ui/b/c;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
invoke-static {v2, v3}, Lcom/spotify/android/paste/widget/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
const v4, 0x7f0a01d7
new-instance v5, Lcom/spotify/mobile/android/ui/adapter/l;
invoke-direct {v5, p0, v3, v1}, Lcom/spotify/mobile/android/ui/adapter/l;-><init>(Lcom/spotify/mobile/android/ui/adapter/k;Lcom/spotify/mobile/android/ui/b/c;B)V
invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/k;->d:Ljava/util/Queue;
invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/k;->e:Ljava/util/List;
invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_80
const-string v0, "New PlayerPagerAdapter reporting for duty!"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/adapter/k;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->a:Landroid/content/Context;
return-object v0
.end method
.method public final a(Ljava/lang/Object;)I
.registers 7
const/4 v4, 0x0
const/4 v2, -0x2
check-cast p1, Landroid/view/View;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
const-string v1, "Getting position for item: %s"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
aput-object v0, v3, v4
invoke-static {v1, v3}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/k;->c:Lcom/google/common/base/Optional;
invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z
move-result v1
if-eqz v1, :cond_54
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/k;->c:Lcom/google/common/base/Optional;
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/service/player/model/c;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/player/model/c;->a(Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_2c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_52
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/k;->f:Ljava/util/Set;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2c
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/k;->f:Ljava/util/Set;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:goto_51
return v0
:cond_52
move v0, v2
goto :goto_51
:cond_54
const-string v0, " -- Frame is absent, returning POSITION_NONE"
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
move v0, v2
goto :goto_51
.end method
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.registers 12
const/16 v5, 0x100
const/4 v8, 0x1
const/4 v7, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->c:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/c;->g()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
const-string v1, "Creating view for item: %s"
new-array v2, v8, [Ljava/lang/Object;
aput-object v0, v2, v7
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/k;->d:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v1
const-string v2, "View pool is empty"
invoke-static {v1, v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
const v2, 0x7f0a0375
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
const v3, 0x7f0a01fc
invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
const v4, 0x7f0a0363
invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getArtistName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSelected(Z)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getTrackName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->c()Landroid/net/Uri;
move-result-object v4
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b()Landroid/net/Uri;
move-result-object v3
const v6, 0x7f020073
invoke-virtual {v2, v6}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(I)V
invoke-virtual {v2, v4, v3}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(Landroid/net/Uri;Landroid/net/Uri;)V
invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I
move-result v2
div-int/lit8 v3, v2, 0x2
invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
if-lez v3, :cond_7a
if-gtz v2, :cond_b3
:cond_7a
move v3, v5
:goto_7b
const-class v2, Lcom/spotify/mobile/android/util/df;
invoke-static {v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v2
check-cast v2, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v2
invoke-virtual {v2, v4}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v2
new-instance v4, Lcom/spotify/mobile/android/ui/c/a;
invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v6
invoke-direct {v4, v6, v7}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V
invoke-virtual {v2, v4}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;
move-result-object v2
invoke-virtual {v2, v5, v3}, Lcom/squareup/picasso/ad;->b(II)Lcom/squareup/picasso/ad;
move-result-object v2
invoke-virtual {v2}, Lcom/squareup/picasso/ad;->b()Lcom/squareup/picasso/ad;
move-result-object v3
const v2, 0x7f0a01d7
invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/squareup/picasso/ai;
invoke-virtual {v3, v2}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
return-object v1
:cond_b3
move v5, v3
move v3, v2
goto :goto_7b
.end method
.method public final a(I)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
const v2, 0x7f0a0375
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->setVisibility(I)V
goto :goto_6
:cond_1f
return-void
.end method
.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 8
check-cast p3, Landroid/view/View;
const-string v0, "Destroying play queue item: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->d:Ljava/util/Queue;
invoke-interface {v0, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v1
const v0, 0x7f0a01d7
invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/picasso/ai;
invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/ai;)V
return-void
.end method
.method public final a(Lcom/google/common/base/Optional;)V
.registers 5
const/4 v2, 0x0
const-string v0, "Setting new queue frame: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/k;->c:Lcom/google/common/base/Optional;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->f:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/k;->c()V
const-string v0, "Updating data set --->"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public final a(Z)V
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
const v1, 0x7f0a0216
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/k;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f0b0089
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
if-eqz p1, :cond_3a
const/4 v1, 0x2
:goto_2f
iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
mul-int/2addr v1, v3
iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
invoke-virtual {v0, v4, v5, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
goto :goto_6
:cond_3a
const/4 v1, 0x1
goto :goto_2f
:cond_3c
return-void
.end method
.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
.registers 4
check-cast p2, Landroid/view/View;
if-ne p2, p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final b()I
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/k;->c:Lcom/google/common/base/Optional;
invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z
move-result v1
if-eqz v1, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->c:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/c;->f()I
move-result v0
:cond_15
return v0
.end method
.method public final d()Lcom/spotify/mobile/android/service/player/model/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/k;->c:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/c;
return-object v0
.end method