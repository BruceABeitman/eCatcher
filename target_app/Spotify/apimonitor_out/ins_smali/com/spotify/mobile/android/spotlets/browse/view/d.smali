.class public final Lcom/spotify/mobile/android/spotlets/browse/view/d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:I
.field private final b:Lcom/spotify/mobile/android/spotlets/browse/b/e;
.method public constructor <init>(Landroid/content/Context;I)V
.registers 9
const/4 v0, 0x0
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/e;
new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/b/d;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->P:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v5, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct {v2, v3, v4, v5}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-direct {v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/b/e;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d;->b:Lcom/spotify/mobile/android/spotlets/browse/b/e;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/d;->setOrientation(I)V
const v1, 0x7f0201ce
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/d;->setBackgroundResource(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/d;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b003d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {p0, v1, v1, v1, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/d;->setPadding(IIII)V
iput p2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d;->a:I
:goto_2f
if-ge v0, p2, :cond_3f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/d;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/util/b;->a(Landroid/content/Context;)Lcom/spotify/android/paste/widget/CardView;
move-result-object v1
invoke-virtual {p0, v1, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/d;->addView(Landroid/view/View;I)V
add-int/lit8 v0, v0, 0x1
goto :goto_2f
:cond_3f
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/browse/view/d;)Lcom/spotify/mobile/android/spotlets/browse/b/e;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d;->b:Lcom/spotify/mobile/android/spotlets/browse/b/e;
return-object v0
.end method
.method public final a(Ljava/util/List;)V
.registers 12
const v9, 0x7f020073
const/4 v5, 0x0
move v4, v5
:goto_5
iget v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d;->a:I
if-ge v4, v0, :cond_6e
invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/spotlets/browse/view/d;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-ge v4, v0, :cond_69
move-object v0, v1
check-cast v0, Lcom/spotify/android/paste/widget/CardView;
invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;->a()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;->d()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;->c()Ljava/lang/String;
move-result-object v3
const/4 v8, 0x1
invoke-virtual {v0, v8}, Lcom/spotify/android/paste/widget/CardView;->a(Z)V
invoke-virtual {v0, v6}, Lcom/spotify/android/paste/widget/CardView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v3}, Lcom/spotify/android/paste/widget/CardView;->b(Ljava/lang/CharSequence;)V
const-class v3, Lcom/spotify/mobile/android/util/df;
invoke-static {v3}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v3
check-cast v3, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v3
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;->b()Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v8}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v3
invoke-virtual {v3, v9}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;
invoke-virtual {v3, v9}, Lcom/squareup/picasso/ad;->b(I)Lcom/squareup/picasso/ad;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->c()Landroid/widget/ImageView;
move-result-object v8
invoke-virtual {v3, v8}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;->e()Z
move-result v2
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->b(Z)V
new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/view/d$1;
invoke-direct {v2, p0, v4, v6, v7}, Lcom/spotify/mobile/android/spotlets/browse/view/d$1;-><init>(Lcom/spotify/mobile/android/spotlets/browse/view/d;ILjava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V
:goto_65
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_5
:cond_69
const/4 v0, 0x4
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
goto :goto_65
:cond_6e
return-void
.end method