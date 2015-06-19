.class public final Lcom/spotify/mobile/android/spotlets/openaccess/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/openaccess/util/f;
.field private a:Landroid/content/Context;
.field private b:Lcom/spotify/mobile/android/spotlets/openaccess/a/b;
.field private c:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/openaccess/a/b;)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/4 v0, 0x0
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->c:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->b:Lcom/spotify/mobile/android/spotlets/openaccess/a/b;
return-void
.end method
.method public final a()Ljava/util/List;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->a(I)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V
return-object v0
.end method
.method public final a(I)Ljava/util/List;
.registers 4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_5
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->c:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
array-length v1, v1
if-ge p1, v1, :cond_14
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->c:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
aget-object v1, v1, p1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 p1, p1, 0x1
goto :goto_5
:cond_14
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V
.registers 7
const/4 v3, 0x0
const/4 v2, 0x1
sget-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a$1;->a:[I
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_32
:goto_d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->notifyDataSetChanged()V
return-void
:pswitch_11
invoke-virtual {p1, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->setIsCurrentTrack(Z)V
invoke-virtual {p1, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->setIsPlaying(Z)V
goto :goto_d
:pswitch_18
invoke-virtual {p1, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->setIsCurrentTrack(Z)V
invoke-virtual {p1, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->setIsPlaying(Z)V
goto :goto_d
:pswitch_1f
invoke-virtual {p1, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->setIsCurrentTrack(Z)V
invoke-virtual {p1, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->setIsPlaying(Z)V
goto :goto_d
:pswitch_26
invoke-virtual {p1, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->setIsPlaying(Z)V
invoke-virtual {p1, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->setIsCurrentTrack(Z)V
const/4 v0, 0x0
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->setProgress(F)V
goto :goto_d
nop
:pswitch_data_32
.packed-switch 0x1
:pswitch_11
:pswitch_18
:pswitch_1f
:pswitch_26
.end packed-switch
.end method
.method public final a([Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;)V
.registers 3
if-nez p1, :cond_b
const/4 v0, 0x0
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->c:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->notifyDataSetInvalidated()V
:goto_a
return-void
:cond_b
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->c:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->notifyDataSetChanged()V
goto :goto_a
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->c:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
array-length v0, v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->c:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
aget-object v0, v0, p1
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 12
const/16 v7, 0x8
const/4 v1, 0x0
check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;
if-nez p2, :cond_77
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->a:Landroid/content/Context;
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/spotify/android/paste/widget/h;->i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object p2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->b:Lcom/spotify/mobile/android/spotlets/openaccess/a/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/a/b;->a()Z
move-result v0
if-eqz v0, :cond_66
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->c()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
move-result-object v0
new-instance v3, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->a:Landroid/content/Context;
invoke-direct {v3, v2}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;-><init>(Landroid/content/Context;)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->a:Landroid/content/Context;
const v4, 0x7f010194
invoke-static {v2, v3, v4}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->setTextColor(Landroid/content/res/ColorStateList;)V
invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->getPaint()Landroid/text/TextPaint;
move-result-object v2
const/4 v0, 0x0
const-string v4, "0123456789"
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
new-array v5, v5, [F
invoke-virtual {v2, v4, v5}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I
move v2, v0
move v0, v1
:goto_42
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v6
if-ge v0, v6, :cond_53
aget v6, v5, v0
cmpl-float v6, v6, v2
if-lez v6, :cond_50
aget v2, v5, v0
:cond_50
add-int/lit8 v0, v0, 0x1
goto :goto_42
:cond_53
const/high16 v0, 0x4000
mul-float/2addr v0, v2
const/high16 v2, 0x3f00
add-float/2addr v0, v2
float-to-int v0, v0
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/4 v4, -0x2
invoke-direct {v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v3, v2}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p2, v3}, Lcom/spotify/android/paste/widget/ListItemView;->a(Landroid/view/View;)V
:cond_66
new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->a:Landroid/content/Context;
invoke-direct {v0, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;-><init>(Landroid/content/Context;)V
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->f()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V
:cond_77
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->c:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
aget-object v2, v0, p1
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {p2, v2}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->f()Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->isCurrentTrack()Z
move-result v3
invoke-virtual {p2, v3}, Lcom/spotify/android/paste/widget/ListItemView;->c(Z)V
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->isCurrentTrack()Z
move-result v3
if-eqz v3, :cond_cc
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->setVisibility(I)V
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->isPlaying()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->a(Z)V
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->getProgress()F
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->a(F)V
:goto_a9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->b:Lcom/spotify/mobile/android/spotlets/openaccess/a/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/a/b;->a()Z
move-result v0
if-eqz v0, :cond_bc
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->e()Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;
add-int/lit8 v1, p1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->a(I)V
:cond_bc
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->b:Lcom/spotify/mobile/android/spotlets/openaccess/a/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/a/b;->b()Z
move-result v0
if-eqz v0, :cond_cb
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->getArtistString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
:cond_cb
return-object p2
:cond_cc
invoke-virtual {v0, v7}, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->setVisibility(I)V
goto :goto_a9
.end method