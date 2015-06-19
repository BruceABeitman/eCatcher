.class public Lcom/instagram/android/widget/MediaActionsView;
.super Landroid/widget/FrameLayout;
.source "MediaActionsView.java"
.field private final a:I
.field private final b:I
.field private final c:Landroid/view/animation/Animation;
.field private final d:Landroid/view/animation/Animation;
.field private final e:Landroid/view/View;
.field private final f:Landroid/view/ViewStub;
.field private g:Landroid/view/View;
.field private h:Landroid/widget/ImageView;
.field private i:Landroid/view/View;
.field private j:Landroid/view/View;
.field private k:I
.field private l:Landroid/view/View$OnClickListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/android/widget/MediaActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/instagram/android/widget/MediaActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/16 v0, 0xfa
invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput v0, p0, Lcom/instagram/android/widget/MediaActionsView;->a:I
iput v0, p0, Lcom/instagram/android/widget/MediaActionsView;->b:I
sget v0, Lcom/instagram/android/widget/o;->a:I
iput v0, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->view_media_actions:I
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
sget v0, Lcom/facebook/av;->video_states_view_stub:I
invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewStub;
iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->f:Landroid/view/ViewStub;
sget v0, Lcom/facebook/av;->caminner:I
invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->i:Landroid/view/View;
sget v0, Lcom/facebook/av;->video_icon:I
invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
sget v0, Lcom/facebook/av;->retry:I
invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->j:Landroid/view/View;
sget v0, Lcom/facebook/av;->doubletap_heart:I
invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;
invoke-virtual {p0}, Lcom/instagram/android/widget/MediaActionsView;->getContext()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/aq;->doubletap_heart:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->c:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->c:Landroid/view/animation/Animation;
new-instance v1, Lcom/instagram/android/widget/m;
invoke-direct {v1, p0}, Lcom/instagram/android/widget/m;-><init>(Lcom/instagram/android/widget/MediaActionsView;)V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {p0}, Lcom/instagram/android/widget/MediaActionsView;->getContext()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/aq;->video_loading_indicator:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->d:Landroid/view/animation/Animation;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/widget/MediaActionsView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;
return-object v0
.end method
.method private static a(Landroid/view/View;)V
.registers 4
invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0xfa
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const/4 v1, 0x0
invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method private b(Landroid/view/View;)V
.registers 5
invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/high16 v1, 0x3f80
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0xfa
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
new-instance v1, Lcom/instagram/android/widget/n;
invoke-direct {v1, p0, p1}, Lcom/instagram/android/widget/n;-><init>(Lcom/instagram/android/widget/MediaActionsView;Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->f:Landroid/view/ViewStub;
invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;
sget v1, Lcom/facebook/av;->caminner:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->i:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;
sget v1, Lcom/facebook/av;->video_icon:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;
sget v1, Lcom/facebook/av;->retry:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->j:Landroid/view/View;
:cond_2c
return-void
.end method
.method private setVideoIndicatorVisibility$736bb5a1(I)V
.registers 9
const/4 v6, 0x0
const/16 v4, 0x8
const/4 v2, 0x1
const/4 v1, 0x0
sget v0, Lcom/instagram/android/widget/o;->c:I
if-eq p1, v0, :cond_d
sget v0, Lcom/instagram/android/widget/o;->b:I
if-ne p1, v0, :cond_52
:cond_d
move v0, v2
:goto_e
iget-object v5, p0, Lcom/instagram/android/widget/MediaActionsView;->j:Landroid/view/View;
sget v3, Lcom/instagram/android/widget/o;->g:I
if-ne p1, v3, :cond_54
move v3, v1
:goto_15
invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v5, p0, Lcom/instagram/android/widget/MediaActionsView;->i:Landroid/view/View;
if-eqz v0, :cond_56
move v3, v1
:goto_1d
invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V
sget v3, Lcom/instagram/android/widget/o;->f:I
if-ne p1, v3, :cond_58
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
sget v1, Lcom/facebook/au;->feed_sound:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/instagram/android/widget/MediaActionsView;->l:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V
:goto_41
sget v0, Lcom/instagram/android/widget/o;->c:I
if-ne p1, v0, :cond_bc
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->d:Landroid/view/animation/Animation;
invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->i:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/android/widget/MediaActionsView;->d:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:goto_51
return-void
:cond_52
move v0, v1
goto :goto_e
:cond_54
move v3, v4
goto :goto_15
:cond_56
move v3, v4
goto :goto_1d
:cond_58
sget v2, Lcom/instagram/android/widget/o;->d:I
if-ne p1, v2, :cond_78
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
sget v2, Lcom/facebook/au;->feed_play:I
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V
goto :goto_41
:cond_78
sget v2, Lcom/instagram/android/widget/o;->e:I
if-ne p1, v2, :cond_98
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
sget v2, Lcom/facebook/au;->feed_pause:I
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V
goto :goto_41
:cond_98
if-eqz v0, :cond_b6
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
sget v2, Lcom/facebook/au;->feed_camera:I
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V
goto :goto_41
:cond_b6
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_41
:cond_bc
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->i:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
goto :goto_51
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->c:Landroid/view/animation/Animation;
invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/android/widget/MediaActionsView;->c:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method public final a(I)V
.registers 4
iget v0, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
invoke-direct {p0}, Lcom/instagram/android/widget/MediaActionsView;->c()V
sget v0, Lcom/instagram/android/widget/o;->a:I
if-ne p1, v0, :cond_14
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;
invoke-direct {p0, v0}, Lcom/instagram/android/widget/MediaActionsView;->b(Landroid/view/View;)V
:goto_11
iput p1, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I
goto :goto_4
:cond_14
iget v0, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I
sget v1, Lcom/instagram/android/widget/o;->a:I
if-ne v0, v1, :cond_23
invoke-direct {p0, p1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIndicatorVisibility$736bb5a1(I)V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;
invoke-static {v0}, Lcom/instagram/android/widget/MediaActionsView;->a(Landroid/view/View;)V
goto :goto_11
:cond_23
invoke-virtual {p0, p1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V
goto :goto_11
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->e:Landroid/view/View;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method protected onMeasure(II)V
.registers 5
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
const/high16 v1, 0x4000
invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-super {p0, v0, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V
return-void
.end method
.method public setAudioToggleOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/widget/MediaActionsView;->l:Landroid/view/View$OnClickListener;
iget v0, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I
sget v1, Lcom/instagram/android/widget/o;->f:I
if-ne v0, v1, :cond_f
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->h:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/instagram/android/widget/MediaActionsView;->l:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_f
return-void
.end method
.method public setVideoIconState$736bb5a1(I)V
.registers 4
iget v0, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
invoke-direct {p0}, Lcom/instagram/android/widget/MediaActionsView;->c()V
iget-object v0, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v1, p0, Lcom/instagram/android/widget/MediaActionsView;->g:Landroid/view/View;
sget v0, Lcom/instagram/android/widget/o;->a:I
if-ne p1, v0, :cond_1e
const/16 v0, 0x8
:goto_15
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
invoke-direct {p0, p1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIndicatorVisibility$736bb5a1(I)V
iput p1, p0, Lcom/instagram/android/widget/MediaActionsView;->k:I
goto :goto_4
:cond_1e
const/4 v0, 0x0
goto :goto_15
.end method