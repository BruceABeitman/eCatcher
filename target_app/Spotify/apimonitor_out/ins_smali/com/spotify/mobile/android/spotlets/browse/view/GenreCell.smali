.class public Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"
.field private static e:Lcom/spotify/mobile/android/spotlets/browse/view/b;
.field private a:Landroid/widget/TextView;
.field private b:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
.field private c:Landroid/view/View;
.field private d:Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->a(Landroid/content/Context;)V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;
.registers 5
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03003a
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;
return-object v0
.end method
.method private static declared-synchronized a(Landroid/content/Context;)V
.registers 3
const-class v1, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->e:Lcom/spotify/mobile/android/spotlets/browse/view/b;
if-nez v0, :cond_e
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/view/b;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/browse/view/b;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->e:Lcom/spotify/mobile/android/spotlets/browse/view/b;
:try_end_e
.catchall {:try_start_3 .. :try_end_e} :catchall_10
:cond_e
monitor-exit v1
return-void
:catchall_10
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a()Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->d:Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/browse/model/Genre;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->d:Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->a:Landroid/widget/TextView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->d:Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->f()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->b:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
const v1, 0x7f0201bd
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->setImageResource(I)V
:goto_1f
return-void
:cond_20
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->e:Lcom/spotify/mobile/android/spotlets/browse/view/b;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->b:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/b;->a(Landroid/widget/ImageView;Ljava/lang/String;)V
goto :goto_1f
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
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->a:Landroid/widget/TextView;
const v0, 0x7f0a01f8
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->b:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
const v0, 0x7f0a024c
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->c:Landroid/view/View;
return-void
.end method
.method protected onMeasure(II)V
.registers 7
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->getSuggestedMinimumWidth()I
move-result v0
invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->getDefaultSize(II)I
move-result v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->getSuggestedMinimumHeight()I
move-result v0
invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->getDefaultSize(II)I
move-result v1
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v3
if-nez v0, :cond_1d
const/high16 v0, 0x4000
move v1, v2
:cond_1d
invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-super {p0, v2, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V
return-void
.end method
.method public setPressed(Z)V
.registers 4
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->c:Landroid/view/View;
if-eqz p1, :cond_c
const/4 v0, 0x0
:goto_5
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V
return-void
:cond_c
const/16 v0, 0x8
goto :goto_5
.end method