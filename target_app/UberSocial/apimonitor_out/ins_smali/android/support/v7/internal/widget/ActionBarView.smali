.class public Landroid/support/v7/internal/widget/ActionBarView;
.super Landroid/support/v7/internal/widget/a;
.source "SourceFile"
.field public static final g:I = 0x0
.field private static final j:Ljava/lang/String; = "ActionBarView"
.field private static final k:I = 0x1f
.field private static final l:I = 0x13
.field private A:Landroid/widget/LinearLayout;
.field private B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.field private C:Landroid/view/View;
.field private D:Landroid/support/v7/internal/widget/ProgressBarICS;
.field private E:Landroid/support/v7/internal/widget/ProgressBarICS;
.field private F:I
.field private G:I
.field private H:I
.field private I:I
.field private J:I
.field private K:I
.field private L:Z
.field private M:Z
.field private N:Z
.field private O:Z
.field private P:Landroid/support/v7/internal/view/menu/n;
.field private Q:Landroid/support/v7/internal/widget/ActionBarContextView;
.field private R:Landroid/support/v7/internal/view/menu/a;
.field private S:Landroid/widget/SpinnerAdapter;
.field private T:Landroid/support/v7/app/c;
.field private U:Ljava/lang/Runnable;
.field private V:Landroid/support/v7/internal/widget/c;
.field private final W:Landroid/support/v7/internal/widget/t;
.field private final Z:Landroid/view/View$OnClickListener;
.field private final aa:Landroid/view/View$OnClickListener;
.field  h:Landroid/view/View;
.field  i:Landroid/view/Window$Callback;
.field private m:I
.field private n:I
.field private o:Ljava/lang/CharSequence;
.field private p:Ljava/lang/CharSequence;
.field private q:Landroid/graphics/drawable/Drawable;
.field private r:Landroid/graphics/drawable/Drawable;
.field private s:Landroid/content/Context;
.field private t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.field private u:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.field private v:Landroid/widget/LinearLayout;
.field private w:Landroid/widget/TextView;
.field private x:Landroid/widget/TextView;
.field private y:Landroid/view/View;
.field private z:Landroid/support/v7/internal/widget/ag;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 12
const/4 v8, 0x1
const/4 v3, 0x0
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v1, -0x1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
new-instance v1, Landroid/support/v7/internal/widget/ActionBarView$1;
invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ActionBarView$1;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->W:Landroid/support/v7/internal/widget/t;
new-instance v1, Landroid/support/v7/internal/widget/ActionBarView$2;
invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ActionBarView$2;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->Z:Landroid/view/View$OnClickListener;
new-instance v1, Landroid/support/v7/internal/widget/ActionBarView$3;
invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ActionBarView$3;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->aa:Landroid/view/View$OnClickListener;
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setBackgroundResource(I)V
sget-object v1, Landroid/support/v7/a/n;->ActionBar:[I
sget v2, Landroid/support/v7/a/d;->actionBarStyle:I
invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v2
invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v4
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v5
const/4 v1, 0x2
invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:I
invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;
const/4 v1, 0x4
invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Ljava/lang/CharSequence;
const/16 v1, 0x8
invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/graphics/drawable/Drawable;
if-nez v1, :cond_74
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v6, 0x9
if-lt v1, v6, :cond_74
instance-of v1, p1, Landroid/app/Activity;
if-eqz v1, :cond_6a
:try_start_5c
move-object v0, p1
check-cast v0, Landroid/app/Activity;
move-object v1, v0
invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
move-result-object v1
invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/graphics/drawable/Drawable;
:goto_6a
:cond_6a
:try_end_6a
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_6a} :catch_149
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/graphics/drawable/Drawable;
if-nez v1, :cond_74
invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/graphics/drawable/Drawable;
:cond_74
const/4 v1, 0x7
invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/graphics/drawable/Drawable;
if-nez v1, :cond_9b
instance-of v1, p1, Landroid/app/Activity;
if-eqz v1, :cond_91
:try_start_83
move-object v0, p1
check-cast v0, Landroid/app/Activity;
move-object v1, v0
invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
move-result-object v1
invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/graphics/drawable/Drawable;
:try_end_91
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_83 .. :try_end_91} :catch_153
:goto_91
:cond_91
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/graphics/drawable/Drawable;
if-nez v1, :cond_9b
invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/graphics/drawable/Drawable;
:cond_9b
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v4
const/16 v1, 0xe
sget v5, Landroid/support/v7/a/k;->abc_action_bar_home:I
invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v5
invoke-virtual {v4, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v4, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Z)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView;->Z:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;
move-result-object v5
sget v6, Landroid/support/v7/a/l;->abc_action_bar_up_description:I
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v5
invoke-virtual {v1, v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
const/4 v1, 0x5
invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->H:I
const/4 v1, 0x6
invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->I:I
const/16 v1, 0xf
invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->J:I
const/16 v1, 0x10
invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->K:I
const/16 v1, 0x11
invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->F:I
const/16 v1, 0x12
invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->G:I
const/4 v1, 0x3
invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V
const/16 v1, 0xd
invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
if-eqz v1, :cond_11f
invoke-virtual {v4, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
iput v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:I
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
or-int/lit8 v1, v1, 0x10
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V
:cond_11f
invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
new-instance v1, Landroid/support/v7/internal/view/menu/a;
const v4, 0x102002c
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;
move-object v2, p1
move v5, v3
move v6, v3
invoke-direct/range {v1 .. v7}, Landroid/support/v7/internal/view/menu/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->R:Landroid/support/v7/internal/view/menu/a;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->aa:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setClickable(Z)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V
return-void
:catch_149
move-exception v1
const-string v6, "ActionBarView"
const-string v7, "Activity component name not found!"
invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_6a
:catch_153
move-exception v1
const-string v6, "ActionBarView"
const-string v7, "Activity component name not found!"
invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_91
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/c;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->T:Landroid/support/v7/app/c;
return-object v0
.end method
.method private a(Landroid/support/v7/internal/view/menu/n;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x1
if-eqz p1, :cond_19
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/ab;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/ab;)V
:goto_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/c;->c(Z)V
return-void
:cond_19
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/c;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
goto :goto_e
.end method
.method static synthetic b(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/c;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
return-object v0
.end method
.method static synthetic c(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/view/menu/a;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->R:Landroid/support/v7/internal/view/menu/a;
return-object v0
.end method
.method static synthetic d(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method static synthetic e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
return-object v0
.end method
.method static synthetic f(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
return-object v0
.end method
.method static synthetic g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
return-object v0
.end method
.method static synthetic h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
return-object v0
.end method
.method static synthetic i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ag;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ag;
return-object v0
.end method
.method static synthetic j(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
return-object v0
.end method
.method static synthetic k(Landroid/support/v7/internal/widget/ActionBarView;)I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
return v0
.end method
.method static synthetic l(Landroid/support/v7/internal/widget/ActionBarView;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->n()V
return-void
.end method
.method static synthetic m(Landroid/support/v7/internal/widget/ActionBarView;)I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:I
return v0
.end method
.method private n()V
.registers 8
const/16 v5, 0x8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
if-nez v0, :cond_99
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v3, Landroid/support/v7/a/k;->abc_action_bar_title_item:I
invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
sget v3, Landroid/support/v7/a/i;->action_bar_title:I
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/TextView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
sget v3, Landroid/support/v7/a/i;->action_bar_subtitle:I
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/widget/TextView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
sget v3, Landroid/support/v7/a/i;->up:I
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->aa:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->H:I
if-eqz v0, :cond_50
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->H:I
invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_50
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;
if-eqz v0, :cond_5b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_5b
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->I:I
if-eqz v0, :cond_68
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->I:I
invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_68
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Ljava/lang/CharSequence;
if-eqz v0, :cond_78
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Ljava/lang/CharSequence;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
:cond_78
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_b8
move v0, v1
:goto_7f
iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v3, v3, 0x2
if-eqz v3, :cond_ba
move v3, v1
:goto_86
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
if-nez v3, :cond_be
if-eqz v0, :cond_bc
move v4, v2
:goto_8d
invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
if-eqz v0, :cond_c0
if-nez v3, :cond_c0
:goto_96
invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V
:cond_99
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-nez v0, :cond_b2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_b7
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_b7
:cond_b2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
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
.method private setTitleImpl(Ljava/lang/CharSequence;)V
.registers 5
const/4 v1, 0x0
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/TextView;
if-eqz v0, :cond_2e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-nez v0, :cond_38
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_38
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_38
:cond_26
const/4 v0, 0x1
:goto_27
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
if-eqz v0, :cond_3a
:goto_2b
invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_2e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->R:Landroid/support/v7/internal/view/menu/a;
if-eqz v0, :cond_37
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->R:Landroid/support/v7/internal/view/menu/a;
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
.method public bridge synthetic a(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->a(I)V
return-void
.end method
.method public a(Landroid/support/v4/internal/view/SupportMenu;Landroid/support/v7/internal/view/menu/ac;)V
.registers 8
const/4 v4, -0x1
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->P:Landroid/support/v7/internal/view/menu/n;
if-ne p1, v0, :cond_6
:goto_5
return-void
:cond_6
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->P:Landroid/support/v7/internal/view/menu/n;
if-eqz v0, :cond_18
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->P:Landroid/support/v7/internal/view/menu/n;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/support/v7/internal/view/menu/ab;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->P:Landroid/support/v7/internal/view/menu/n;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/support/v7/internal/view/menu/ab;)V
:cond_18
check-cast p1, Landroid/support/v7/internal/view/menu/n;
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->P:Landroid/support/v7/internal/view/menu/n;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v0, :cond_2f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
if-eqz v0, :cond_2f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_2f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-nez v0, :cond_50
new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ac;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
sget v1, Landroid/support/v7/a/i;->action_menu_presenter:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(I)V
new-instance v0, Landroid/support/v7/internal/widget/c;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/c;-><init>(Landroid/support/v7/internal/widget/ActionBarView;Landroid/support/v7/internal/widget/ActionBarView$1;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
:cond_50
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
const/4 v0, -0x2
invoke-direct {v2, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->d:Z
if-nez v0, :cond_8b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v3, Landroid/support/v7/a/e;->abc_action_bar_expanded_action_views_exclusive:I
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/view/menu/n;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
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
goto/16 :goto_5
:cond_8b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
const/4 v3, 0x1
invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(IZ)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const v1, 0x7fffffff
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(I)V
iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/view/menu/n;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v1, :cond_da
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
if-eqz v1, :cond_cd
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eq v1, v3, :cond_cd
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_cd
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getAnimatedVisibility()I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setVisibility(I)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_87
:cond_da
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_87
.end method
.method public bridge synthetic a()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->a()Z
move-result v0
return v0
.end method
.method public bridge synthetic b()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->b()V
return-void
.end method
.method public bridge synthetic c()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->c()Z
move-result v0
return v0
.end method
.method public bridge synthetic d()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->d()Z
move-result v0
return v0
.end method
.method public bridge synthetic e()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->e()Z
move-result v0
return v0
.end method
.method public bridge synthetic f()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->f()V
return-void
.end method
.method public g()V
.registers 6
new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
const/4 v2, 0x0
const/4 v3, 0x0
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->J:I
invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
sget v1, Landroid/support/v7/a/i;->progress_horizontal:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
const/16 v1, 0x2710
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setMax(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
return-void
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 3
new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;
const/16 v1, 0x13
invoke-direct {v0, v1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(I)V
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
.method public bridge synthetic getAnimatedVisibility()I
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getAnimatedVisibility()I
move-result v0
return v0
.end method
.method public bridge synthetic getContentHeight()I
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getContentHeight()I
move-result v0
return v0
.end method
.method public getCustomNavigationView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
return-object v0
.end method
.method public getDisplayOptions()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
return v0
.end method
.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->S:Landroid/widget/SpinnerAdapter;
return-object v0
.end method
.method public getDropdownSelectedPosition()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ag;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->j()I
move-result v0
return v0
.end method
.method public getNavigationMode()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:I
return v0
.end method
.method public getSubtitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Ljava/lang/CharSequence;
return-object v0
.end method
.method public getTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;
return-object v0
.end method
.method public h()V
.registers 6
new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
const/4 v2, 0x0
const/4 v3, 0x0
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->K:I
invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
sget v1, Landroid/support/v7/a/i;->progress_circular:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
return-void
.end method
.method public i()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->d:Z
return v0
.end method
.method public j()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->M:Z
return v0
.end method
.method public k()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
iget-object v0, v0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public l()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
if-nez v0, :cond_b
const/4 v0, 0x0
:goto_5
if-eqz v0, :cond_a
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->collapseActionView()Z
:cond_a
return-void
:cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
iget-object v0, v0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;
goto :goto_5
.end method
.method public m()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->O:Z
return v0
.end method
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->w:Landroid/widget/TextView;
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/widget/TextView;
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-ne v0, p0, :cond_1b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
:cond_1b
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_26
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->n()V
:cond_26
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v0, :cond_42
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->M:Z
if-eqz v0, :cond_42
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
if-eqz v0, :cond_3c
const/4 v1, -0x2
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v1, -0x1
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_3c
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V
:cond_42
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v0, :cond_4e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->g()V
:cond_4e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v0, :cond_5a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->h()V
:cond_5a
return-void
.end method
.method public onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->U:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b()Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d()Z
:cond_16
return-void
.end method
.method protected onFinishInflate()V
.registers 3
invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onFinishInflate()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
if-eqz v0, :cond_2a
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eq v0, p0, :cond_2a
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_25
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_25
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
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
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-eqz v0, :cond_11a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
:goto_1e
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I
move-result v4
const/16 v5, 0x8
if-eq v4, v5, :cond_1c5
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a()I
move-result v4
add-int v5, v1, v4
invoke-virtual {p0, v0, v5, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/view/View;III)I
move-result v0
add-int/2addr v0, v4
add-int/2addr v0, v1
:goto_32
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-nez v1, :cond_59
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
if-eqz v1, :cond_11e
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v1
const/16 v4, 0x8
if-eq v1, v4, :cond_11e
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v1, v1, 0x8
if-eqz v1, :cond_11e
const/4 v1, 0x1
:goto_4b
if-eqz v1, :cond_54
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
invoke-virtual {p0, v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/view/View;III)I
move-result v4
add-int/2addr v0, v4
:cond_54
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:I
packed-switch v4, :pswitch_data_1c8
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
invoke-virtual {p0, v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->c(Landroid/view/View;III)I
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I
move-result v4
sub-int/2addr v0, v4
:cond_79
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v4, :cond_1c2
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v4
const/16 v5, 0x8
if-eq v4, v5, :cond_1c2
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->c(Landroid/view/View;III)I
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I
move-result v2
sub-int/2addr v0, v2
move v2, v0
:goto_94
const/4 v0, 0x0
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-eqz v3, :cond_150
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
move-object v7, v0
:goto_9c
if-eqz v7, :cond_f6
invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
instance-of v3, v0, Landroid/support/v7/app/ActionBar$LayoutParams;
if-eqz v3, :cond_15f
check-cast v0, Landroid/support/v7/app/ActionBar$LayoutParams;
move-object v5, v0
:goto_a9
if-eqz v5, :cond_163
iget v0, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I
:goto_ad
invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I
move-result v8
const/4 v4, 0x0
const/4 v3, 0x0
if-eqz v5, :cond_1b9
iget v3, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->leftMargin:I
add-int v4, v1, v3
iget v1, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->rightMargin:I
sub-int v3, v2, v1
iget v2, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->topMargin:I
iget v1, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->bottomMargin:I
move v5, v2
move v6, v3
move v3, v4
move v4, v1
:goto_c5
and-int/lit8 v1, v0, 0x7
const/4 v2, 0x1
if-ne v1, v2, :cond_16d
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I
move-result v2
sub-int/2addr v2, v8
div-int/lit8 v2, v2, 0x2
if-ge v2, v3, :cond_167
const/4 v1, 0x3
:cond_d4
:goto_d4
move v2, v1
:goto_d5
const/4 v1, 0x0
packed-switch v2, :pswitch_data_1d2
:pswitch_d9
move v2, v1
:goto_da
and-int/lit8 v1, v0, 0x70
const/4 v6, -0x1
if-ne v0, v6, :cond_e2
const/16 v0, 0x10
move v1, v0
:cond_e2
const/4 v0, 0x0
sparse-switch v1, :sswitch_data_1e0
:goto_e6
invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
add-int v4, v2, v1
invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
move-result v5
add-int/2addr v5, v0
invoke-virtual {v7, v2, v0, v4, v5}, Landroid/view/View;->layout(IIII)V
add-int v0, v3, v1
:cond_f6
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->bringToFront()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredHeight()I
move-result v0
div-int/lit8 v0, v0, 0x2
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->F:I
neg-int v3, v0
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->F:I
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v5}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I
move-result v5
add-int/2addr v4, v5
invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->layout(IIII)V
goto/16 :goto_17
:cond_11a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
goto/16 :goto_1e
:cond_11e
const/4 v1, 0x0
goto/16 :goto_4b
:pswitch_121
move v1, v0
goto/16 :goto_5a
:pswitch_124
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/widget/LinearLayout;
if-eqz v4, :cond_59
if-eqz v1, :cond_12d
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->G:I
add-int/2addr v0, v1
:cond_12d
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/widget/LinearLayout;
invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/view/View;III)I
move-result v1
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->G:I
add-int/2addr v1, v4
add-int/2addr v0, v1
move v1, v0
goto/16 :goto_5a
:pswitch_13a
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v4, :cond_59
if-eqz v1, :cond_143
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->G:I
add-int/2addr v0, v1
:cond_143
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/view/View;III)I
move-result v1
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->G:I
add-int/2addr v1, v4
add-int/2addr v0, v1
move v1, v0
goto/16 :goto_5a
:cond_150
iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v3, v3, 0x10
if-eqz v3, :cond_1bf
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
if-eqz v3, :cond_1bf
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
move-object v7, v0
goto/16 :goto_9c
:cond_15f
const/4 v0, 0x0
move-object v5, v0
goto/16 :goto_a9
:cond_163
const/16 v0, 0x13
goto/16 :goto_ad
:cond_167
add-int/2addr v2, v8
if-le v2, v6, :cond_d4
const/4 v1, 0x5
goto/16 :goto_d4
:cond_16d
const/4 v2, -0x1
if-ne v0, v2, :cond_1b6
const/4 v1, 0x3
move v2, v1
goto/16 :goto_d5
:pswitch_174
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I
move-result v1
sub-int/2addr v1, v8
div-int/lit8 v1, v1, 0x2
move v2, v1
goto/16 :goto_da
:pswitch_17e
move v2, v3
goto/16 :goto_da
:pswitch_181
sub-int v1, v6, v8
move v2, v1
goto/16 :goto_da
:sswitch_186
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getHeight()I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I
move-result v4
sub-int/2addr v1, v4
sub-int v0, v1, v0
invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
sub-int/2addr v0, v1
div-int/lit8 v0, v0, 0x2
goto/16 :goto_e6
:sswitch_19e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v0
add-int/2addr v0, v5
goto/16 :goto_e6
:sswitch_1a5
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
:cond_1b6
move v2, v1
goto/16 :goto_d5
:cond_1b9
move v5, v4
move v6, v2
move v4, v3
move v3, v1
goto/16 :goto_c5
:cond_1bf
move-object v7, v0
goto/16 :goto_9c
:cond_1c2
move v2, v0
goto/16 :goto_94
:cond_1c5
move v0, v1
goto/16 :goto_32
:pswitch_data_1c8
.packed-switch 0x0
:pswitch_121
:pswitch_124
:pswitch_13a
.end packed-switch
:pswitch_data_1d2
.packed-switch 0x1
:pswitch_174
:pswitch_d9
:pswitch_17e
:pswitch_d9
:pswitch_181
.end packed-switch
:sswitch_data_1e0
.sparse-switch
0x10 -> :sswitch_186
0x30 -> :sswitch_19e
0x50 -> :sswitch_1a5
.end sparse-switch
.end method
.method protected onMeasure(II)V
.registers 22
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getChildCount()I
move-result v13
move-object/from16 v0, p0
iget-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->N:Z
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
iput-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->O:Z
:goto_44
:cond_44
return-void
:cond_45
const/4 v1, 0x0
move-object/from16 v0, p0
iput-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->O:Z
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
const/high16 v2, 0x4000
if-eq v1, v2, :cond_79
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " can only be used "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "with android:layout_width=\"MATCH_PARENT\" (or fill_parent)"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_79
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
const/high16 v2, -0x8000
if-eq v1, v2, :cond_a8
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " can only be used "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "with android:layout_height=\"wrap_content\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a8
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v14
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
if-lez v1, :cond_271
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
move v3, v1
:goto_b7
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
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-eqz v1, :cond_278
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
:goto_e1
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I
move-result v2
const/16 v7, 0x8
if-eq v2, v7, :cond_3ab
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
if-gez v7, :cond_27e
const/high16 v2, -0x8000
invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
:goto_f7
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
:goto_116
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v5, :cond_141
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v5
move-object/from16 v0, p0
if-ne v5, v0, :cond_141
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
const/4 v7, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v5, v2, v6, v7}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;III)I
move-result v2
const/4 v5, 0x0
move-object/from16 v0, p0
iget-object v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v7}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I
move-result v7
sub-int/2addr v4, v7
invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I
move-result v4
:cond_141
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v5, :cond_16c
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v5}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v5
const/16 v7, 0x8
if-eq v5, v7, :cond_16c
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
const/4 v7, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v5, v2, v6, v7}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;III)I
move-result v2
const/4 v5, 0x0
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->E:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I
move-result v6
sub-int/2addr v4, v6
invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I
move-result v4
:cond_16c
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
if-eqz v5, :cond_288
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v5
const/16 v6, 0x8
if-eq v5, v6, :cond_288
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v5, v5, 0x8
if-eqz v5, :cond_288
const/4 v5, 0x1
:goto_187
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-nez v6, :cond_194
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->m:I
packed-switch v6, :pswitch_data_3b0
:cond_194
move v6, v1
move v7, v2
:goto_196
const/4 v1, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-eqz v2, :cond_31f
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
move-object v12, v1
:goto_1a2
if-eqz v12, :cond_22a
invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
instance-of v1, v2, Landroid/support/v7/app/ActionBar$LayoutParams;
if-eqz v1, :cond_334
move-object v1, v2
check-cast v1, Landroid/support/v7/app/ActionBar$LayoutParams;
move-object v11, v1
:goto_1b6
const/4 v8, 0x0
const/4 v1, 0x0
if-eqz v11, :cond_1c4
iget v1, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->leftMargin:I
iget v8, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->rightMargin:I
add-int/2addr v8, v1
iget v1, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->topMargin:I
iget v9, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->bottomMargin:I
add-int/2addr v1, v9
:cond_1c4
move-object/from16 v0, p0
iget v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
if-gtz v9, :cond_338
const/high16 v9, -0x8000
:goto_1cc
const/16 v16, 0x0
iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v17, v0
if-ltz v17, :cond_1de
iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v17, v0
move/from16 v0, v17
invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I
move-result v10
:cond_1de
sub-int v1, v10, v1
move/from16 v0, v16
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v16
iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v10, -0x2
if-eq v1, v10, :cond_348
const/high16 v1, 0x4000
:goto_1ed
const/16 v17, 0x0
iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
if-ltz v10, :cond_34c
iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I
move-result v10
:goto_1f9
sub-int/2addr v10, v8
move/from16 v0, v17
invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I
move-result v10
if-eqz v11, :cond_34f
iget v11, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I
:goto_204
and-int/lit8 v11, v11, 0x7
const/16 v17, 0x1
move/from16 v0, v17
if-ne v11, v0, :cond_3a5
iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v11, -0x1
if-ne v2, v11, :cond_3a5
invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I
move-result v2
mul-int/lit8 v2, v2, 0x2
:goto_217
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
:cond_22a
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-nez v1, :cond_254
if-eqz v5, :cond_254
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
const/high16 v4, 0x4000
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v1, v7, v2, v4}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;III)I
const/4 v1, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I
move-result v2
sub-int v2, v6, v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
:cond_254
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->f:I
if-gtz v1, :cond_39c
const/4 v2, 0x0
const/4 v1, 0x0
move v3, v1
:goto_25d
if-ge v3, v13, :cond_353
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
add-int/2addr v1, v15
if-le v1, v2, :cond_3a2
:goto_26c
add-int/lit8 v2, v3, 0x1
move v3, v2
move v2, v1
goto :goto_25d
:cond_271
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
move v3, v1
goto/16 :goto_b7
:cond_278
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
goto/16 :goto_e1
:cond_27e
iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
const/high16 v7, 0x4000
invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
goto/16 :goto_f7
:cond_288
const/4 v5, 0x0
goto/16 :goto_187
:pswitch_28b
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/widget/LinearLayout;
if-eqz v6, :cond_194
if-eqz v5, :cond_2d0
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->G:I
mul-int/lit8 v6, v6, 0x2
:goto_299
const/4 v7, 0x0
sub-int/2addr v2, v6
invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I
move-result v2
const/4 v7, 0x0
sub-int/2addr v1, v6
invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I
move-result v1
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/widget/LinearLayout;
const/high16 v7, -0x8000
invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v7
const/high16 v8, 0x4000
invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->measure(II)V
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/widget/LinearLayout;
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
goto/16 :goto_196
:cond_2d0
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->G:I
goto :goto_299
:pswitch_2d5
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v6, :cond_194
if-eqz v5, :cond_31a
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->G:I
mul-int/lit8 v6, v6, 0x2
:goto_2e3
const/4 v7, 0x0
sub-int/2addr v2, v6
invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I
move-result v2
const/4 v7, 0x0
sub-int/2addr v1, v6
invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I
move-result v1
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
const/high16 v7, -0x8000
invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v7
const/high16 v8, 0x4000
invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-virtual {v6, v7, v8}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->measure(II)V
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
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
goto/16 :goto_196
:cond_31a
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->G:I
goto :goto_2e3
:cond_31f
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v2, v2, 0x10
if-eqz v2, :cond_3a8
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
if-eqz v2, :cond_3a8
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
move-object v12, v1
goto/16 :goto_1a2
:cond_334
const/4 v1, 0x0
move-object v11, v1
goto/16 :goto_1b6
:cond_338
iget v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
const/16 v16, -0x2
move/from16 v0, v16
if-eq v9, v0, :cond_344
const/high16 v9, 0x4000
goto/16 :goto_1cc
:cond_344
const/high16 v9, -0x8000
goto/16 :goto_1cc
:cond_348
const/high16 v1, -0x8000
goto/16 :goto_1ed
:cond_34c
move v10, v7
goto/16 :goto_1f9
:cond_34f
const/16 v11, 0x13
goto/16 :goto_204
:cond_353
move-object/from16 v0, p0
invoke-virtual {v0, v14, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V
:goto_358
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/ActionBarContextView;
if-eqz v1, :cond_369
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/ActionBarContextView;
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I
move-result v2
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setContentHeight(I)V
:cond_369
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v1, :cond_44
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v1
const/16 v2, 0x8
if-eq v1, v2, :cond_44
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->D:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->F:I
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
:cond_39c
move-object/from16 v0, p0
invoke-virtual {v0, v14, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V
goto :goto_358
:cond_3a2
move v1, v2
goto/16 :goto_26c
:cond_3a5
move v2, v10
goto/16 :goto_217
:cond_3a8
move-object v12, v1
goto/16 :goto_1a2
:cond_3ab
move v1, v4
move v2, v5
goto/16 :goto_116
nop
:pswitch_data_3b0
.packed-switch 0x1
:pswitch_28b
:pswitch_2d5
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
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
if-eqz v0, :cond_24
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->P:Landroid/support/v7/internal/view/menu/n;
if-eqz v0, :cond_24
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->P:Landroid/support/v7/internal/view/menu/n;
iget v1, p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;
if-eqz v0, :cond_24
invoke-interface {v0}, Landroid/support/v4/internal/view/SupportMenuItem;->expandActionView()Z
:cond_24
iget-boolean v0, p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->b:Z
if-eqz v0, :cond_2b
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->b()V
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
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
if-eqz v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
iget-object v0, v0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;
if-eqz v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->V:Landroid/support/v7/internal/widget/c;
iget-object v0, v0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getItemId()I
move-result v0
iput v0, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I
:cond_1d
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->d()Z
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
.method public setCallback(Landroid/support/v7/app/c;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->T:Landroid/support/v7/app/c;
return-void
.end method
.method public setCollapsable(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->N:Z
return-void
.end method
.method public bridge synthetic setContentHeight(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setContentHeight(I)V
return-void
.end method
.method public setContextView(Landroid/support/v7/internal/widget/ActionBarContextView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->Q:Landroid/support/v7/internal/widget/ActionBarContextView;
return-void
.end method
.method public setCustomNavigationView(Landroid/view/View;)V
.registers 4
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_20
const/4 v0, 0x1
:goto_7
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
if-eqz v1, :cond_12
if-eqz v0, :cond_12
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
:cond_12
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
if-eqz v1, :cond_1f
if-eqz v0, :cond_1f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
:cond_1f
return-void
:cond_20
const/4 v0, 0x0
goto :goto_7
.end method
.method public setDisplayOptions(I)V
.registers 9
const/16 v3, 0x8
const/4 v0, -0x1
const/4 v4, 0x1
const/4 v2, 0x0
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
if-ne v1, v0, :cond_99
:goto_9
iput p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v1, v0, 0x1f
if-eqz v1, :cond_bd
and-int/lit8 v1, p1, 0x2
if-eqz v1, :cond_9e
move v5, v4
:goto_14
if-eqz v5, :cond_a1
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-nez v1, :cond_a1
move v1, v2
:goto_1b
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V
and-int/lit8 v1, v0, 0x4
if-eqz v1, :cond_33
and-int/lit8 v1, p1, 0x4
if-eqz v1, :cond_a4
move v1, v4
:goto_29
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Z)V
if-eqz v1, :cond_33
invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V
:cond_33
and-int/lit8 v1, v0, 0x1
if-eqz v1, :cond_49
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_a6
and-int/lit8 v1, p1, 0x1
if-eqz v1, :cond_a6
move v1, v4
:goto_40
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
if-eqz v1, :cond_a8
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/graphics/drawable/Drawable;
:goto_46
invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V
:cond_49
and-int/lit8 v1, v0, 0x8
if-eqz v1, :cond_54
and-int/lit8 v1, p1, 0x8
if-eqz v1, :cond_ab
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->n()V
:goto_54
:cond_54
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
if-eqz v1, :cond_76
and-int/lit8 v1, v0, 0x6
if-eqz v1, :cond_76
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v1, v1, 0x4
if-eqz v1, :cond_b1
move v1, v4
:goto_63
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->y:Landroid/view/View;
if-nez v5, :cond_6a
if-eqz v1, :cond_b3
move v3, v2
:goto_6a
:cond_6a
invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
if-nez v5, :cond_b5
if-eqz v1, :cond_b5
:goto_73
invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V
:cond_76
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_87
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
if-eqz v0, :cond_87
and-int/lit8 v0, p1, 0x10
if-eqz v0, :cond_b7
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
:goto_87
:cond_87
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V
:goto_8a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->isEnabled()Z
move-result v0
if-nez v0, :cond_c1
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
:goto_98
return-void
:cond_99
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
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
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/graphics/drawable/Drawable;
goto :goto_46
:cond_ab
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
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
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->C:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
goto :goto_87
:cond_bd
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->invalidate()V
goto :goto_8a
:cond_c1
and-int/lit8 v0, p1, 0x4
if-eqz v0, :cond_d7
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Landroid/support/v7/a/l;->abc_action_bar_up_description:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_98
:cond_d7
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Landroid/support/v7/a/l;->abc_action_bar_home_description:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_98
.end method
.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->S:Landroid/widget/SpinnerAdapter;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ag;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ag;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ag;->a(Landroid/widget/SpinnerAdapter;)V
:cond_b
return-void
.end method
.method public setDropdownSelectedPosition(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ag;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ag;->a(I)V
return-void
.end method
.method public setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
.registers 5
const/4 v1, 0x1
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
:cond_a
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz p1, :cond_2f
move v0, v1
:goto_f
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->M:Z
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->M:Z
if-eqz v0, :cond_2e
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:I
const/4 v2, 0x2
if-ne v0, v2, :cond_2e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
const/4 v2, -0x2
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v2, -0x1
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V
:cond_2e
return-void
:cond_2f
const/4 v0, 0x0
goto :goto_f
.end method
.method public setHomeAsUpIndicator(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(I)V
return-void
.end method
.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setHomeButtonEnabled(Z)V
.registers 5
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V
if-nez p1, :cond_13
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
:goto_12
return-void
:cond_13
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_2b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Landroid/support/v7/a/l;->abc_action_bar_up_description:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_12
:cond_2b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Landroid/support/v7/a/l;->abc_action_bar_home_description:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_12
.end method
.method public setIcon(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
.registers 5
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_13
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/graphics/drawable/Drawable;
if-nez v0, :cond_13
:cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V
:cond_13
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->u:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->q:Landroid/graphics/drawable/Drawable;
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
.method public setLogo(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setLogo(Landroid/graphics/drawable/Drawable;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->r:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_f
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->t:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V
:cond_f
return-void
.end method
.method public setNavigationMode(I)V
.registers 6
const/4 v3, 0x0
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:I
if-eq p1, v0, :cond_10
packed-switch v0, :pswitch_data_86
:goto_8
:cond_8
packed-switch p1, :pswitch_data_8e
:goto_b
:cond_b
iput p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->m:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V
:cond_10
return-void
:pswitch_11
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/widget/LinearLayout;
if-eqz v0, :cond_8
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
goto :goto_8
:pswitch_1b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v0, :cond_8
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->M:Z
if-eqz v0, :cond_8
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
goto :goto_8
:pswitch_29
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ag;
if-nez v0, :cond_5a
new-instance v0, Landroid/support/v7/internal/widget/ag;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
sget v2, Landroid/support/v7/a/d;->actionDropDownStyle:I
invoke-direct {v0, v1, v3, v2}, Landroid/support/v7/internal/widget/ag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ag;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->s:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Landroid/support/v7/a/k;->abc_action_bar_view_list_nav_layout:I
invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/widget/LinearLayout;
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
const/4 v1, -0x2
const/4 v2, -0x1
invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/16 v1, 0x11
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/widget/LinearLayout;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ag;
invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_5a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ag;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->d()Landroid/widget/SpinnerAdapter;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->S:Landroid/widget/SpinnerAdapter;
if-eq v0, v1, :cond_6b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ag;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->S:Landroid/widget/SpinnerAdapter;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ag;->a(Landroid/widget/SpinnerAdapter;)V
:cond_6b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->z:Landroid/support/v7/internal/widget/ag;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->W:Landroid/support/v7/internal/widget/t;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ag;->a(Landroid/support/v7/internal/widget/t;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->A:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
goto :goto_b
:pswitch_78
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v0, :cond_b
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->M:Z
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->B:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
goto :goto_b
:pswitch_data_8e
.packed-switch 0x1
:pswitch_29
:pswitch_78
.end packed-switch
:pswitch_data_86
.packed-switch 0x1
:pswitch_11
:pswitch_1b
.end packed-switch
.end method
.method public setSplitActionBar(Z)V
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
sget v2, Landroid/support/v7/a/e;->abc_action_bar_expanded_action_views_exclusive:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V
:goto_54
:cond_54
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitActionBar(Z)V
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
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(IZ)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->b:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const v1, 0x7fffffff
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(I)V
goto :goto_54
.end method
.method public bridge synthetic setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
return-void
.end method
.method public bridge synthetic setSplitWhenNarrow(Z)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitWhenNarrow(Z)V
return-void
.end method
.method public setSubtitle(Ljava/lang/CharSequence;)V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Ljava/lang/CharSequence;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/widget/TextView;
if-eqz v0, :cond_38
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->x:Landroid/widget/TextView;
if-eqz p1, :cond_39
move v0, v1
:goto_13
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/View;
if-nez v0, :cond_3b
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->n:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_3b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_30
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->p:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_3b
:cond_30
const/4 v0, 0x1
:goto_31
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->v:Landroid/widget/LinearLayout;
if-eqz v0, :cond_3d
:goto_35
invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_38
return-void
:cond_39
move v0, v2
goto :goto_13
:cond_3b
move v0, v1
goto :goto_31
:cond_3d
move v1, v2
goto :goto_35
.end method
.method public setTitle(Ljava/lang/CharSequence;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->L:Z
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V
return-void
.end method
.method public bridge synthetic setVisibility(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setVisibility(I)V
return-void
.end method
.method public setWindowCallback(Landroid/view/Window$Callback;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->i:Landroid/view/Window$Callback;
return-void
.end method
.method public setWindowTitle(Ljava/lang/CharSequence;)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->L:Z
if-nez v0, :cond_7
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V
:cond_7
return-void
.end method
.method public shouldDelayChildPressedState()Z
.registers 2
const/4 v0, 0x0
return v0
.end method