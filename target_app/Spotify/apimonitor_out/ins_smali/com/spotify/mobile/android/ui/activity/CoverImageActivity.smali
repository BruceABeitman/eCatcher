.class public Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.field private static final a:Landroid/animation/TimeInterpolator;
.field private b:Landroid/widget/ImageView;
.field private c:I
.field private d:Landroid/view/View;
.field private e:Landroid/graphics/drawable/ColorDrawable;
.field private f:I
.field private g:I
.field private h:F
.field private i:F
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a:Landroid/animation/TimeInterpolator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;F)F
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->h:F
return p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->f:I
return p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
return-object v0
.end method
.method private a()V
.registers 9
const-wide/16 v6, 0x12c
const/4 v1, 0x1
const/4 v2, 0x0
new-instance v3, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$5;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$5;-><init>(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->orientation:I
iget v4, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->c:I
if-eq v0, v4, :cond_83
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I
move-result v4
div-int/lit8 v4, v4, 0x2
int-to-float v4, v4
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotX(F)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I
move-result v4
div-int/lit8 v4, v4, 0x2
int-to-float v4, v4
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotY(F)V
iput v2, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->f:I
iput v2, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->g:I
move v0, v1
:goto_38
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v4
invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v4
iget v5, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->h:F
invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;
move-result-object v4
iget v5, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->i:F
invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
move-result-object v4
iget v5, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->f:I
int-to-float v5, v5
invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;
move-result-object v4
iget v5, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->g:I
int-to-float v5, v5
invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;
move-result-object v4
new-instance v5, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$4;
invoke-direct {v5, p0, v3}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$4;-><init>(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;Ljava/lang/Runnable;)V
invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
if-eqz v0, :cond_70
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/4 v3, 0x0
invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
:cond_70
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->e:Landroid/graphics/drawable/ColorDrawable;
const-string v3, "alpha"
new-array v1, v1, [I
aput v2, v1, v2
invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
move-result-object v0
invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;
invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
return-void
:cond_83
move v0, v2
goto :goto_38
.end method
.method public static a(Landroid/app/Activity;IIIILandroid/net/Uri;I)V
.registers 10
const/4 v2, 0x0
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "ARGUMENT_LEFT"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "ARGUMENT_TOP"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "ARGUMENT_WIDTH"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "ARGUMENT_HEIGHT"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "ARGUMENT_IMAGE_URI"
invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "ARGUMENT_ORIENTATION"
invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
return-void
.end method
.method public static a(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/net/Uri;)V
.registers 4
new-instance v0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;
invoke-direct {v0, p1, p0, p2}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;-><init>(Landroid/widget/ImageView;Landroid/app/Activity;Landroid/net/Uri;)V
invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;F)F
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->i:F
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->g:I
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;)V
.registers 7
const-wide/16 v4, 0x12c
const/high16 v3, 0x3f80
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPivotX(F)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPivotY(F)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->h:F
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->i:F
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->f:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->g:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->e:Landroid/graphics/drawable/ColorDrawable;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a:Landroid/animation/TimeInterpolator;
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->e:Landroid/graphics/drawable/ColorDrawable;
const-string v1, "alpha"
const/4 v2, 0x2
new-array v2, v2, [I
fill-array-data v2, :array_68
invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;
invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
return-void
nop
:array_68
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0xfft 0x0t 0x0t 0x0t
.end array-data
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a()V
return-void
.end method
.method public finish()V
.registers 2
const/4 v0, 0x0
invoke-super {p0}, Landroid/app/Activity;->finish()V
invoke-virtual {p0, v0, v0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->overridePendingTransition(II)V
return-void
.end method
.method public onBackPressed()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/CoverImageActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03001a
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->setContentView(I)V
const v0, 0x7f0a021c
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
const v0, 0x7f0a021b
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->d:Landroid/view/View;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
const-string v0, "ARGUMENT_LEFT"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v2
const-string v0, "ARGUMENT_TOP"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v3
const-string v0, "ARGUMENT_WIDTH"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v4
const-string v0, "ARGUMENT_HEIGHT"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v5
const-string v0, "ARGUMENT_IMAGE_URI"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
const-string v6, "ARGUMENT_ORIENTATION"
invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
iput v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->c:I
const-class v1, Lcom/spotify/mobile/android/util/df;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/picasso/ad;->c()Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
new-instance v0, Landroid/graphics/drawable/ColorDrawable;
const/high16 v1, -0x100
invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->e:Landroid/graphics/drawable/ColorDrawable;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->d:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->e:Landroid/graphics/drawable/ColorDrawable;
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
if-nez p1, :cond_87
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v6
new-instance v0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;IIII)V
invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
:cond_87
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b:Landroid/widget/ImageView;
new-instance v1, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/CoverImageActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method