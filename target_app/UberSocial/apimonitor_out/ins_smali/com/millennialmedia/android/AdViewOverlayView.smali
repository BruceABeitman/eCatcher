.class  Lcom/millennialmedia/android/AdViewOverlayView;
.super Lcom/millennialmedia/android/ch;
.source "SourceFile"
.field private static final g:Ljava/lang/String; = "AdViewOverlayView"
.field private static final h:Ljava/lang/String; = "mraidCloseButton"
.field  a:Lcom/millennialmedia/android/OverlaySettings;
.field  b:Ljava/lang/ref/WeakReference;
.field  c:Lcom/millennialmedia/android/k;
.field private d:Landroid/widget/Button;
.field private e:Z
.field private f:Landroid/widget/ProgressBar;
.method constructor <init>(Lcom/millennialmedia/android/g;Lcom/millennialmedia/android/OverlaySettings;)V
.registers 11
const/4 v7, 0x0
const/4 v6, -0x1
iget-object v0, p1, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
invoke-direct {p0, v0}, Lcom/millennialmedia/android/ch;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->b:Ljava/lang/ref/WeakReference;
new-instance v0, Lcom/millennialmedia/android/h;
iget-object v1, p1, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/h;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/content/Context;)V
iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
const/16 v0, 0x3ad6
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->setId(I)V
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
const-string v1, "i"
iput-object v1, v0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
const/4 v0, 0x0
iget-object v1, p1, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
instance-of v1, v1, Landroid/app/Activity;
if-eqz v1, :cond_78
iget-object v0, p1, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/m;
if-eqz v0, :cond_169
iget-boolean v1, v0, Lcom/millennialmedia/android/m;->a:Z
iput-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->e:Z
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v2, v0, Lcom/millennialmedia/android/m;->b:Lcom/millennialmedia/android/bs;
iput-object v2, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, v0, Lcom/millennialmedia/android/m;->c:Lcom/millennialmedia/android/OverlaySettings;
iput-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
if-eqz v1, :cond_5e
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v1, :cond_5e
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v1, :cond_5e
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;)V
:cond_5e
const-string v1, "AdViewOverlayView"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Restoring configurationinstance w/ controller= "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, v0, Lcom/millennialmedia/android/m;->b:Lcom/millennialmedia/android/bs;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_78
:cond_78
iget-object v1, p1, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
invoke-virtual {v1}, Lcom/millennialmedia/android/MMActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v2, v1, Landroid/util/DisplayMetrics;->density:F
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
iget v1, v1, Lcom/millennialmedia/android/OverlaySettings;->q:I
if-eqz v1, :cond_172
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
iget v1, v1, Lcom/millennialmedia/android/OverlaySettings;->r:I
if-eqz v1, :cond_172
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
iget v3, v3, Lcom/millennialmedia/android/OverlaySettings;->r:I
int-to-float v3, v3
mul-float/2addr v3, v2
float-to-int v3, v3
iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
iget v4, v4, Lcom/millennialmedia/android/OverlaySettings;->q:I
int-to-float v4, v4
mul-float/2addr v4, v2
float-to-int v4, v4
invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
:goto_a3
const/16 v3, 0xd
invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/high16 v1, 0x3d80
mul-float/2addr v1, v2
iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
iget v3, v3, Lcom/millennialmedia/android/OverlaySettings;->n:I
int-to-float v3, v3
mul-float/2addr v1, v3
float-to-int v1, v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v3
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v4
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v5
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {p0, v3, v4, v5, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->setPadding(IIII)V
iget-object v1, p1, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
invoke-direct {p0, v1, v2}, Lcom/millennialmedia/android/AdViewOverlayView;->a(Landroid/content/Context;F)Landroid/widget/Button;
move-result-object v1
iput-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->d:Landroid/widget/Button;
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->b()Z
move-result v1
if-eqz v1, :cond_ec
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->d()Z
move-result v1
if-nez v1, :cond_ec
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
iget-wide v2, v2, Lcom/millennialmedia/android/OverlaySettings;->z:J
iput-wide v2, v1, Lcom/millennialmedia/android/bp;->q:J
:cond_ec
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
invoke-static {v1}, Lcom/millennialmedia/android/bs;->b(Lcom/millennialmedia/android/bp;)V
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->d:Landroid/widget/Button;
if-eqz v1, :cond_fa
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->d:Landroid/widget/Button;
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;)V
:cond_fa
iget-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->e:Z
if-nez v1, :cond_111
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->b()Z
move-result v1
if-nez v1, :cond_111
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->c()Z
move-result v1
if-nez v1, :cond_111
invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->t()V
:cond_111
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->j()Z
move-result v1
if-eqz v1, :cond_179
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
if-eqz v1, :cond_134
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v1, :cond_134
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v1, :cond_134
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v1, v7}, Lcom/millennialmedia/android/cq;->setBackgroundColor(I)V
:cond_134
invoke-virtual {p0, v7}, Lcom/millennialmedia/android/AdViewOverlayView;->setBackgroundColor(I)V
:goto_137
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->k()Z
move-result v1
if-eqz v1, :cond_15a
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
if-eqz v1, :cond_15a
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v1, :cond_15a
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v1, :cond_15a
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v1}, Lcom/millennialmedia/android/cq;->c()V
:cond_15a
if-nez v0, :cond_15f
invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->u()V
:cond_15f
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->i()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->a(Z)V
return-void
:cond_169
const-string v1, "AdViewOverlayView"
const-string v2, "Null configurationinstance "
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_78
:cond_172
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
goto/16 :goto_a3
:cond_179
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
if-eqz v1, :cond_194
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v1, :cond_194
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v1, :cond_194
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v1, v6}, Lcom/millennialmedia/android/cq;->setBackgroundColor(I)V
:cond_194
invoke-virtual {p0, v6}, Lcom/millennialmedia/android/AdViewOverlayView;->setBackgroundColor(I)V
goto :goto_137
.end method
.method private a(Landroid/content/Context;F)Landroid/widget/Button;
.registers 9
new-instance v1, Landroid/widget/Button;
invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
const/16 v0, 0x12d
invoke-virtual {v1, v0}, Landroid/widget/Button;->setId(I)V
const-string v0, "mraidCloseButton"
invoke-virtual {v1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V
new-instance v0, Lcom/millennialmedia/android/k;
const/4 v2, 0x1
invoke-direct {v0, v2, p2}, Lcom/millennialmedia/android/k;-><init>(ZF)V
iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->c:Lcom/millennialmedia/android/k;
new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$1;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdViewOverlayView$1;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-direct {p0, p2}, Lcom/millennialmedia/android/AdViewOverlayView;->a(F)Landroid/widget/RelativeLayout$LayoutParams;
move-result-object v5
invoke-virtual {v1, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v0, Lcom/millennialmedia/android/p;
iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
iget v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
iget v5, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I
invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/p;-><init>(Landroid/widget/Button;IIII)V
invoke-virtual {v1, v0}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z
return-object v1
.end method
.method private a(F)Landroid/widget/RelativeLayout$LayoutParams;
.registers 4
const/high16 v0, 0x4248
mul-float/2addr v0, p1
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v0, 0xb
invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
const/16 v0, 0xa
invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
return-object v1
.end method
.method static synthetic a(Lcom/millennialmedia/android/AdViewOverlayView;)V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->v()V
return-void
.end method
.method static synthetic b(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->d:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic c(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->f:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic d(Lcom/millennialmedia/android/AdViewOverlayView;)V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->t()V
return-void
.end method
.method private t()V
.registers 4
const/4 v2, -0x2
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/g;
if-eqz v0, :cond_2f
new-instance v1, Landroid/widget/ProgressBar;
iget-object v0, v0, Lcom/millennialmedia/android/g;->c:Lcom/millennialmedia/android/MMActivity;
invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->f:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->f:Landroid/widget/ProgressBar;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->f:Landroid/widget/ProgressBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v1, 0xd
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->f:Landroid/widget/ProgressBar;
invoke-virtual {p0, v1, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_2f
return-void
.end method
.method private u()V
.registers 12
const v4, 0x3f666666
const/high16 v8, 0x3f00
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->g()Ljava/lang/String;
move-result-object v0
const-string v3, "slideup"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_35
new-instance v0, Landroid/view/animation/TranslateAnimation;
const/high16 v6, 0x3f80
move v3, v1
move v4, v2
move v5, v1
move v7, v1
move v8, v2
invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V
const-string v1, "AdViewOverlayView"
const-string v2, "Translate up"
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_28
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->f()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V
:cond_34
return-void
:cond_35
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->g()Ljava/lang/String;
move-result-object v0
const-string v3, "slidedown"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_57
new-instance v0, Landroid/view/animation/TranslateAnimation;
const/high16 v6, -0x4080
move v3, v1
move v4, v2
move v5, v1
move v7, v1
move v8, v2
invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V
const-string v1, "AdViewOverlayView"
const-string v2, "Translate down"
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_28
:cond_57
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->g()Ljava/lang/String;
move-result-object v0
const-string v2, "explode"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
new-instance v2, Landroid/view/animation/ScaleAnimation;
const v3, 0x3f8ccccd
const v5, 0x3dcccccd
move v6, v4
move v7, v1
move v9, v1
move v10, v8
invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V
const-string v0, "AdViewOverlayView"
const-string v1, "Explode"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v2
goto :goto_28
.end method
.method private v()V
.registers 3
iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->e:Z
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->f:Landroid/widget/ProgressBar;
if-eqz v0, :cond_1a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->e:Z
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->f:Landroid/widget/ProgressBar;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->f:Landroid/widget/ProgressBar;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeView(Landroid/view/View;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->f:Landroid/widget/ProgressBar;
:cond_1a
return-void
.end method
.method  a()Ljava/lang/Object;
.registers 5
new-instance v0, Lcom/millennialmedia/android/m;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/millennialmedia/android/m;-><init>(Lcom/millennialmedia/android/AdViewOverlayView$1;)V
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
if-eqz v1, :cond_41
const-string v1, "AdViewOverlayView"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Saving getNonConfigurationInstance for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v1, :cond_3b
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v1, :cond_3b
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v1}, Lcom/millennialmedia/android/cq;->y()V
:cond_3b
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iput-object v1, v0, Lcom/millennialmedia/android/m;->b:Lcom/millennialmedia/android/bs;
:cond_41
iget-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->e:Z
iput-boolean v1, v0, Lcom/millennialmedia/android/m;->a:Z
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
iput-object v1, v0, Lcom/millennialmedia/android/m;->c:Lcom/millennialmedia/android/OverlaySettings;
return-object v0
.end method
.method  a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bs;->a(Ljava/lang/String;)V
:cond_d
return-void
.end method
.method  a(Z)V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;
invoke-virtual {v0, p1}, Lcom/millennialmedia/android/OverlaySettings;->a(Z)V
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->d:Landroid/widget/Button;
if-eqz p1, :cond_e
const/4 v0, 0x0
:goto_a
invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
:cond_e
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->c:Lcom/millennialmedia/android/k;
goto :goto_a
.end method
.method  b()V
.registers 2
new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$2;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdViewOverlayView$2;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method  b(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/millennialmedia/android/l;
invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/l;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Ljava/lang/String;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method  d()Z
.registers 5
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-wide v0, v0, Lcom/millennialmedia/android/bp;->q:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
invoke-static {v0}, Lcom/millennialmedia/android/bs;->c(Lcom/millennialmedia/android/bp;)Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method  e()V
.registers 1
invoke-super {p0}, Lcom/millennialmedia/android/ch;->e()V
invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->f()V
return-void
.end method
.method  f()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->d:Landroid/widget/Button;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->d:Landroid/widget/Button;
invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V
:cond_9
return-void
.end method
.method  g()V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->A:Landroid/widget/RelativeLayout;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->A:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->B:Lcom/millennialmedia/android/ba;
invoke-virtual {v1}, Lcom/millennialmedia/android/ba;->c()Landroid/widget/RelativeLayout$LayoutParams;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->f()V
return-void
.end method
.method  h()V
.registers 4
const/4 v2, -0x1
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->A:Landroid/widget/RelativeLayout;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->A:Landroid/widget/RelativeLayout;
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->f()V
return-void
.end method
.method  i()V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->B:Lcom/millennialmedia/android/ba;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->A:Landroid/widget/RelativeLayout;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->A:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->B:Lcom/millennialmedia/android/ba;
invoke-virtual {v1}, Lcom/millennialmedia/android/ba;->c()Landroid/widget/RelativeLayout$LayoutParams;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->f()V
:cond_16
return-void
.end method
.method  j()V
.registers 3
invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeAllViews()V
invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_12
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_12
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_12
return-void
.end method
.method  k()V
.registers 3
invoke-static {}, Lcom/millennialmedia/android/af;->a()Z
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->clearFocus()V
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->s()V
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
const-string v1, "i"
if-ne v0, v1, :cond_38
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->r()V
:cond_38
iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->m()V
:cond_41
return-void
.end method
.method  l_()V
.registers 5
const/4 v3, 0x1
const-string v0, "AdViewOverlayView"
const-string v1, "Ad overlay closed"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;
move-result-object v0
check-cast v0, Landroid/app/Activity;
if-nez v0, :cond_11
:goto_10
return-void
:cond_11
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/high16 v1, 0x3f80
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
new-instance v1, Lcom/millennialmedia/android/i;
invoke-direct {v1, p0}, Lcom/millennialmedia/android/i;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V
invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V
invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
const-wide/16 v1, 0x190
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_10
.end method