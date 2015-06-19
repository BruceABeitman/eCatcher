.class public Landroid/support/v7/internal/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.implements Landroid/support/v7/internal/widget/e;
.field  a:Landroid/support/v4/view/ActionProvider;
.field private final b:Landroid/support/v7/internal/widget/l;
.field private final c:Landroid/support/v7/internal/widget/m;
.field private final d:Landroid/widget/LinearLayout;
.field private final e:Landroid/graphics/drawable/Drawable;
.field private final f:Landroid/widget/FrameLayout;
.field private final g:Landroid/widget/ImageView;
.field private final h:Landroid/widget/FrameLayout;
.field private final i:Landroid/widget/ImageView;
.field private final j:I
.field private final k:Landroid/database/DataSetObserver;
.field private final l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field private m:Landroid/support/v7/internal/widget/ListPopupWindow;
.field private n:Landroid/widget/PopupWindow$OnDismissListener;
.field private o:Z
.field private p:I
.field private q:Z
.field private r:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 9
const/4 v4, 0x0
const/4 v2, 0x4
const/4 v3, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/support/v7/internal/widget/ActivityChooserView$1;
invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ActivityChooserView$1;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->k:Landroid/database/DataSetObserver;
new-instance v0, Landroid/support/v7/internal/widget/ActivityChooserView$2;
invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ActivityChooserView$2;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
iput v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->p:I
sget-object v0, Landroid/support/v7/a/n;->ActivityChooserView:[I
invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->p:I
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v2, Landroid/support/v7/a/k;->abc_activity_chooser_view:I
invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
new-instance v0, Landroid/support/v7/internal/widget/m;
invoke-direct {v0, p0, v4}, Landroid/support/v7/internal/widget/m;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;Landroid/support/v7/internal/widget/ActivityChooserView$1;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Landroid/support/v7/internal/widget/m;
sget v0, Landroid/support/v7/a/i;->activity_chooser_view_content:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/widget/LinearLayout;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/graphics/drawable/Drawable;
sget v0, Landroid/support/v7/a/i;->default_activity_button:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Landroid/support/v7/internal/widget/m;
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Landroid/support/v7/internal/widget/m;
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;
sget v2, Landroid/support/v7/a/i;->image:I
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->i:Landroid/widget/ImageView;
sget v0, Landroid/support/v7/a/i;->expand_activities_button:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Landroid/support/v7/internal/widget/m;
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;
sget v2, Landroid/support/v7/a/i;->image:I
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Landroid/widget/ImageView;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v0, Landroid/support/v7/internal/widget/l;
invoke-direct {v0, p0, v4}, Landroid/support/v7/internal/widget/l;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;Landroid/support/v7/internal/widget/ActivityChooserView$1;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
new-instance v1, Landroid/support/v7/internal/widget/ActivityChooserView$3;
invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ActivityChooserView$3;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/l;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
div-int/lit8 v1, v1, 0x2
sget v2, Landroid/support/v7/a/g;->abc_config_prefDialogWidth:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->j:I
return-void
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/l;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
return-object v0
.end method
.method private a(I)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->f()Landroid/support/v7/internal/widget/d;
move-result-object v0
if-nez v0, :cond_12
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No data model. Did you call #setDataModel?"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
move-result v0
if-nez v0, :cond_83
move v0, v1
:goto_24
iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v3}, Landroid/support/v7/internal/widget/l;->c()I
move-result v4
if-eqz v0, :cond_85
move v3, v1
:goto_2d
const v5, 0x7fffffff
if-eq p1, v5, :cond_87
add-int/2addr v3, p1
if-le v4, v3, :cond_87
iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/l;->a(Z)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
add-int/lit8 v4, p1, -0x1
invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/l;->a(I)V
:goto_41
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/internal/widget/ListPopupWindow;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z
move-result v4
if-nez v4, :cond_82
iget-boolean v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->o:Z
if-nez v4, :cond_51
if-nez v0, :cond_92
:cond_51
iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v2, v1, v0}, Landroid/support/v7/internal/widget/l;->a(ZZ)V
:goto_56
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->a()I
move-result v0
iget v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->j:I
invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->g(I)V
invoke-virtual {v3}, Landroid/support/v7/internal/widget/ListPopupWindow;->m()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;
if-eqz v0, :cond_71
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V
:cond_71
invoke-virtual {v3}, Landroid/support/v7/internal/widget/ListPopupWindow;->w()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v1
sget v2, Landroid/support/v7/a/l;->abc_activitychooserview_choose_application:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V
:cond_82
return-void
:cond_83
move v0, v2
goto :goto_24
:cond_85
move v3, v2
goto :goto_2d
:cond_87
iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/l;->a(Z)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v3, p1}, Landroid/support/v7/internal/widget/l;->a(I)V
goto :goto_41
:cond_92
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0, v2, v2}, Landroid/support/v7/internal/widget/l;->a(ZZ)V
goto :goto_56
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(I)V
return-void
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->o:Z
return p1
.end method
.method static synthetic b(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/ListPopupWindow;
.registers 2
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/internal/widget/ListPopupWindow;
move-result-object v0
return-object v0
.end method
.method static synthetic c(Landroid/support/v7/internal/widget/ActivityChooserView;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->d()V
return-void
.end method
.method private d()V
.registers 7
const/4 v5, 0x0
const/4 v4, 0x1
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->getCount()I
move-result v0
if-lez v0, :cond_68
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;
invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V
:goto_f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->c()I
move-result v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/l;->d()I
move-result v1
if-eq v0, v4, :cond_21
if-le v0, v4, :cond_6e
if-lez v1, :cond_6e
:cond_21
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;
invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->b()Landroid/content/pm/ResolveInfo;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->i:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->r:I
if-eqz v2, :cond_58
invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v1
iget v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->r:I
new-array v3, v4, [Ljava/lang/Object;
aput-object v0, v3, v5
invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;
invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V
:cond_58
:goto_58
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
move-result v0
if-nez v0, :cond_76
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/widget/LinearLayout;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_67
return-void
:cond_68
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;
invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setEnabled(Z)V
goto :goto_f
:cond_6e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
goto :goto_58
:cond_76
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/widget/LinearLayout;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_67
.end method
.method static synthetic d(Landroid/support/v7/internal/widget/ActivityChooserView;)Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->o:Z
return v0
.end method
.method static synthetic e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;
return-object v0
.end method
.method static synthetic f(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;
return-object v0
.end method
.method static synthetic g(Landroid/support/v7/internal/widget/ActivityChooserView;)I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->p:I
return v0
.end method
.method private getListPopupWindow()Landroid/support/v7/internal/widget/ListPopupWindow;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/internal/widget/ListPopupWindow;
if-nez v0, :cond_2f
new-instance v0, Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/internal/widget/ListPopupWindow;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Landroid/support/v7/internal/widget/m;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Landroid/support/v7/internal/widget/m;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/PopupWindow$OnDismissListener;)V
:cond_2f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->m:Landroid/support/v7/internal/widget/ListPopupWindow;
return-object v0
.end method
.method static synthetic h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->n:Landroid/widget/PopupWindow$OnDismissListener;
return-object v0
.end method
.method static synthetic i(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->k:Landroid/database/DataSetObserver;
return-object v0
.end method
.method public a()Z
.registers 3
const/4 v0, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->c()Z
move-result v1
if-nez v1, :cond_b
iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->q:Z
if-nez v1, :cond_c
:goto_b
:cond_b
return v0
:cond_c
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->o:Z
iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->p:I
invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(I)V
const/4 v0, 0x1
goto :goto_b
.end method
.method public b()Z
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->c()Z
move-result v0
if-eqz v0, :cond_1c
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/internal/widget/ListPopupWindow;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->n()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z
move-result v1
if-eqz v1, :cond_1c
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
:cond_1c
const/4 v0, 0x1
return v0
.end method
.method public c()Z
.registers 2
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/internal/widget/ListPopupWindow;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z
move-result v0
return v0
.end method
.method public getDataModel()Landroid/support/v7/internal/widget/d;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->f()Landroid/support/v7/internal/widget/d;
move-result-object v0
return-object v0
.end method
.method protected onAttachedToWindow()V
.registers 3
invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->f()Landroid/support/v7/internal/widget/d;
move-result-object v0
if-eqz v0, :cond_10
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->k:Landroid/database/DataSetObserver;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/d;->registerObserver(Ljava/lang/Object;)V
:cond_10
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->q:Z
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 3
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->f()Landroid/support/v7/internal/widget/d;
move-result-object v0
if-eqz v0, :cond_10
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->k:Landroid/database/DataSetObserver;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/d;->unregisterObserver(Ljava/lang/Object;)V
:cond_10
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z
move-result v1
if-eqz v1, :cond_1f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
:cond_1f
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->c()Z
move-result v0
if-eqz v0, :cond_28
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Z
:cond_28
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->q:Z
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 10
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/widget/LinearLayout;
sub-int v1, p4, p2
sub-int v2, p5, p3
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->c()Z
move-result v0
if-nez v0, :cond_13
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Z
:cond_13
return-void
.end method
.method protected onMeasure(II)V
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/widget/LinearLayout;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;
invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I
move-result v1
if-eqz v1, :cond_14
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
const/high16 v2, 0x4000
invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result p2
:cond_14
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/internal/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
invoke-virtual {p0, v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setMeasuredDimension(II)V
return-void
.end method
.method public setActivityChooserModel(Landroid/support/v7/internal/widget/d;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/l;->a(Landroid/support/v7/internal/widget/d;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->c()Z
move-result v0
if-eqz v0, :cond_11
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a()Z
:cond_11
return-void
.end method
.method public setDefaultActionButtonContentDescription(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->r:I
return-void
.end method
.method public setExpandActivityOverflowButtonContentDescription(I)V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setInitialActivityCount(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->p:I
return-void
.end method
.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->n:Landroid/widget/PopupWindow$OnDismissListener;
return-void
.end method
.method public setProvider(Landroid/support/v4/view/ActionProvider;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;
return-void
.end method