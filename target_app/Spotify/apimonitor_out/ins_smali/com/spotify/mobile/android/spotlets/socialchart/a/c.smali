.class public final Lcom/spotify/mobile/android/spotlets/socialchart/a/c;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/ui/contextmenu/f;
.field private b:Ljava/lang/String;
.field private c:Z
.field private d:Landroid/content/Context;
.field private e:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
.method public constructor <init>(Landroid/content/Context;[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;ZLcom/spotify/mobile/android/ui/contextmenu/f;Lcom/spotify/mobile/android/spotlets/socialchart/b/a;)V
.registers 7
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
iput-boolean p3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->c:Z
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->a:Lcom/spotify/mobile/android/ui/contextmenu/f;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->d:Landroid/content/Context;
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->e:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/socialchart/a/c;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->d:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/socialchart/a/c;)Lcom/spotify/mobile/android/ui/contextmenu/f;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->a:Lcom/spotify/mobile/android/ui/contextmenu/f;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/socialchart/a/c;)Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->e:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
return-object v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->b:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->notifyDataSetChanged()V
return-void
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 14
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
if-nez p2, :cond_141
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v2, 0x7f0300d0
const/4 v3, 0x0
invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
new-instance v2, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;
invoke-direct {v2}, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;-><init>()V
const v1, 0x7f0a0393
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/socialchart/widget/ActivatableRelativeLayout;
iput-object v1, v2, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->a:Lcom/spotify/mobile/android/spotlets/socialchart/widget/ActivatableRelativeLayout;
const v1, 0x7f0a0391
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout;
iput-object v1, v2, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->b:Landroid/widget/LinearLayout;
const v1, 0x7f0a0395
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->e:Landroid/widget/TextView;
const v1, 0x7f0a024d
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->d:Landroid/widget/TextView;
const v1, 0x7f0a01fc
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->c:Landroid/widget/TextView;
const v1, 0x7f0a0394
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
new-instance v3, Lcom/spotify/android/paste/widget/internal/a;
invoke-direct {v3, v1}, Lcom/spotify/android/paste/widget/internal/a;-><init>(Landroid/view/ViewGroup;)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/socialchart/b;
invoke-direct {v1, v0, p1}, Lcom/spotify/mobile/android/spotlets/socialchart/b;-><init>(Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;I)V
iput-object v1, v2, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->f:Lcom/spotify/mobile/android/spotlets/socialchart/b;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->d:Landroid/content/Context;
sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cM:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {v1, v4}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/widget/ImageButton;
move-result-object v1
new-instance v4, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;
invoke-direct {v4, p0, v2, v0, p1}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/socialchart/a/c;Lcom/spotify/mobile/android/spotlets/socialchart/a/d;Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;I)V
invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v3, v1}, Lcom/spotify/android/paste/widget/internal/a;->a(Landroid/view/View;)V
invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->c:Z
if-nez v1, :cond_9b
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v3, v2, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->c:Landroid/widget/TextView;
const v4, 0x7f010198
invoke-static {v1, v3, v4}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v3, v2, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->d:Landroid/widget/TextView;
const v4, 0x7f010199
invoke-static {v1, v3, v4}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
:cond_9b
move-object v3, v2
:goto_9c
iget-object v2, v3, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->a:Lcom/spotify/mobile/android/spotlets/socialchart/widget/ActivatableRelativeLayout;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->b:Ljava/lang/String;
if-eqz v1, :cond_14f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->b:Ljava/lang/String;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getTrackUri()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_14f
const/4 v1, 0x1
:goto_af
invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/spotlets/socialchart/widget/ActivatableRelativeLayout;->a(Z)V
iget-object v2, v3, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->a:Lcom/spotify/mobile/android/spotlets/socialchart/widget/ActivatableRelativeLayout;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->isUnavailable()Z
move-result v1
if-nez v1, :cond_152
const/4 v1, 0x1
:goto_bb
invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/spotlets/socialchart/widget/ActivatableRelativeLayout;->setEnabled(Z)V
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->c:Z
if-eqz v1, :cond_155
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->isUnavailable()Z
move-result v1
if-nez v1, :cond_155
iget-object v1, v3, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->e:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f09006f
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
:goto_dc
const v1, 0x7f0a013c
new-instance v2, Lcom/spotify/mobile/android/ui/contextmenu/a/a;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->a:Lcom/spotify/mobile/android/ui/contextmenu/f;
iget-object v5, v3, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->f:Lcom/spotify/mobile/android/spotlets/socialchart/b;
invoke-direct {v2, v4, v5}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
invoke-virtual {p2, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getInfluencers()[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
move-result-object v6
iget-object v7, v3, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->b:Landroid/widget/LinearLayout;
const/4 v2, 0x0
array-length v8, v6
const/4 v1, 0x0
move v4, v1
move v5, v2
:goto_f6
if-ge v4, v8, :cond_162
aget-object v9, v6, v4
const/4 v1, 0x3
if-eq v5, v1, :cond_162
invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
const-class v2, Lcom/spotify/mobile/android/util/df;
invoke-static {v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v2
check-cast v2, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v2
invoke-virtual {v9}, Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;->getImageUrl()Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/spotify/mobile/android/provider/i;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v9
invoke-virtual {v2, v9}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v2
iget-object v9, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->d:Landroid/content/Context;
invoke-static {v9}, Lcom/spotify/mobile/android/ui/stuff/k;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v9
invoke-virtual {v2, v9}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v2
iget-object v9, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->d:Landroid/content/Context;
invoke-static {v9}, Lcom/spotify/mobile/android/ui/stuff/k;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v9
invoke-virtual {v2, v9}, Lcom/squareup/picasso/ad;->b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v2
invoke-static {v1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;
move-result-object v9
invoke-virtual {v2, v9}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
add-int/lit8 v2, v5, 0x1
add-int/lit8 v1, v4, 0x1
move v4, v1
move v5, v2
goto :goto_f6
:cond_141
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;
iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->f:Lcom/spotify/mobile/android/spotlets/socialchart/b;
invoke-virtual {v2, v0, p1}, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a(Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;I)V
move-object v3, v1
goto/16 :goto_9c
:cond_14f
const/4 v1, 0x0
goto/16 :goto_af
:cond_152
const/4 v1, 0x0
goto/16 :goto_bb
:cond_155
iget-object v1, v3, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->c:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I
move-result v1
iget-object v2, v3, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->e:Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V
goto/16 :goto_dc
:cond_162
array-length v1, v6
:goto_163
invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v2
if-ge v1, v2, :cond_176
add-int/lit8 v2, v1, 0x1
invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v1
const/16 v4, 0x8
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
move v1, v2
goto :goto_163
:cond_176
const v1, 0x7f0a0396
invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
array-length v2, v6
const/4 v4, 0x3
if-gt v2, v4, :cond_1a8
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
:goto_188
iget-object v1, v3, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->c:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getTrackName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v3, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->d:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getArtistsString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v3, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->e:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getRank()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object p2
:cond_1a8
const/16 v4, 0x64
if-ge v2, v4, :cond_1c5
const/4 v4, 0x0
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "+"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
add-int/lit8 v2, v2, -0x3
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_188
:cond_1c5
const/4 v4, 0x0
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, "+"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_188
.end method