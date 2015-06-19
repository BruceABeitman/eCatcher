.class public Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;
.super Landroid/widget/FrameLayout;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
.field private b:Lcom/spotify/android/paste/widget/CardView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;
.registers 5
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030030
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;
return-object v0
.end method
.method public final a()Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;I)V
.registers 8
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->b:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->b:Lcom/spotify/android/paste/widget/CardView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->a(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->b:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
if-nez p2, :cond_53
iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
:goto_27
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->b:Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->c()Landroid/widget/ImageView;
move-result-object v1
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/ui/stuff/k;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
return-void
:cond_53
const/4 v1, 0x0
iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
goto :goto_27
.end method
.method public hasFocusable()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V
const v0, 0x7f0a0248
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/CardView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/CoverCardHorizontal;->b:Lcom/spotify/android/paste/widget/CardView;
return-void
.end method