.class public Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:Landroid/view/View;
.field private b:Landroid/view/View;
.field private c:Lcom/spotify/android/paste/widget/CircularProgressBar;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const-string v0, "layout_inflater"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
const v1, 0x7f0300c0
const/4 v2, 0x1
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
const v0, 0x7f0a0337
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->a:Landroid/view/View;
const v0, 0x7f0a0338
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->b:Landroid/view/View;
const v0, 0x7f0a0378
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/CircularProgressBar;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->c:Lcom/spotify/android/paste/widget/CircularProgressBar;
return-void
.end method
.method public final a(F)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->c:Lcom/spotify/android/paste/widget/CircularProgressBar;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/CircularProgressBar;->a(F)V
return-void
.end method
.method public final a(Z)V
.registers 6
const/16 v1, 0x8
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->a:Landroid/view/View;
if-eqz p1, :cond_13
move v0, v1
:goto_8
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->b:Landroid/view/View;
if-nez p1, :cond_15
:goto_f
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_13
move v0, v2
goto :goto_8
:cond_15
move v1, v2
goto :goto_f
.end method