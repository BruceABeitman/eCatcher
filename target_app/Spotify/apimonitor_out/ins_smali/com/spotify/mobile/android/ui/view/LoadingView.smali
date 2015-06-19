.class public Lcom/spotify/mobile/android/ui/view/LoadingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"
.field public static final a:Lcom/spotify/mobile/android/ui/view/l;
.field private b:Landroid/widget/ProgressBar;
.field private c:Lcom/spotify/mobile/android/ui/view/l;
.field private d:I
.field private e:I
.field private f:I
.field private g:I
.field private h:I
.field private i:Landroid/view/View;
.field private j:Landroid/view/animation/Animation;
.field private k:Landroid/view/animation/Animation;
.field private l:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.field private m:Ljava/lang/Runnable;
.field private n:Ljava/lang/Runnable;
.field private o:Ljava/lang/Runnable;
.field private p:Landroid/view/animation/Animation$AnimationListener;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/ui/view/LoadingView$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView;->a:Lcom/spotify/mobile/android/ui/view/l;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/spotify/mobile/android/ui/view/LoadingView$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/LoadingView$2;-><init>(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->m:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/view/LoadingView$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/LoadingView$3;-><init>(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->n:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/view/LoadingView$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/LoadingView$4;-><init>(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->o:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/view/LoadingView$5;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/LoadingView$5;-><init>(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->p:Landroid/view/animation/Animation$AnimationListener;
sget-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView;->a:Lcom/spotify/mobile/android/ui/view/l;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->c:Lcom/spotify/mobile/android/ui/view/l;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0d000c
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->d:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0d000f
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->e:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0d0010
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->f:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0d000e
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->g:I
sget-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->a:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->l:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->l:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/LoadingView;Lcom/spotify/mobile/android/ui/view/LoadingView$State;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->l:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
return-object p1
.end method
.method public static a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;
.registers 3
const v0, 0x7f03008c
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/LoadingView;
return-object v0
.end method
.method public static a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Lcom/spotify/mobile/android/ui/view/LoadingView;
.registers 5
const v0, 0x7f03008c
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/LoadingView;
iput-object p2, v0, Lcom/spotify/mobile/android/ui/view/LoadingView;->i:Landroid/view/View;
new-instance v1, Lcom/spotify/mobile/android/ui/view/e;
invoke-direct {v1, p1, p2}, Lcom/spotify/mobile/android/ui/view/e;-><init>(Landroid/content/Context;Landroid/view/View;)V
iput-object v1, v0, Lcom/spotify/mobile/android/ui/view/LoadingView;->c:Lcom/spotify/mobile/android/ui/view/l;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->j:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->j:Landroid/view/animation/Animation;
iget v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->e:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->j:Landroid/view/animation/Animation;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->p:Landroid/view/animation/Animation$AnimationListener;
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->j:Landroid/view/animation/Animation;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->startAnimation(Landroid/view/animation/Animation;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->setVisibility(I)V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/view/LoadingView;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->n:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/l;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->c:Lcom/spotify/mobile/android/ui/view/l;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->e:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->b:Landroid/widget/ProgressBar;
invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->b:Landroid/widget/ProgressBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
return-void
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->i:Landroid/view/View;
if-eqz v0, :cond_1d
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->g:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->i:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->i:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_1d
return-void
.end method
.method static synthetic g(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
.registers 5
const/4 v3, 0x1
new-instance v0, Landroid/view/animation/AlphaAnimation;
iget v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->h:I
int-to-float v1, v1
const/high16 v2, 0x437f
div-float/2addr v1, v2
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->k:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->k:Landroid/view/animation/Animation;
invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->k:Landroid/view/animation/Animation;
invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->k:Landroid/view/animation/Animation;
iget v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->f:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->k:Landroid/view/animation/Animation;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->p:Landroid/view/animation/Animation$AnimationListener;
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->k:Landroid/view/animation/Animation;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method static synthetic h(Lcom/spotify/mobile/android/ui/view/LoadingView;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->m:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
.registers 2
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->setVisibility(I)V
return-void
.end method
.method static synthetic j(Lcom/spotify/mobile/android/ui/view/LoadingView;)Landroid/view/animation/Animation;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->j:Landroid/view/animation/Animation;
return-object v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/ui/view/LoadingView;)Landroid/view/animation/Animation;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->k:Landroid/view/animation/Animation;
return-object v0
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->l:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->a:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
if-ne v0, v1, :cond_12
sget-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->b:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->l:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->m:Ljava/lang/Runnable;
iget v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->d:I
int-to-long v1, v1
invoke-virtual {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/LoadingView;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_12
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->i:Landroid/view/View;
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/view/l;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->c:Lcom/spotify/mobile/android/ui/view/l;
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->o:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final c()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->m:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->n:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->o:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->removeCallbacks(Ljava/lang/Runnable;)Z
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->setAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->b:Landroid/widget/ProgressBar;
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->i:Landroid/view/View;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->i:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
:cond_21
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->b:Landroid/widget/ProgressBar;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
sget-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->a:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->l:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
return-void
.end method
.method public final d()Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->l:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->b:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
if-eq v0, v1, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->l:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->c:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
if-eq v0, v1, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->l:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->d:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
if-ne v0, v1, :cond_14
:cond_12
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V
const v0, 0x7f0a02bd
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->b:Landroid/widget/ProgressBar;
return-void
.end method
.method protected onSetAlpha(I)Z
.registers 3
iput p1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView;->h:I
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onSetAlpha(I)Z
move-result v0
return v0
.end method