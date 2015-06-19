.class public Landroid/support/v7/internal/widget/ActionBarView;
.super Landroid/support/v7/internal/widget/a;
.source "SourceFile"
.field private A:Landroid/support/v7/internal/widget/ProgressBarICS;
.field private B:I
.field private C:I
.field private D:I
.field private E:I
.field private F:I
.field private G:I
.field private H:Z
.field private I:Z
.field private J:Z
.field private K:Z
.field private L:Landroid/support/v7/internal/view/menu/n;
.field private M:Landroid/support/v7/internal/widget/ActionBarContextView;
.field private N:Landroid/support/v7/internal/view/menu/a;
.field private O:Landroid/support/v7/app/b;
.field private P:Ljava/lang/Runnable;
.field private Q:Landroid/support/v7/internal/widget/c;
.field private final R:Landroid/support/v7/internal/widget/p;
.field private final S:Landroid/view/View$OnClickListener;
.field private final T:Landroid/view/View$OnClickListener;
.field  g:Landroid/view/View;
.field  h:Landroid/view/Window$Callback;
.field private i:I
.field private j:I
.field private k:Ljava/lang/CharSequence;
.field private l:Ljava/lang/CharSequence;
.field private m:Landroid/graphics/drawable/Drawable;
.field private n:Landroid/graphics/drawable/Drawable;
.field private o:Landroid/content/Context;
.field private p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.field private q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.field private r:Landroid/widget/LinearLayout;
.field private s:Landroid/widget/TextView;
.field private t:Landroid/widget/TextView;
.field private u:Landroid/view/View;
.field private v:Landroid/support/v7/internal/widget/ab;
.field private w:Landroid/widget/LinearLayout;
.field private x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.field private y:Landroid/view/View;
.field private z:Landroid/support/v7/internal/widget/ProgressBarICS;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 12
const/4 v8, 0x1
const/4 v7, 0x0
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v1, -0x1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
new-instance v1, Landroid/support/v7/internal/widget/ActionBarView$1;
invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ActionBarView$1;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->R:Landroid/support/v7/internal/widget/p;
new-instance v1, Landroid/support/v7/internal/widget/ActionBarView$2;
invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ActionBarView$2;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->S:Landroid/view/View$OnClickListener;
new-instance v1, Landroid/support/v7/internal/widget/ActionBarView$3;
invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ActionBarView$3;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->T:Landroid/view/View$OnClickListener;
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
invoke-virtual {p0, v7}, Landroid/support/v7/internal/widget/ActionBarView;->setBackgroundResource(I)V
sget-object v1, Landroid/support/v7/a/k;->a:[I
sget v2, Landroid/support/v7/a/c;->b:I
invoke-virtual {p1, p2, v1, v2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v2
invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v3
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v4
const/4 v1, 0x2
invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I
invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;
const/4 v1, 0x4
invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;
const/16 v1, 0x8
invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;
if-nez v1, :cond_74
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v5, 0x9
if-lt v1, v5, :cond_74
instance-of v1, p1, Landroid/app/Activity;
if-eqz v1, :cond_6a
:try_start_5c
move-object v0, p1
check-cast v0, Landroid/app/Activity;
move-object v1, v0
invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
move-result-object v1
invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;
:goto_6a
:cond_6a
:try_end_6a
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_6a} :catch_143
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;
if-nez v1, :cond_74
invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;
:cond_74
const/4 v1, 0x7
invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;
if-nez v1, :cond_9b
instance-of v1, p1, Landroid/app/Activity;
if-eqz v1, :cond_91
:try_start_83
move-object v0, p1
check-cast v0, Landroid/app/Activity;
move-object v1, v0
invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
move-result-object v1
invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;
:try_end_91
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_83 .. :try_end_91} :catch_14d
:goto_91
:cond_91
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;
if-nez v1, :cond_9b
invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;
:cond_9b
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v3
const/16 v1, 0xe
sget v4, Landroid/support/v7/a/h;->c:I
invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v4
invoke-virtual {v3, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v3, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Z)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->S:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;
move-result-object v4
sget v5, Landroid/support/v7/a/i;->b:I
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v4
invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
const/4 v1, 0x5
invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:I
const/4 v1, 0x6
invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:I
const/16 v1, 0xf
invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->F:I
const/16 v1, 0x10
invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->G:I
const/16 v1, 0x11
invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:I
const/16 v1, 0x12
invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:I
const/4 v1, 0x3
invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->b(I)V
const/16 v1, 0xd
invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
if-eqz v1, :cond_11f
invoke-virtual {v3, v1, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
iput v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
or-int/lit8 v1, v1, 0x10
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->b(I)V
:cond_11f
invoke-virtual {v2, v7, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
new-instance v1, Landroid/support/v7/internal/view/menu/a;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;
invoke-direct {v1, p1, v2}, Landroid/support/v7/internal/view/menu/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->N:Landroid/support/v7/internal/view/menu/a;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->T:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setClickable(Z)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V
return-void
:catch_143
move-exception v1
const-string v5, "ActionBarView"
const-string v6, "Activity component name not found!"
invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_6a
:catch_14d
move-exception v1
const-string v5, "ActionBarView"
const-string v6, "Activity component name not found!"
invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_91
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/b;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->O:Landroid/support/v7/app/b;
return-object v0
.end method
.method private a(Landroid/support/v7/internal/view/menu/n;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x1
if-eqz p1, :cond_19
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/aa;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/aa;)V
:goto_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/c;->c(Z)V
return-void
:cond_19
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/c;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
goto :goto_e
.end method
.method static synthetic b(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/c;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
return-object v0
.end method
.method static synthetic c(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/view/menu/a;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->N:Landroid/support/v7/internal/view/menu/a;
return-object v0
.end method
.method private c(Ljava/lang/CharSequence;)V
.registers 5
const/4 v1, 0x0
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;
if-eqz v0, :cond_2e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
if-nez v0, :cond_38
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_38
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_38
:cond_26
const/4 v0, 0x1
:goto_27
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
if-eqz v0, :cond_3a
:goto_2b
invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_2e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->N:Landroid/support/v7/internal/view/menu/a;
if-eqz v0, :cond_37
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->N:Landroid/support/v7/internal/view/menu/a;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/a;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
:cond_37
return-void
:cond_38
move v0, v1
goto :goto_27
:cond_3a
const/16 v1, 0x8
goto :goto_2b
.end method
.method static synthetic d(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method static synthetic e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
return-object v0
.end method
.method static synthetic f(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
return-object v0
.end method
.method static synthetic g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
return-object v0
.end method
.method static synthetic h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
return-object v0
.end method
.method static synthetic i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ab;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/support/v7/internal/widget/ab;
return-object v0
.end method
.method static synthetic j(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
return-object v0
.end method
.method static synthetic k(Landroid/support/v7/internal/widget/ActionBarView;)I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
return v0
.end method
.method static synthetic l(Landroid/support/v7/internal/widget/ActionBarView;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->q()V
return-void
.end method
.method static synthetic m(Landroid/support/v7/internal/widget/ActionBarView;)I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I
return v0
.end method
.method private q()V
.registers 8
const/16 v5, 0x8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
if-nez v0, :cond_99
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v3, Landroid/support/v7/a/h;->e:I
invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
sget v3, Landroid/support/v7/a/f;->g:I
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
sget v3, Landroid/support/v7/a/f;->f:I
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
sget v3, Landroid/support/v7/a/f;->G:I
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->T:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:I
if-eqz v0, :cond_50
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:I
invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_50
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;
if-eqz v0, :cond_5b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_5b
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:I
if-eqz v0, :cond_68
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:I
invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_68
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;
if-eqz v0, :cond_78
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
:cond_78
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_b8
move v0, v1
:goto_7f
iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v3, v3, 0x2
if-eqz v3, :cond_ba
move v3, v1
:goto_86
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/view/View;
if-nez v3, :cond_be
if-eqz v0, :cond_bc
move v4, v2
:goto_8d
invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
if-eqz v0, :cond_c0
if-nez v3, :cond_c0
:goto_96
invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V
:cond_99
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
if-nez v0, :cond_b2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_b7
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_b7
:cond_b2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_b7
return-void
:cond_b8
move v0, v2
goto :goto_7f
:cond_ba
move v3, v2
goto :goto_86
:cond_bc
const/4 v4, 0x4
goto :goto_8d
:cond_be
move v4, v5
goto :goto_8d
:cond_c0
move v1, v2
goto :goto_96
.end method
.method public final bridge synthetic a()I
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->a()I
move-result v0
return v0
.end method
.method public final bridge synthetic a(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->a(I)V
return-void
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)V
.registers 5
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_13
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;
if-nez v0, :cond_13
:cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V
:cond_13
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V
:cond_2a
return-void
.end method
.method public final a(Landroid/support/v4/a/a/a;Landroid/support/v7/internal/view/menu/ab;)V
.registers 8
const/4 v4, 0x0
const/4 v3, -0x1
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->L:Landroid/support/v7/internal/view/menu/n;
if-ne p1, v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->L:Landroid/support/v7/internal/view/menu/n;
if-eqz v0, :cond_19
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->L:Landroid/support/v7/internal/view/menu/n;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/support/v7/internal/view/menu/aa;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->L:Landroid/support/v7/internal/view/menu/n;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/support/v7/internal/view/menu/aa;)V
:cond_19
check-cast p1, Landroid/support/v7/internal/view/menu/n;
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->L:Landroid/support/v7/internal/view/menu/n;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v0, :cond_30
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
if-eqz v0, :cond_30
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_30
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-nez v0, :cond_50
new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ab;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
sget v1, Landroid/support/v7/a/f;->i:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(I)V
new-instance v0, Landroid/support/v7/internal/widget/c;
invoke-direct {v0, p0, v4}, Landroid/support/v7/internal/widget/c;-><init>(Landroid/support/v7/internal/widget/ActionBarView;B)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
:cond_50
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
const/4 v0, -0x2
invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->d:Z
if-nez v0, :cond_8b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v3, Landroid/support/v7/a/d;->b:I
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/view/menu/n;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ac;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/support/v7/internal/view/menu/n;)V
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
if-eqz v1, :cond_84
if-eq v1, p0, :cond_84
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_84
invoke-virtual {p0, v0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_87
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
goto/16 :goto_6
:cond_8b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, v4}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b()V
iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/view/menu/n;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ac;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v1, :cond_d5
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
if-eqz v1, :cond_c8
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eq v1, v3, :cond_c8
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_c8
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->a()I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setVisibility(I)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_87
:cond_d5
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_87
.end method
.method public final bridge synthetic a(Landroid/support/v7/internal/widget/ActionBarContainer;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->a(Landroid/support/v7/internal/widget/ActionBarContainer;)V
return-void
.end method
.method public final a(Landroid/support/v7/internal/widget/ActionBarContextView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->M:Landroid/support/v7/internal/widget/ActionBarContextView;
return-void
.end method
.method public final a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
.registers 5
const/4 v1, 0x1
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
:cond_a
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz p1, :cond_2f
move v0, v1
:goto_f
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->I:Z
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->I:Z
if-eqz v0, :cond_2e
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I
const/4 v2, 0x2
if-ne v0, v2, :cond_2e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
const/4 v2, -0x2
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v2, -0x1
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Z)V
:cond_2e
return-void
:cond_2f
const/4 v0, 0x0
goto :goto_f
.end method
.method public final a(Landroid/view/View;)V
.registers 4
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_20
const/4 v0, 0x1
:goto_7
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
if-eqz v1, :cond_12
if-eqz v0, :cond_12
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
:cond_12
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
if-eqz v1, :cond_1f
if-eqz v0, :cond_1f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
:cond_1f
return-void
:cond_20
const/4 v0, 0x0
goto :goto_7
.end method
.method public final a(Landroid/view/Window$Callback;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/Window$Callback;
return-void
.end method
.method public final a(Ljava/lang/CharSequence;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->H:Z
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->c(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a(Z)V
.registers 5
const/4 v1, 0x0
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->d:Z
if-eq v0, p1, :cond_57
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v0, :cond_33
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
if-eqz v0, :cond_18
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_18
if-eqz p1, :cond_58
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v0, :cond_25
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V
:cond_25
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
const/4 v2, -0x1
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
:goto_2e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->requestLayout()V
:cond_33
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v0, :cond_3f
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz p1, :cond_67
move v0, v1
:goto_3c
invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V
:cond_3f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_54
if-nez p1, :cond_6a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Landroid/support/v7/a/d;->b:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V
:goto_54
:cond_54
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->a(Z)V
:cond_57
return-void
:cond_58
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
const/4 v2, -0x2
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
goto :goto_2e
:cond_67
const/16 v0, 0x8
goto :goto_3c
:cond_6a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b()V
goto :goto_54
.end method
.method public final b(I)V
.registers 9
const/16 v3, 0x8
const/4 v0, -0x1
const/4 v4, 0x1
const/4 v2, 0x0
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
if-ne v1, v0, :cond_99
:goto_9
iput p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v1, v0, 0x1f
if-eqz v1, :cond_bd
and-int/lit8 v1, p1, 0x2
if-eqz v1, :cond_9e
move v5, v4
:goto_14
if-eqz v5, :cond_a1
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
if-nez v1, :cond_a1
move v1, v2
:goto_1b
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V
and-int/lit8 v1, v0, 0x4
if-eqz v1, :cond_33
and-int/lit8 v1, p1, 0x4
if-eqz v1, :cond_a4
move v1, v4
:goto_29
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Z)V
if-eqz v1, :cond_33
invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActionBarView;->c(Z)V
:cond_33
and-int/lit8 v1, v0, 0x1
if-eqz v1, :cond_49
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_a6
and-int/lit8 v1, p1, 0x1
if-eqz v1, :cond_a6
move v1, v4
:goto_40
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
if-eqz v1, :cond_a8
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;
:goto_46
invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V
:cond_49
and-int/lit8 v1, v0, 0x8
if-eqz v1, :cond_54
and-int/lit8 v1, p1, 0x8
if-eqz v1, :cond_ab
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->q()V
:goto_54
:cond_54
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
if-eqz v1, :cond_76
and-int/lit8 v1, v0, 0x6
if-eqz v1, :cond_76
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v1, v1, 0x4
if-eqz v1, :cond_b1
move v1, v4
:goto_63
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/view/View;
if-nez v5, :cond_6a
if-eqz v1, :cond_b3
move v3, v2
:goto_6a
:cond_6a
invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
if-nez v5, :cond_b5
if-eqz v1, :cond_b5
:goto_73
invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V
:cond_76
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_87
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
if-eqz v0, :cond_87
and-int/lit8 v0, p1, 0x10
if-eqz v0, :cond_b7
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
:goto_87
:cond_87
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V
:goto_8a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->isEnabled()Z
move-result v0
if-nez v0, :cond_c1
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
:goto_98
return-void
:cond_99
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
xor-int/2addr v0, p1
goto/16 :goto_9
:cond_9e
move v5, v2
goto/16 :goto_14
:cond_a1
move v1, v3
goto/16 :goto_1b
:cond_a4
move v1, v2
goto :goto_29
:cond_a6
move v1, v2
goto :goto_40
:cond_a8
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;
goto :goto_46
:cond_ab
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
goto :goto_54
:cond_b1
move v1, v2
goto :goto_63
:cond_b3
const/4 v3, 0x4
goto :goto_6a
:cond_b5
move v4, v2
goto :goto_73
:cond_b7
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
goto :goto_87
:cond_bd
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->invalidate()V
goto :goto_8a
:cond_c1
and-int/lit8 v0, p1, 0x4
if-eqz v0, :cond_d7
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Landroid/support/v7/a/i;->b:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_98
:cond_d7
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Landroid/support/v7/a/i;->a:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_98
.end method
.method public final b(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public final b(Ljava/lang/CharSequence;)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->H:Z
if-nez v0, :cond_7
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->c(Ljava/lang/CharSequence;)V
:cond_7
return-void
.end method
.method public final bridge synthetic b(Z)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->b(Z)V
return-void
.end method
.method public final bridge synthetic b()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->b()Z
move-result v0
return v0
.end method
.method public final bridge synthetic c()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->c()V
return-void
.end method
.method public final c(Z)V
.registers 5
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V
if-nez p1, :cond_13
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
:goto_12
return-void
:cond_13
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_2b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Landroid/support/v7/a/i;->b:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_12
:cond_2b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Landroid/support/v7/a/i;->a:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_12
.end method
.method public final d(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->J:Z
return-void
.end method
.method public final bridge synthetic d()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->d()Z
move-result v0
return v0
.end method
.method public final bridge synthetic e()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->e()Z
move-result v0
return v0
.end method
.method public final bridge synthetic f()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->f()Z
move-result v0
return v0
.end method
.method public final bridge synthetic g()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->g()V
return-void
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 3
new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;
const/4 v1, 0x0
invoke-direct {v0, v1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(B)V
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 2
if-nez p1, :cond_6
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object p1
:cond_6
return-object p1
.end method
.method public final h()V
.registers 4
new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->F:I
invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
sget v1, Landroid/support/v7/a/f;->s:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
const/16 v1, 0x2710
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
return-void
.end method
.method public final i()V
.registers 4
new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Landroid/content/Context;
iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->G:I
invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
sget v1, Landroid/support/v7/a/f;->r:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
return-void
.end method
.method public final j()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->d:Z
return v0
.end method
.method public final k()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
iget-object v0, v0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final l()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
if-nez v0, :cond_b
const/4 v0, 0x0
:goto_5
if-eqz v0, :cond_a
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->collapseActionView()Z
:cond_a
return-void
:cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
iget-object v0, v0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;
goto :goto_5
.end method
.method public final m()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
return-object v0
.end method
.method public final n()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I
return v0
.end method
.method public final o()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
return v0
.end method
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/widget/TextView;
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/widget/TextView;
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-ne v0, p0, :cond_1b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
:cond_1b
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_26
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->q()V
:cond_26
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v0, :cond_42
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->I:Z
if-eqz v0, :cond_42
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
if-eqz v0, :cond_3c
const/4 v1, -0x2
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v1, -0x1
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_3c
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Z)V
:cond_42
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v0, :cond_4e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->h()V
:cond_4e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v0, :cond_5a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->i()V
:cond_5a
return-void
.end method
.method public onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->P:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d()Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->f()Z
:cond_16
return-void
.end method
.method protected onFinishInflate()V
.registers 3
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onFinishInflate()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
if-eqz v0, :cond_2a
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eq v0, p0, :cond_2a
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_25
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_25
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
:cond_2a
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 15
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingLeft()I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v2
sub-int v0, p5, p3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v3
sub-int/2addr v0, v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I
move-result v3
sub-int v3, v0, v3
if-gtz v3, :cond_18
:cond_17
:goto_17
return-void
:cond_18
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
if-eqz v0, :cond_117
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
:goto_1e
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I
move-result v4
const/16 v5, 0x8
if-eq v4, v5, :cond_1c0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a()I
move-result v4
add-int v5, v1, v4
invoke-static {v0, v5, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;III)I
move-result v0
add-int/2addr v0, v4
add-int/2addr v0, v1
:goto_32
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
if-nez v1, :cond_59
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
if-eqz v1, :cond_11b
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v1
const/16 v4, 0x8
if-eq v1, v4, :cond_11b
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v1, v1, 0x8
if-eqz v1, :cond_11b
const/4 v1, 0x1
:goto_4b
if-eqz v1, :cond_54
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
invoke-static {v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;III)I
move-result v4
add-int/2addr v0, v4
:cond_54
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:I
packed-switch v4, :pswitch_data_1c4
:cond_59
move v1, v0
:goto_5a
sub-int v0, p4, p2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingRight()I
move-result v4
sub-int/2addr v0, v4
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v4, :cond_79
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v4
if-ne v4, p0, :cond_79
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-static {v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/view/View;III)I
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I
move-result v4
sub-int/2addr v0, v4
:cond_79
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v4, :cond_1bd
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v4
const/16 v5, 0x8
if-eq v4, v5, :cond_1bd
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-static {v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/view/View;III)I
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I
move-result v2
sub-int/2addr v0, v2
move v2, v0
:goto_94
const/4 v0, 0x0
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
if-eqz v3, :cond_14d
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
move-object v7, v0
:goto_9c
if-eqz v7, :cond_f3
invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
instance-of v3, v0, Landroid/support/v7/app/ActionBar$LayoutParams;
if-eqz v3, :cond_15c
check-cast v0, Landroid/support/v7/app/ActionBar$LayoutParams;
move-object v5, v0
:goto_a9
if-eqz v5, :cond_160
iget v0, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I
:goto_ad
invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I
move-result v8
const/4 v4, 0x0
const/4 v3, 0x0
if-eqz v5, :cond_1b4
iget v3, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->leftMargin:I
add-int v4, v1, v3
iget v1, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->rightMargin:I
sub-int v3, v2, v1
iget v2, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->topMargin:I
iget v1, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->bottomMargin:I
move v5, v2
move v6, v3
move v2, v4
move v4, v1
:goto_c5
and-int/lit8 v1, v0, 0x7
const/4 v3, 0x1
if-ne v1, v3, :cond_16b
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I
move-result v3
sub-int/2addr v3, v8
div-int/lit8 v3, v3, 0x2
if-ge v3, v2, :cond_164
const/4 v1, 0x3
move v3, v1
:goto_d5
const/4 v1, 0x0
packed-switch v3, :pswitch_data_1ce
:pswitch_d9
move v2, v1
:goto_da
:pswitch_da
and-int/lit8 v1, v0, 0x70
const/4 v3, -0x1
if-ne v0, v3, :cond_e2
const/16 v0, 0x10
move v1, v0
:cond_e2
const/4 v0, 0x0
sparse-switch v1, :sswitch_data_1dc
:goto_e6
invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
add-int/2addr v1, v2
invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
add-int/2addr v3, v0
invoke-virtual {v7, v2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V
:cond_f3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->bringToFront()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredHeight()I
move-result v0
div-int/lit8 v0, v0, 0x2
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:I
neg-int v3, v0
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:I
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v5}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I
move-result v5
add-int/2addr v4, v5
invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->layout(IIII)V
goto/16 :goto_17
:cond_117
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
goto/16 :goto_1e
:cond_11b
const/4 v1, 0x0
goto/16 :goto_4b
:pswitch_11e
move v1, v0
goto/16 :goto_5a
:pswitch_121
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;
if-eqz v4, :cond_59
if-eqz v1, :cond_12a
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:I
add-int/2addr v0, v1
:cond_12a
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;
invoke-static {v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;III)I
move-result v1
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:I
add-int/2addr v1, v4
add-int/2addr v0, v1
move v1, v0
goto/16 :goto_5a
:pswitch_137
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v4, :cond_59
if-eqz v1, :cond_140
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:I
add-int/2addr v0, v1
:cond_140
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-static {v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;III)I
move-result v1
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:I
add-int/2addr v1, v4
add-int/2addr v0, v1
move v1, v0
goto/16 :goto_5a
:cond_14d
iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v3, v3, 0x10
if-eqz v3, :cond_1ba
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
if-eqz v3, :cond_1ba
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
move-object v7, v0
goto/16 :goto_9c
:cond_15c
const/4 v0, 0x0
move-object v5, v0
goto/16 :goto_a9
:cond_160
const/16 v0, 0x13
goto/16 :goto_ad
:cond_164
add-int/2addr v3, v8
if-le v3, v6, :cond_168
const/4 v1, 0x5
:cond_168
move v3, v1
goto/16 :goto_d5
:cond_16b
const/4 v3, -0x1
if-ne v0, v3, :cond_1b1
const/4 v1, 0x3
move v3, v1
goto/16 :goto_d5
:pswitch_172
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I
move-result v1
sub-int/2addr v1, v8
div-int/lit8 v1, v1, 0x2
move v2, v1
goto/16 :goto_da
:pswitch_17c
sub-int v1, v6, v8
move v2, v1
goto/16 :goto_da
:sswitch_181
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getHeight()I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I
move-result v3
sub-int/2addr v1, v3
sub-int v0, v1, v0
invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
sub-int/2addr v0, v1
div-int/lit8 v0, v0, 0x2
goto/16 :goto_e6
:sswitch_199
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v0
add-int/2addr v0, v5
goto/16 :goto_e6
:sswitch_1a0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getHeight()I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
sub-int/2addr v0, v1
sub-int/2addr v0, v4
goto/16 :goto_e6
:cond_1b1
move v3, v1
goto/16 :goto_d5
:cond_1b4
move v5, v4
move v6, v2
move v4, v3
move v2, v1
goto/16 :goto_c5
:cond_1ba
move-object v7, v0
goto/16 :goto_9c
:cond_1bd
move v2, v0
goto/16 :goto_94
:cond_1c0
move v0, v1
goto/16 :goto_32
nop
:pswitch_data_1c4
.packed-switch 0x0
:pswitch_11e
:pswitch_121
:pswitch_137
.end packed-switch
:sswitch_data_1dc
.sparse-switch
0x10 -> :sswitch_181
0x30 -> :sswitch_199
0x50 -> :sswitch_1a0
.end sparse-switch
:pswitch_data_1ce
.packed-switch 0x1
:pswitch_172
:pswitch_d9
:pswitch_da
:pswitch_d9
:pswitch_17c
.end packed-switch
.end method
.method protected onMeasure(II)V
.registers 22
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getChildCount()I
move-result v13
move-object/from16 v0, p0
iget-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->J:Z
if-eqz v1, :cond_45
const/4 v2, 0x0
const/4 v1, 0x0
move/from16 v18, v1
move v1, v2
move/from16 v2, v18
:goto_11
if-ge v2, v13, :cond_36
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v4
const/16 v5, 0x8
if-eq v4, v5, :cond_33
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-ne v3, v4, :cond_31
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I
move-result v3
if-eqz v3, :cond_33
:cond_31
add-int/lit8 v1, v1, 0x1
:cond_33
add-int/lit8 v2, v2, 0x1
goto :goto_11
:cond_36
if-nez v1, :cond_45
const/4 v1, 0x0
const/4 v2, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V
const/4 v1, 0x1
move-object/from16 v0, p0
iput-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->K:Z
:goto_44
:cond_44
return-void
:cond_45
const/4 v1, 0x0
move-object/from16 v0, p0
iput-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->K:Z
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
const/high16 v2, 0x4000
if-eq v1, v2, :cond_73
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " can only be used with android:layout_width=\"MATCH_PARENT\" (or fill_parent)"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_73
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
const/high16 v2, -0x8000
if-eq v1, v2, :cond_9c
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " can only be used with android:layout_height=\"wrap_content\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_9c
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v14
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
if-lez v1, :cond_264
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
move v3, v1
:goto_ab
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v1
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I
move-result v2
add-int v15, v1, v2
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingLeft()I
move-result v1
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingRight()I
move-result v2
sub-int v10, v3, v15
const/high16 v4, -0x8000
invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v6
sub-int v1, v14, v1
sub-int v5, v1, v2
div-int/lit8 v4, v5, 0x2
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
if-eqz v1, :cond_26b
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
:goto_d5
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I
move-result v2
const/16 v7, 0x8
if-eq v2, v7, :cond_392
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
if-gez v7, :cond_271
const/high16 v2, -0x8000
invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
:goto_eb
const/high16 v7, 0x4000
invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v7
invoke-virtual {v1, v2, v7}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->measure(II)V
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I
move-result v2
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a()I
move-result v1
add-int/2addr v1, v2
const/4 v2, 0x0
sub-int/2addr v5, v1
invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I
move-result v2
const/4 v5, 0x0
sub-int v1, v2, v1
invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I
move-result v1
:goto_10a
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v5, :cond_132
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v5
move-object/from16 v0, p0
if-ne v5, v0, :cond_132
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-static {v5, v2, v6}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;II)I
move-result v2
const/4 v5, 0x0
move-object/from16 v0, p0
iget-object v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v7}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I
move-result v7
sub-int/2addr v4, v7
invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I
move-result v4
:cond_132
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v5, :cond_15a
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v5}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v5
const/16 v7, 0x8
if-eq v5, v7, :cond_15a
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-static {v5, v2, v6}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;II)I
move-result v2
const/4 v5, 0x0
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I
move-result v6
sub-int/2addr v4, v6
invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I
move-result v4
:cond_15a
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
if-eqz v5, :cond_27b
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v5
const/16 v6, 0x8
if-eq v5, v6, :cond_27b
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v5, v5, 0x8
if-eqz v5, :cond_27b
const/4 v5, 0x1
:goto_175
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
if-nez v6, :cond_182
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->i:I
packed-switch v6, :pswitch_data_396
:cond_182
move v6, v1
move v7, v2
:goto_184
const/4 v1, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
if-eqz v2, :cond_312
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
move-object v12, v1
:goto_190
if-eqz v12, :cond_220
invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
instance-of v1, v2, Landroid/support/v7/app/ActionBar$LayoutParams;
if-eqz v1, :cond_327
move-object v1, v2
check-cast v1, Landroid/support/v7/app/ActionBar$LayoutParams;
move-object v11, v1
:goto_1a4
const/4 v8, 0x0
const/4 v1, 0x0
if-eqz v11, :cond_1b2
iget v1, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->leftMargin:I
iget v8, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->rightMargin:I
add-int/2addr v8, v1
iget v1, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->topMargin:I
iget v9, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->bottomMargin:I
add-int/2addr v1, v9
:cond_1b2
move-object/from16 v0, p0
iget v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
if-lez v9, :cond_32b
iget v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
const/16 v16, -0x2
move/from16 v0, v16
if-eq v9, v0, :cond_32b
const/high16 v9, 0x4000
:goto_1c2
const/16 v16, 0x0
iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v17, v0
if-ltz v17, :cond_1d4
iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v17, v0
move/from16 v0, v17
invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I
move-result v10
:cond_1d4
sub-int v1, v10, v1
move/from16 v0, v16
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v16
iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v10, -0x2
if-eq v1, v10, :cond_32f
const/high16 v1, 0x4000
:goto_1e3
const/16 v17, 0x0
iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
if-ltz v10, :cond_333
iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I
move-result v10
:goto_1ef
sub-int/2addr v10, v8
move/from16 v0, v17
invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I
move-result v10
if-eqz v11, :cond_336
iget v11, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I
:goto_1fa
and-int/lit8 v11, v11, 0x7
const/16 v17, 0x1
move/from16 v0, v17
if-ne v11, v0, :cond_38c
iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v11, -0x1
if-ne v2, v11, :cond_38c
invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I
move-result v2
mul-int/lit8 v2, v2, 0x2
:goto_20d
invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
move/from16 v0, v16
invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v12, v1, v2}, Landroid/view/View;->measure(II)V
invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
add-int/2addr v1, v8
sub-int/2addr v7, v1
:cond_220
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;
if-nez v1, :cond_247
if-eqz v5, :cond_247
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
const/high16 v4, 0x4000
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-static {v1, v7, v2}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;II)I
const/4 v1, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;
invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I
move-result v2
sub-int v2, v6, v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
:cond_247
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
if-gtz v1, :cond_383
const/4 v2, 0x0
const/4 v1, 0x0
move v3, v1
:goto_250
if-ge v3, v13, :cond_33a
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
add-int/2addr v1, v15
if-le v1, v2, :cond_389
:goto_25f
add-int/lit8 v2, v3, 0x1
move v3, v2
move v2, v1
goto :goto_250
:cond_264
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
move v3, v1
goto/16 :goto_ab
:cond_26b
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->p:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
goto/16 :goto_d5
:cond_271
iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
const/high16 v7, 0x4000
invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
goto/16 :goto_eb
:cond_27b
const/4 v5, 0x0
goto/16 :goto_175
:pswitch_27e
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;
if-eqz v6, :cond_182
if-eqz v5, :cond_2c3
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->C:I
mul-int/lit8 v6, v6, 0x2
:goto_28c
const/4 v7, 0x0
sub-int/2addr v2, v6
invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I
move-result v2
const/4 v7, 0x0
sub-int/2addr v1, v6
invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I
move-result v1
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;
const/high16 v7, -0x8000
invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v7
const/high16 v8, 0x4000
invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->measure(II)V
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;
invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I
move-result v6
const/4 v7, 0x0
sub-int/2addr v2, v6
invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I
move-result v2
const/4 v7, 0x0
sub-int/2addr v1, v6
invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I
move-result v1
move v6, v1
move v7, v2
goto/16 :goto_184
:cond_2c3
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->C:I
goto :goto_28c
:pswitch_2c8
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v6, :cond_182
if-eqz v5, :cond_30d
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->C:I
mul-int/lit8 v6, v6, 0x2
:goto_2d6
const/4 v7, 0x0
sub-int/2addr v2, v6
invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I
move-result v2
const/4 v7, 0x0
sub-int/2addr v1, v6
invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I
move-result v1
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
const/high16 v7, -0x8000
invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v7
const/high16 v8, 0x4000
invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-virtual {v6, v7, v8}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->measure(II)V
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v6}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I
move-result v6
const/4 v7, 0x0
sub-int/2addr v2, v6
invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I
move-result v2
const/4 v7, 0x0
sub-int/2addr v1, v6
invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I
move-result v1
move v6, v1
move v7, v2
goto/16 :goto_184
:cond_30d
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->C:I
goto :goto_2d6
:cond_312
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->j:I
and-int/lit8 v2, v2, 0x10
if-eqz v2, :cond_38f
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
if-eqz v2, :cond_38f
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
move-object v12, v1
goto/16 :goto_190
:cond_327
const/4 v1, 0x0
move-object v11, v1
goto/16 :goto_1a4
:cond_32b
const/high16 v9, -0x8000
goto/16 :goto_1c2
:cond_32f
const/high16 v1, -0x8000
goto/16 :goto_1e3
:cond_333
move v10, v7
goto/16 :goto_1ef
:cond_336
const/16 v11, 0x13
goto/16 :goto_1fa
:cond_33a
move-object/from16 v0, p0
invoke-virtual {v0, v14, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V
:goto_33f
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->M:Landroid/support/v7/internal/widget/ActionBarContextView;
if-eqz v1, :cond_350
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->M:Landroid/support/v7/internal/widget/ActionBarContextView;
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I
move-result v2
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(I)V
:cond_350
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v1, :cond_44
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v1
const/16 v2, 0x8
if-eq v1, v2, :cond_44
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->B:I
mul-int/lit8 v2, v2, 0x2
sub-int v2, v14, v2
const/high16 v3, 0x4000
invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I
move-result v3
const/high16 v4, -0x8000
invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->measure(II)V
goto/16 :goto_44
:cond_383
move-object/from16 v0, p0
invoke-virtual {v0, v14, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V
goto :goto_33f
:cond_389
move v1, v2
goto/16 :goto_25f
:cond_38c
move v2, v10
goto/16 :goto_20d
:cond_38f
move-object v12, v1
goto/16 :goto_190
:cond_392
move v1, v4
move v2, v5
goto/16 :goto_10a
:pswitch_data_396
.packed-switch 0x1
:pswitch_27e
:pswitch_2c8
.end packed-switch
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Landroid/support/v7/internal/widget/ActionBarView; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;
invoke-virtual {p1}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/support/v7/internal/widget/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget v0, p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I
if-eqz v0, :cond_24
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
if-eqz v0, :cond_24
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->L:Landroid/support/v7/internal/view/menu/n;
if-eqz v0, :cond_24
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->L:Landroid/support/v7/internal/view/menu/n;
iget v1, p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
check-cast v0, Landroid/support/v4/a/a/b;
if-eqz v0, :cond_24
invoke-interface {v0}, Landroid/support/v4/a/a/b;->expandActionView()Z
:cond_24
iget-boolean v0, p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->b:Z
if-eqz v0, :cond_2b
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->c()V
:cond_2b
const-string v1, " - Landroid/support/v7/internal/widget/ActionBarView; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Landroid/support/v7/internal/widget/ActionBarView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
new-instance v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;
invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
if-eqz v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
iget-object v0, v0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;
if-eqz v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/c;
iget-object v0, v0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getItemId()I
move-result v0
iput v0, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I
:cond_1d
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->e()Z
move-result v0
iput-boolean v0, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->b:Z
move-object v2, v1
const-string v1, " - Landroid/support/v7/internal/widget/ActionBarView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v1, v2
return-object v1
.end method
.method public final p()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->K:Z
return v0
.end method
.method public bridge synthetic setVisibility(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setVisibility(I)V
return-void
.end method
.method public shouldDelayChildPressedState()Z
.registers 2
const/4 v0, 0x0
return v0
.end method