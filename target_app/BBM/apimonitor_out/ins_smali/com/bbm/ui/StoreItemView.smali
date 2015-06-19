.class public Lcom/bbm/ui/StoreItemView;
.super Landroid/widget/RelativeLayout;
.source "StoreItemView.java"
.field private a:Lcom/bbm/l/b/j;
.field private b:Lcom/bbm/util/b/d;
.field private c:Lcom/bbm/util/bo;
.field private d:Landroid/widget/TextView;
.field private e:Landroid/widget/ImageView;
.field private f:Landroid/widget/ImageView;
.field private g:Landroid/widget/ImageView;
.field private h:Landroid/widget/ImageView;
.field private i:Landroid/widget/TextView;
.field private j:I
.field private k:I
.field private l:I
.field private m:I
.field private n:Z
.field private o:Ljava/lang/String;
.field private p:Ljava/lang/String;
.field private q:Ljava/lang/String;
.field private r:Ljava/lang/String;
.field private s:Landroid/widget/FrameLayout;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/StoreItemView;->a:Lcom/bbm/l/b/j;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/StoreItemView;->n:Z
invoke-direct {p0}, Lcom/bbm/ui/StoreItemView;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/StoreItemView;->a:Lcom/bbm/l/b/j;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/StoreItemView;->n:Z
invoke-direct {p0}, Lcom/bbm/ui/StoreItemView;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/StoreItemView;->a:Lcom/bbm/l/b/j;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/StoreItemView;->n:Z
invoke-direct {p0}, Lcom/bbm/ui/StoreItemView;->a()V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/StoreItemView;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/StoreItemView;->p:Ljava/lang/String;
return-object v0
.end method
.method private a()V
.registers 6
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/StoreItemView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v0, 0x7f0b0383
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/StoreItemView;->k:I
const v0, 0x7f0b037e
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/StoreItemView;->j:I
invoke-virtual {p0}, Lcom/bbm/ui/StoreItemView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f030149
const/4 v3, 0x1
invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
const v0, 0x7f0a0654
invoke-virtual {p0, v0}, Lcom/bbm/ui/StoreItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/StoreItemView;->f:Landroid/widget/ImageView;
const v0, 0x7f0a0655
invoke-virtual {p0, v0}, Lcom/bbm/ui/StoreItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/StoreItemView;->g:Landroid/widget/ImageView;
const v0, 0x7f0a0653
invoke-virtual {p0, v0}, Lcom/bbm/ui/StoreItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/StoreItemView;->h:Landroid/widget/ImageView;
invoke-static {}, Lcom/bbm/util/fb;->g()Z
move-result v0
if-eqz v0, :cond_7e
iput v4, p0, Lcom/bbm/ui/StoreItemView;->l:I
iput v4, p0, Lcom/bbm/ui/StoreItemView;->m:I
:goto_51
const v0, 0x7f0a0656
invoke-virtual {p0, v0}, Lcom/bbm/ui/StoreItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/StoreItemView;->e:Landroid/widget/ImageView;
const v0, 0x7f0a0658
invoke-virtual {p0, v0}, Lcom/bbm/ui/StoreItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/StoreItemView;->d:Landroid/widget/TextView;
const v0, 0x7f0a0659
invoke-virtual {p0, v0}, Lcom/bbm/ui/StoreItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/StoreItemView;->i:Landroid/widget/TextView;
const v0, 0x7f0a0652
invoke-virtual {p0, v0}, Lcom/bbm/ui/StoreItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/bbm/ui/StoreItemView;->s:Landroid/widget/FrameLayout;
return-void
:cond_7e
const v0, 0x7f0c002e
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/StoreItemView;->l:I
const v0, 0x7f0c002f
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/StoreItemView;->m:I
goto :goto_51
.end method
.method static synthetic a(Lcom/bbm/ui/StoreItemView;Landroid/graphics/drawable/Drawable;)V
.registers 7
if-eqz p1, :cond_3a
iget-object v0, p0, Lcom/bbm/ui/StoreItemView;->e:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/bbm/ui/StoreItemView;->e:Landroid/widget/ImageView;
iget v1, p0, Lcom/bbm/ui/StoreItemView;->j:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v0
const-wide v2, 0x406f400000000000L
mul-double/2addr v0, v2
double-to-long v0, v0
iget-object v2, p0, Lcom/bbm/ui/StoreItemView;->e:Landroid/widget/ImageView;
invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v2
new-instance v3, Landroid/view/animation/BounceInterpolator;
invoke-direct {v3}, Landroid/view/animation/BounceInterpolator;-><init>()V
invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
move-result-object v2
const-wide/16 v3, 0x190
add-long/2addr v0, v3
invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
const-wide/16 v1, 0x3e8
invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;
:cond_3a
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/StoreItemView;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
.registers 7
if-eqz p1, :cond_2d
invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget v0, p0, Lcom/bbm/ui/StoreItemView;->j:I
int-to-float v0, v0
invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setY(F)V
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v0
const-wide v2, 0x406f400000000000L
mul-double/2addr v0, v2
double-to-long v0, v0
invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v2
invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
const-wide/16 v1, 0x190
invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
iget v1, p0, Lcom/bbm/ui/StoreItemView;->j:I
iget v2, p0, Lcom/bbm/ui/StoreItemView;->k:I
sub-int/2addr v1, v2
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;
:cond_2d
return-void
.end method
.method private a(Ljava/lang/String;Lcom/bbm/ui/gv;)Z
.registers 8
const/4 v2, 0x0
const/4 v0, 0x0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_c
invoke-interface {p2, v2, p1}, Lcom/bbm/ui/gv;->a(Lcom/bbm/d/fd;Ljava/lang/String;)V
:cond_b
:goto_b
return v0
:cond_c
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->b:Lcom/bbm/util/b/d;
if-nez v1, :cond_26
move-object v1, v2
:goto_11
if-nez v1, :cond_35
:try_start_13
new-instance v3, Ljava/net/URL;
invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_18
.catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_18} :catch_2d
iget-object v2, p0, Lcom/bbm/ui/StoreItemView;->c:Lcom/bbm/util/bo;
new-instance v4, Lcom/bbm/ui/gu;
invoke-direct {v4, p0, p1, p2}, Lcom/bbm/ui/gu;-><init>(Lcom/bbm/ui/StoreItemView;Ljava/lang/String;Lcom/bbm/ui/gv;)V
invoke-virtual {v2, v3, v4}, Lcom/bbm/util/bo;->a(Ljava/net/URL;Lcom/bbm/util/bx;)V
:goto_22
if-eqz v1, :cond_b
const/4 v0, 0x1
goto :goto_b
:cond_26
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->b:Lcom/bbm/util/b/d;
invoke-virtual {v1, p1}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v1
goto :goto_11
:catch_2d
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
invoke-interface {p2, v2, p1}, Lcom/bbm/ui/gv;->a(Lcom/bbm/d/fd;Ljava/lang/String;)V
goto :goto_b
:cond_35
invoke-interface {p2, v1, p1}, Lcom/bbm/ui/gv;->a(Lcom/bbm/d/fd;Ljava/lang/String;)V
goto :goto_22
.end method
.method static synthetic b(Lcom/bbm/ui/StoreItemView;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/StoreItemView;->e:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/StoreItemView;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/StoreItemView;->q:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/StoreItemView;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/StoreItemView;->f:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/StoreItemView;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/StoreItemView;->r:Ljava/lang/String;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/StoreItemView;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/StoreItemView;->g:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/StoreItemView;)Lcom/bbm/util/b/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/StoreItemView;->b:Lcom/bbm/util/b/d;
return-object v0
.end method
.method public setHttpLoader(Lcom/bbm/util/bo;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/StoreItemView;->c:Lcom/bbm/util/bo;
return-void
.end method
.method public setImageCache(Lcom/bbm/util/b/d;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/StoreItemView;->b:Lcom/bbm/util/b/d;
return-void
.end method
.method public setStickerPack(Lcom/bbm/l/b/j;)V
.registers 14
const-wide/16 v10, 0x0
const/4 v9, 0x0
const/4 v8, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
iput-object p1, p0, Lcom/bbm/ui/StoreItemView;->a:Lcom/bbm/l/b/j;
iget-boolean v0, p0, Lcom/bbm/ui/StoreItemView;->n:Z
if-nez v0, :cond_1d
move v0, v1
:goto_d
iput-boolean v1, p0, Lcom/bbm/ui/StoreItemView;->n:Z
iget-object v3, p0, Lcom/bbm/ui/StoreItemView;->c:Lcom/bbm/util/bo;
if-eqz v3, :cond_1f
move v3, v1
:goto_14
const-string v4, "StoreItemView needs an HttpLoader"
invoke-static {v3, v4}, Lcom/bbm/util/fb;->a(ZLjava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_21
:goto_1c
:cond_1c
return-void
:cond_1d
move v0, v2
goto :goto_d
:cond_1f
move v3, v2
goto :goto_14
:cond_21
iget-object v3, p0, Lcom/bbm/ui/StoreItemView;->a:Lcom/bbm/l/b/j;
if-nez v3, :cond_cc
const-string v3, ""
iput-object v3, p0, Lcom/bbm/ui/StoreItemView;->o:Ljava/lang/String;
const-string v3, ""
iput-object v3, p0, Lcom/bbm/ui/StoreItemView;->p:Ljava/lang/String;
const-string v3, ""
iput-object v3, p0, Lcom/bbm/ui/StoreItemView;->q:Ljava/lang/String;
const-string v3, ""
iput-object v3, p0, Lcom/bbm/ui/StoreItemView;->r:Ljava/lang/String;
:goto_35
invoke-virtual {p0}, Lcom/bbm/ui/StoreItemView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v3
const-string v4, "stickers_last_viewed_time"
invoke-interface {v3, v4, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v3
iget-object v5, p1, Lcom/bbm/l/b/l;->e:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
move-result-wide v5
invoke-virtual {p1}, Lcom/bbm/l/b/j;->b()Z
move-result v7
if-nez v7, :cond_f8
cmp-long v5, v5, v3
if-lez v5, :cond_f8
cmp-long v3, v3, v10
if-eqz v3, :cond_f8
invoke-virtual {p1}, Lcom/bbm/l/b/j;->a()Z
move-result v3
if-nez v3, :cond_f8
iget-object v3, p0, Lcom/bbm/ui/StoreItemView;->h:Landroid/widget/ImageView;
invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_66
iget-object v3, p0, Lcom/bbm/ui/StoreItemView;->d:Landroid/widget/TextView;
iget-object v4, p0, Lcom/bbm/ui/StoreItemView;->o:Ljava/lang/String;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p1}, Lcom/bbm/l/b/j;->a()Z
move-result v3
if-eqz v3, :cond_101
iget-object v3, p0, Lcom/bbm/ui/StoreItemView;->d:Landroid/widget/TextView;
invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->i:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
invoke-static {}, Lcom/bbm/util/fb;->f()Z
move-result v1
if-eqz v1, :cond_8d
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->f:Landroid/widget/ImageView;
invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setRotation(F)V
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->g:Landroid/widget/ImageView;
invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setRotation(F)V
:cond_8d
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->s:Landroid/widget/FrameLayout;
const/high16 v2, 0x3f00
invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V
:goto_94
new-instance v1, Lcom/bbm/ui/gr;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/gr;-><init>(Lcom/bbm/ui/StoreItemView;Z)V
iget-object v2, p0, Lcom/bbm/ui/StoreItemView;->p:Ljava/lang/String;
invoke-direct {p0, v2, v1}, Lcom/bbm/ui/StoreItemView;->a(Ljava/lang/String;Lcom/bbm/ui/gv;)Z
move-result v1
if-nez v1, :cond_a6
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->e:Landroid/widget/ImageView;
invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_a6
new-instance v1, Lcom/bbm/ui/gs;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/gs;-><init>(Lcom/bbm/ui/StoreItemView;Z)V
iget-object v2, p0, Lcom/bbm/ui/StoreItemView;->q:Ljava/lang/String;
invoke-direct {p0, v2, v1}, Lcom/bbm/ui/StoreItemView;->a(Ljava/lang/String;Lcom/bbm/ui/gv;)Z
move-result v1
if-nez v1, :cond_b8
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->f:Landroid/widget/ImageView;
invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_b8
new-instance v1, Lcom/bbm/ui/gt;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/gt;-><init>(Lcom/bbm/ui/StoreItemView;Z)V
iget-object v0, p0, Lcom/bbm/ui/StoreItemView;->r:Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/bbm/ui/StoreItemView;->a(Ljava/lang/String;Lcom/bbm/ui/gv;)Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/bbm/ui/StoreItemView;->g:Landroid/widget/ImageView;
invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto/16 :goto_1c
:cond_cc
iget-object v3, p0, Lcom/bbm/ui/StoreItemView;->a:Lcom/bbm/l/b/j;
iget-object v3, v3, Lcom/bbm/l/b/l;->c:Ljava/lang/String;
iput-object v3, p0, Lcom/bbm/ui/StoreItemView;->o:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/StoreItemView;->a:Lcom/bbm/l/b/j;
sget-object v4, Lcom/bbm/l/b/k;->a:Lcom/bbm/l/b/k;
sget-object v5, Lcom/bbm/l/b/f;->c:Lcom/bbm/l/b/f;
invoke-virtual {v3, v4, v5}, Lcom/bbm/l/b/j;->a(Lcom/bbm/l/b/k;Lcom/bbm/l/b/f;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/bbm/ui/StoreItemView;->p:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/StoreItemView;->a:Lcom/bbm/l/b/j;
sget-object v4, Lcom/bbm/l/b/k;->b:Lcom/bbm/l/b/k;
sget-object v5, Lcom/bbm/l/b/f;->b:Lcom/bbm/l/b/f;
invoke-virtual {v3, v4, v5}, Lcom/bbm/l/b/j;->a(Lcom/bbm/l/b/k;Lcom/bbm/l/b/f;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/bbm/ui/StoreItemView;->q:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/StoreItemView;->a:Lcom/bbm/l/b/j;
sget-object v4, Lcom/bbm/l/b/k;->b:Lcom/bbm/l/b/k;
sget-object v5, Lcom/bbm/l/b/f;->d:Lcom/bbm/l/b/f;
invoke-virtual {v3, v4, v5}, Lcom/bbm/l/b/j;->a(Lcom/bbm/l/b/k;Lcom/bbm/l/b/f;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/bbm/ui/StoreItemView;->r:Ljava/lang/String;
goto/16 :goto_35
:cond_f8
iget-object v3, p0, Lcom/bbm/ui/StoreItemView;->h:Landroid/widget/ImageView;
const/16 v4, 0x8
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_66
:cond_101
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->i:Landroid/widget/TextView;
const/4 v3, 0x4
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->d:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->f:Landroid/widget/ImageView;
iget v2, p0, Lcom/bbm/ui/StoreItemView;->l:I
int-to-float v2, v2
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->g:Landroid/widget/ImageView;
iget v2, p0, Lcom/bbm/ui/StoreItemView;->m:I
int-to-float v2, v2
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V
iget-object v1, p0, Lcom/bbm/ui/StoreItemView;->s:Landroid/widget/FrameLayout;
const/high16 v2, 0x3f80
invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V
goto/16 :goto_94
.end method