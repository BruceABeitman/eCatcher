.class public Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"
.field  a:Landroid/widget/TextView;
.field  b:Landroid/widget/ProgressBar;
.field private final c:Landroid/content/Context;
.field private d:Z
.field private e:Z
.field private f:Z
.field private g:I
.field private final h:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
.registers 12
const/high16 v8, 0x4248
const/16 v7, 0xd
const/4 v6, 0x0
const/4 v2, -0x1
const/4 v5, -0x2
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->d:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->e:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->f:Z
iput v6, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->g:I
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->h:Ljava/lang/ref/WeakReference;
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->c:Landroid/content/Context;
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x106000d
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->setBackgroundColor(I)V
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
const/high16 v1, 0x42c8
invoke-direct {p0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a(F)I
move-result v1
invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
new-instance v0, Landroid/widget/TextView;
invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a:Landroid/widget/TextView;
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v2, 0x9
if-ge v0, v2, :cond_99
new-instance v0, Landroid/widget/ProgressBar;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->c:Landroid/content/Context;
const/4 v3, 0x0
const v4, 0x1010078
invoke-direct {v0, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b:Landroid/widget/ProgressBar;
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
:goto_6c
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b:Landroid/widget/ProgressBar;
const v3, 0xb4be5ec
invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setId(I)V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b:Landroid/widget/ProgressBar;
invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V
invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b:Landroid/widget/ProgressBar;
invoke-virtual {p0, v2, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
const/4 v0, 0x3
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b:Landroid/widget/ProgressBar;
invoke-virtual {v2}, Landroid/widget/ProgressBar;->getId()I
move-result v2
invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/16 v0, 0xe
invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a:Landroid/widget/TextView;
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->addView(Landroid/view/View;)V
return-void
:cond_99
new-instance v0, Landroid/widget/ProgressBar;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->c:Landroid/content/Context;
const/4 v3, 0x0
const v4, 0x1010289
invoke-direct {v0, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b:Landroid/widget/ProgressBar;
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {p0, v8}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a(F)I
move-result v2
invoke-direct {p0, v8}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a(F)I
move-result v3
invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
goto :goto_6c
.end method
.method private a(F)I
.registers 4
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
float-to-int v0, v0
return v0
.end method
.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;)V
.registers 1
invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->e()V
return-void
.end method
.method private e()V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->h:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
sget v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c:I
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout;
if-eqz v1, :cond_19
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_19
sget v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout;
if-eqz v1, :cond_a
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->r(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
move-result v1
if-eqz v1, :cond_a
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->g(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
move-result v1
if-eqz v1, :cond_a
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b(Z)V
goto :goto_a
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->f:Z
return v0
.end method
.method public b()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->setShowing(Z)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b:Landroid/widget/ProgressBar;
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->setVisibility(I)V
return-void
.end method
.method public c()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->d:Z
return-void
.end method
.method public d()V
.registers 3
const/16 v1, 0x8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->setShowing(Z)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b:Landroid/widget/ProgressBar;
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->setVisibility(I)V
return-void
.end method
.method public getProgress()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->g:I
return v0
.end method
.method public setCancelable(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->e:Z
return-void
.end method
.method public setMessage(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setProgress(I)V
.registers 5
iput p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->g:I
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->b:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
const/16 v0, 0x64
if-lt p1, v0, :cond_e
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->d()V
:cond_e
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Loading..."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "% "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V
return-void
.end method
.method public setShowing(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->f:Z
return-void
.end method