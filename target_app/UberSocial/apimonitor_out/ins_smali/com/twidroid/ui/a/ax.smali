.class public Lcom/twidroid/ui/a/ax;
.super Lcom/twidroid/ui/a/am;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "VideoGridAdapter"
.field private W:Z
.field private X:Z
.field private b:Ljava/util/List;
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
iput-boolean v1, p0, Lcom/twidroid/ui/a/ax;->W:Z
iput-boolean v1, p0, Lcom/twidroid/ui/a/ax;->X:Z
return-void
.end method
.method private b(Landroid/view/View;)Lcom/twidroid/ui/a/ay;
.registers 4
new-instance v1, Lcom/twidroid/ui/a/ay;
const/4 v0, 0x0
invoke-direct {v1, p0, v0}, Lcom/twidroid/ui/a/ay;-><init>(Lcom/twidroid/ui/a/ax;Lcom/twidroid/ui/a/ax$1;)V
const v0, 0x7f090149
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/twidroid/ui/a/ay;->a:Landroid/widget/TextView;
const v0, 0x7f090147
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v1, Lcom/twidroid/ui/a/ay;->b:Landroid/widget/ImageView;
const v0, 0x7f09014b
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v1, Lcom/twidroid/ui/a/ay;->c:Landroid/widget/ImageView;
const v0, 0x7f09014a
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v1, Lcom/twidroid/ui/a/ay;->d:Landroid/widget/ImageView;
return-object v1
.end method
.method private b(I)Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-nez v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
iget-boolean v1, p0, Lcom/twidroid/ui/a/ax;->W:Z
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ne p1, v1, :cond_9
const/4 v0, 0x1
goto :goto_9
.end method
.method private c(I)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-nez v2, :cond_b
:cond_a
:goto_a
return v0
:cond_b
iget-boolean v2, p0, Lcom/twidroid/ui/a/ax;->W:Z
if-eqz v2, :cond_23
iget-object v2, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-eq p1, v2, :cond_21
iget-object v2, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-ne p1, v2, :cond_a
:cond_21
move v0, v1
goto :goto_a
:cond_23
iget-object v2, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-eq p1, v2, :cond_37
iget-object v2, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v2, v2, -0x2
if-ne p1, v2, :cond_a
:cond_37
move v0, v1
goto :goto_a
.end method
.method public a()I
.registers 2
iget-boolean v0, p0, Lcom/twidroid/ui/a/ax;->W:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, 0x1
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
goto :goto_c
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/ui/a/ax;->X:Z
return-void
.end method
.method public b()Lcom/twidroid/model/twitter/Tweet;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->c:Ljava/util/ArrayList;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-lt v0, v1, :cond_17
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->c:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
:goto_16
return-object v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public e(Ljava/util/List;)V
.registers 3
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
rem-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_1b
const/4 v0, 0x1
:goto_9
iput-boolean v0, p0, Lcom/twidroid/ui/a/ax;->W:Z
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
return-void
:cond_1b
const/4 v0, 0x0
goto :goto_9
.end method
.method public getCount()I
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
iget-boolean v0, p0, Lcom/twidroid/ui/a/ax;->W:Z
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, 0x1
:goto_12
add-int/2addr v0, v1
return v0
:cond_14
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
goto :goto_12
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 5
iget-boolean v0, p0, Lcom/twidroid/ui/a/ax;->W:Z
if-eqz v0, :cond_c
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/ax;->b(I)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge p1, v0, :cond_1d
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
goto :goto_b
:cond_1d
iget-object v1, p0, Lcom/twidroid/ui/a/ax;->c:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
sub-int v2, p1, v0
iget-boolean v0, p0, Lcom/twidroid/ui/a/ax;->W:Z
if-eqz v0, :cond_35
const/4 v0, 0x1
:goto_2c
sub-int v0, v2, v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
goto :goto_b
:cond_35
const/4 v0, 0x0
goto :goto_2c
.end method
.method public getItemId(I)J
.registers 4
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/ax;->getItem(I)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_9
const-wide/16 v0, 0x0
:goto_8
return-wide v0
:cond_9
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
iget-wide v0, v0, Lcom/twidroid/model/twitter/Tweet;->x:J
goto :goto_8
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 14
const v8, 0x3e99999a
const/4 v5, 0x4
const/4 v2, 0x0
const v7, 0x7f090148
const/4 v3, 0x0
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/ax;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
if-nez p2, :cond_34
iget-object v1, p0, Lcom/twidroid/ui/a/ax;->O:Landroid/view/LayoutInflater;
const v4, 0x7f030062
invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
invoke-direct {p0, p2}, Lcom/twidroid/ui/a/ax;->b(Landroid/view/View;)Lcom/twidroid/ui/a/ay;
move-result-object v1
invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_21
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/ax;->b(I)Z
move-result v4
if-eqz v4, :cond_64
iget-boolean v0, p0, Lcom/twidroid/ui/a/ax;->X:Z
if-eqz v0, :cond_3b
new-instance v0, Landroid/widget/AbsListView$LayoutParams;
invoke-direct {v0, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:goto_33
:cond_33
return-object p2
:cond_34
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/ui/a/ay;
goto :goto_21
:cond_3b
iget-object v0, v1, Lcom/twidroid/ui/a/ay;->c:Landroid/widget/ImageView;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, v1, Lcom/twidroid/ui/a/ay;->c:Landroid/widget/ImageView;
iget-object v3, p0, Lcom/twidroid/ui/a/ax;->M:Lcom/twidroid/ui/themes/r;
iget-object v4, p0, Lcom/twidroid/ui/a/ax;->d:Landroid/app/Activity;
invoke-virtual {v3, v4}, Lcom/twidroid/ui/themes/r;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, v1, Lcom/twidroid/ui/a/ay;->b:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, v1, Lcom/twidroid/ui/a/ay;->a:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, v1, Lcom/twidroid/ui/a/ay;->d:Landroid/widget/ImageView;
invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
goto :goto_33
:cond_64
iget-object v4, v1, Lcom/twidroid/ui/a/ay;->a:Landroid/widget/TextView;
invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v4, v1, Lcom/twidroid/ui/a/ay;->d:Landroid/widget/ImageView;
invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/ax;->c(I)Z
move-result v4
if-eqz v4, :cond_165
iget-boolean v4, p0, Lcom/twidroid/ui/a/ax;->X:Z
if-eqz v4, :cond_151
add-int/lit8 v4, p1, 0x1
invoke-direct {p0, v4}, Lcom/twidroid/ui/a/ax;->c(I)Z
move-result v4
if-eqz v4, :cond_151
add-int/lit8 v4, p1, 0x1
invoke-direct {p0, v4}, Lcom/twidroid/ui/a/ax;->c(I)Z
move-result v4
if-eqz v4, :cond_151
add-int/lit8 v4, p1, 0x1
invoke-direct {p0, v4}, Lcom/twidroid/ui/a/ax;->b(I)Z
move-result v4
if-nez v4, :cond_151
iget-object v4, p0, Lcom/twidroid/ui/a/ax;->d:Landroid/app/Activity;
invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v4
iget v4, v4, Landroid/content/res/Configuration;->orientation:I
const/4 v5, 0x2
if-ne v4, v5, :cond_151
iget-object v4, v1, Lcom/twidroid/ui/a/ay;->c:Landroid/widget/ImageView;
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_ad
new-instance v4, Landroid/text/style/ForegroundColorSpan;
const/4 v5, -0x1
invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
iput-object v4, p0, Lcom/twidroid/ui/a/ax;->r:Landroid/text/style/ForegroundColorSpan;
sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v5, 0xb
if-lt v4, v5, :cond_16e
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V
:goto_c2
iget-boolean v4, p0, Lcom/twidroid/ui/a/ax;->m:Z
if-eqz v4, :cond_186
iget-object v4, v0, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;
if-eqz v4, :cond_186
iget-object v4, v1, Lcom/twidroid/ui/a/ay;->a:Landroid/widget/TextView;
iget-object v5, v0, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "@"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, v0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iget v7, p0, Lcom/twidroid/ui/a/ax;->q:I
iget-object v8, p0, Lcom/twidroid/ui/a/ax;->r:Landroid/text/style/ForegroundColorSpan;
iget-object v9, p0, Lcom/twidroid/ui/a/ax;->s:Landroid/text/style/StyleSpan;
invoke-static {v5, v6, v7, v8, v9}, Lcom/twidroid/ui/a/ax;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_f0
iget-object v4, v1, Lcom/twidroid/ui/a/ay;->a:Landroid/widget/TextView;
const/4 v5, -0x1
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;
move-result-object v4
array-length v5, v4
move-object v0, v2
:goto_100
if-ge v3, v5, :cond_124
aget-object v6, v4, v3
instance-of v7, v6, Lcom/ubermedia/ui/StringSpanInfo;
if-eqz v7, :cond_1ae
invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v0
const/16 v7, 0xc8
invoke-static {v0, v7}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;
move-result-object v0
sget-object v7, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;
if-eq v0, v7, :cond_1ae
invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/twidroid/d/m;->c(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_1ae
invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v2
:cond_124
if-eqz v2, :cond_33
:try_start_126
iget-object v2, v1, Lcom/twidroid/ui/a/ay;->b:Landroid/widget/ImageView;
const v3, 0x7f020191
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v2, p0, Lcom/twidroid/ui/a/ax;->T:Lcom/twidroid/net/b/f;
if-eqz v2, :cond_1b2
const-string v2, "VideoGridAdapter"
const-string v3, "Using ImageFetcher for preview."
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/twidroid/ui/a/ax;->T:Lcom/twidroid/net/b/f;
invoke-virtual {v0}, Lcom/twidroid/d/n;->b()Ljava/lang/String;
move-result-object v0
const/4 v3, 0x0
iget-object v1, v1, Lcom/twidroid/ui/a/ay;->b:Landroid/widget/ImageView;
invoke-virtual {v2, v0, v3, v1}, Lcom/twidroid/net/b/f;->a(Ljava/lang/String;ILandroid/widget/ImageView;)V
:try_end_145
.catch Ljava/lang/OutOfMemoryError; {:try_start_126 .. :try_end_145} :catch_147
goto/16 :goto_33
:catch_147
move-exception v0
const-string v1, "VideoGridAdapter"
const-string v2, "OOM in video gallery adapter"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_33
:cond_151
iget-object v4, v1, Lcom/twidroid/ui/a/ay;->c:Landroid/widget/ImageView;
invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v4, v1, Lcom/twidroid/ui/a/ay;->c:Landroid/widget/ImageView;
iget-object v5, p0, Lcom/twidroid/ui/a/ax;->M:Lcom/twidroid/ui/themes/r;
iget-object v6, p0, Lcom/twidroid/ui/a/ax;->d:Landroid/app/Activity;
invoke-virtual {v5, v6}, Lcom/twidroid/ui/themes/r;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto/16 :goto_ad
:cond_165
iget-object v4, v1, Lcom/twidroid/ui/a/ay;->c:Landroid/widget/ImageView;
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_ad
:cond_16e
new-instance v4, Landroid/view/animation/AlphaAnimation;
const/4 v5, 0x0
invoke-direct {v4, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v5, 0x0
invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
const/4 v5, 0x1
invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
goto/16 :goto_c2
:cond_186
iget-object v4, v1, Lcom/twidroid/ui/a/ay;->a:Landroid/widget/TextView;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "@"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, v0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
iget-object v6, v0, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;
iget v7, p0, Lcom/twidroid/ui/a/ax;->q:I
iget-object v8, p0, Lcom/twidroid/ui/a/ax;->r:Landroid/text/style/ForegroundColorSpan;
iget-object v9, p0, Lcom/twidroid/ui/a/ax;->s:Landroid/text/style/StyleSpan;
invoke-static {v5, v6, v7, v8, v9}, Lcom/twidroid/ui/a/ax;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_f0
:cond_1ae
add-int/lit8 v3, v3, 0x1
goto/16 :goto_100
:cond_1b2
:try_start_1b2
iget-object v1, v1, Lcom/twidroid/ui/a/ay;->b:Landroid/widget/ImageView;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Lcom/twidroid/d/n;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/twidroid/d/n;->b()Ljava/lang/String;
move-result-object v3
const/16 v4, 0xc8
const/4 v5, 0x0
const/4 v6, 0x1
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->N:Lcom/twidroid/net/n;
invoke-virtual {v0}, Lcom/twidroid/net/n;->b()Z
move-result v7
move-object v0, p0
invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z
:try_end_1df
.catch Ljava/lang/OutOfMemoryError; {:try_start_1b2 .. :try_end_1df} :catch_147
goto/16 :goto_33
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public j()Lcom/twidroid/model/twitter/Tweet;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->c:Ljava/util/ArrayList;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-lt v0, v1, :cond_1e
iget-object v0, p0, Lcom/twidroid/ui/a/ax;->c:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/twidroid/ui/a/ax;->c:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
:goto_1d
return-object v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method