.class  Landroid/support/v7/app/j;
.super Landroid/support/v7/app/f;
.source "SourceFile"
.implements Landroid/support/v7/internal/view/menu/ac;
.implements Landroid/support/v7/internal/view/menu/o;
.field private static final f:Ljava/lang/String; = "ActionBarActivityDelegateBase"
.field private static final g:[I
.field private h:Landroid/support/v7/internal/widget/ActionBarView;
.field private i:Landroid/support/v7/internal/view/menu/l;
.field private j:Landroid/support/v7/internal/view/menu/n;
.field private k:Landroid/support/v7/b/a;
.field private l:Z
.field private m:Ljava/lang/CharSequence;
.field private n:Z
.field private o:Z
.field private p:Z
.field private q:Z
.field private r:Z
.field private s:Landroid/os/Bundle;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Landroid/support/v7/a/d;->homeAsUpIndicator:I
aput v2, v0, v1
sput-object v0, Landroid/support/v7/app/j;->g:[I
return-void
.end method
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/app/f;-><init>(Landroid/support/v7/app/ActionBarActivity;)V
return-void
.end method
.method static synthetic a(Landroid/support/v7/app/j;Landroid/support/v7/b/a;)Landroid/support/v7/b/a;
.registers 2
iput-object p1, p0, Landroid/support/v7/app/j;->k:Landroid/support/v7/b/a;
return-object p1
.end method
.method private a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/ac;)Landroid/support/v7/internal/view/menu/ad;
.registers 6
iget-object v0, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Landroid/support/v7/app/j;->i:Landroid/support/v7/internal/view/menu/l;
if-nez v0, :cond_3b
sget-object v0, Landroid/support/v7/a/n;->Theme:[I
invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x4
sget v2, Landroid/support/v7/a/m;->Theme_AppCompat_CompactMenu:I
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
new-instance v0, Landroid/support/v7/internal/view/menu/l;
sget v2, Landroid/support/v7/a/k;->abc_list_menu_item_layout:I
invoke-direct {v0, v2, v1}, Landroid/support/v7/internal/view/menu/l;-><init>(II)V
iput-object v0, p0, Landroid/support/v7/app/j;->i:Landroid/support/v7/internal/view/menu/l;
iget-object v0, p0, Landroid/support/v7/app/j;->i:Landroid/support/v7/internal/view/menu/l;
invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/support/v7/internal/view/menu/ac;)V
iget-object v0, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
iget-object v1, p0, Landroid/support/v7/app/j;->i:Landroid/support/v7/internal/view/menu/l;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/ab;)V
:goto_2f
iget-object v0, p0, Landroid/support/v7/app/j;->i:Landroid/support/v7/internal/view/menu/l;
new-instance v1, Landroid/widget/FrameLayout;
invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
move-result-object v0
goto :goto_5
:cond_3b
iget-object v0, p0, Landroid/support/v7/app/j;->i:Landroid/support/v7/internal/view/menu/l;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/l;->c(Z)V
goto :goto_2f
.end method
.method private a(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V
.registers 6
const/4 v2, 0x0
iget-boolean v0, p0, Landroid/support/v7/app/j;->o:Z
if-eqz v0, :cond_f
invoke-virtual {p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v0
const/4 v1, 0x4
if-ne v0, v1, :cond_f
invoke-virtual {p2, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_f
iget-boolean v0, p0, Landroid/support/v7/app/j;->n:Z
if-eqz v0, :cond_1e
invoke-virtual {p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getProgress()I
move-result v0
const/16 v1, 0x2710
if-ge v0, v1, :cond_1e
invoke-virtual {p1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_1e
return-void
.end method
.method private b(Landroid/support/v7/internal/view/menu/n;Z)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->e()Z
move-result v0
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->d()Z
move-result v0
if-eqz v0, :cond_16
if-nez p2, :cond_24
:cond_16
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getVisibility()I
move-result v0
if-nez v0, :cond_23
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->a()Z
:cond_23
:goto_23
return-void
:cond_24
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->c()Z
goto :goto_23
:cond_2a
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->close()V
goto :goto_23
.end method
.method private b(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V
.registers 5
const/4 v1, 0x4
iget-boolean v0, p0, Landroid/support/v7/app/j;->o:Z
if-eqz v0, :cond_e
invoke-virtual {p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v0
if-nez v0, :cond_e
invoke-virtual {p2, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_e
iget-boolean v0, p0, Landroid/support/v7/app/j;->n:Z
if-eqz v0, :cond_1b
invoke-virtual {p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v0
if-nez v0, :cond_1b
invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_1b
return-void
.end method
.method private e(I)V
.registers 8
const/16 v4, 0x8
const/16 v5, 0x2710
const/4 v1, 0x0
invoke-direct {p0}, Landroid/support/v7/app/j;->o()Landroid/support/v7/internal/widget/ProgressBarICS;
move-result-object v2
invoke-direct {p0}, Landroid/support/v7/app/j;->p()Landroid/support/v7/internal/widget/ProgressBarICS;
move-result-object v3
const/4 v0, -0x1
if-ne p1, v0, :cond_2e
iget-boolean v0, p0, Landroid/support/v7/app/j;->n:Z
if-eqz v0, :cond_24
invoke-virtual {v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->getProgress()I
move-result v0
invoke-virtual {v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->a()Z
move-result v4
if-nez v4, :cond_20
if-ge v0, v5, :cond_2c
:cond_20
move v0, v1
:goto_21
invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_24
iget-boolean v0, p0, Landroid/support/v7/app/j;->o:Z
if-eqz v0, :cond_2b
invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:goto_2b
:cond_2b
return-void
:cond_2c
const/4 v0, 0x4
goto :goto_21
:cond_2e
const/4 v0, -0x2
if-ne p1, v0, :cond_40
iget-boolean v0, p0, Landroid/support/v7/app/j;->n:Z
if-eqz v0, :cond_38
invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_38
iget-boolean v0, p0, Landroid/support/v7/app/j;->o:Z
if-eqz v0, :cond_2b
invoke-virtual {v2, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
goto :goto_2b
:cond_40
const/4 v0, -0x3
if-ne p1, v0, :cond_48
const/4 v0, 0x1
invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminate(Z)V
goto :goto_2b
:cond_48
const/4 v0, -0x4
if-ne p1, v0, :cond_4f
invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminate(Z)V
goto :goto_2b
:cond_4f
if-ltz p1, :cond_2b
if-gt p1, v5, :cond_2b
add-int/lit8 v0, p1, 0x0
invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V
if-ge p1, v5, :cond_5e
invoke-direct {p0, v3, v2}, Landroid/support/v7/app/j;->a(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V
goto :goto_2b
:cond_5e
invoke-direct {p0, v3, v2}, Landroid/support/v7/app/j;->b(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V
goto :goto_2b
.end method
.method private n()V
.registers 12
const/4 v3, 0x3
const/4 v1, 0x0
const/4 v10, 0x6
const/4 v9, 0x5
const/4 v4, -0x1
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
sget-object v2, Landroid/support/v7/a/n;->ActionBarWindow:[I
invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v6
invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v0
if-eqz v0, :cond_ce
if-nez v1, :cond_cb
new-instance v0, Landroid/util/TypedValue;
invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
:goto_1a
invoke-virtual {v6, v3, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:goto_1d
invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_c8
if-nez v1, :cond_c5
new-instance v2, Landroid/util/TypedValue;
invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V
:goto_2a
invoke-virtual {v6, v9, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:goto_2d
invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_c2
if-nez v1, :cond_bf
new-instance v3, Landroid/util/TypedValue;
invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V
:goto_3a
invoke-virtual {v6, v10, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:goto_3d
const/4 v5, 0x4
invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v5
if-eqz v5, :cond_4f
if-nez v1, :cond_4b
new-instance v1, Landroid/util/TypedValue;
invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V
:cond_4b
const/4 v5, 0x4
invoke-virtual {v6, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:cond_4f
iget-object v5, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v7
iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I
iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I
if-ge v5, v8, :cond_94
const/4 v5, 0x1
:goto_60
if-eqz v5, :cond_96
:goto_62
if-eqz v2, :cond_bd
iget v0, v2, Landroid/util/TypedValue;->type:I
if-eqz v0, :cond_bd
iget v0, v2, Landroid/util/TypedValue;->type:I
if-ne v0, v9, :cond_98
invoke-virtual {v2, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F
move-result v0
float-to-int v0, v0
move v2, v0
:goto_72
if-eqz v5, :cond_a9
:goto_74
if-eqz v3, :cond_bb
iget v0, v3, Landroid/util/TypedValue;->type:I
if-eqz v0, :cond_bb
iget v0, v3, Landroid/util/TypedValue;->type:I
if-ne v0, v9, :cond_ab
invoke-virtual {v3, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F
move-result v0
float-to-int v0, v0
:goto_83
if-ne v2, v4, :cond_87
if-eq v0, v4, :cond_90
:cond_87
iget-object v1, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V
:cond_90
invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
return-void
:cond_94
const/4 v5, 0x0
goto :goto_60
:cond_96
move-object v2, v0
goto :goto_62
:cond_98
iget v0, v2, Landroid/util/TypedValue;->type:I
if-ne v0, v10, :cond_bd
iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v0, v0
iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v8, v8
invoke-virtual {v2, v0, v8}, Landroid/util/TypedValue;->getFraction(FF)F
move-result v0
float-to-int v0, v0
move v2, v0
goto :goto_72
:cond_a9
move-object v3, v1
goto :goto_74
:cond_ab
iget v0, v3, Landroid/util/TypedValue;->type:I
if-ne v0, v10, :cond_bb
iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I
int-to-float v0, v0
iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I
int-to-float v1, v1
invoke-virtual {v3, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F
move-result v0
float-to-int v0, v0
goto :goto_83
:cond_bb
move v0, v4
goto :goto_83
:cond_bd
move v2, v4
goto :goto_72
:cond_bf
move-object v3, v1
goto/16 :goto_3a
:cond_c2
move-object v3, v1
goto/16 :goto_3d
:cond_c5
move-object v2, v1
goto/16 :goto_2a
:cond_c8
move-object v2, v1
goto/16 :goto_2d
:cond_cb
move-object v0, v1
goto/16 :goto_1a
:cond_ce
move-object v0, v1
goto/16 :goto_1d
.end method
.method private o()Landroid/support/v7/internal/widget/ProgressBarICS;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
sget v1, Landroid/support/v7/a/i;->progress_circular:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v0, :cond_10
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_10
return-object v0
.end method
.method private p()Landroid/support/v7/internal/widget/ProgressBarICS;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
sget v1, Landroid/support/v7/a/i;->progress_horizontal:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v0, :cond_10
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_10
return-object v0
.end method
.method private q()Z
.registers 3
new-instance v0, Landroid/support/v7/internal/view/menu/n;
invoke-virtual {p0}, Landroid/support/v7/app/j;->l()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/n;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
iget-object v0, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/o;)V
const/4 v0, 0x1
return v0
.end method
.method private r()Z
.registers 6
const/4 v0, 0x1
const/4 v4, 0x0
const/4 v1, 0x0
iget-boolean v2, p0, Landroid/support/v7/app/j;->q:Z
if-eqz v2, :cond_8
:goto_7
return v0
:cond_8
iget-object v2, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
if-eqz v2, :cond_10
iget-boolean v2, p0, Landroid/support/v7/app/j;->r:Z
if-eqz v2, :cond_49
:cond_10
iget-object v2, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
if-nez v2, :cond_20
invoke-direct {p0}, Landroid/support/v7/app/j;->q()Z
move-result v2
if-eqz v2, :cond_1e
iget-object v2, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
if-nez v2, :cond_20
:cond_1e
move v0, v1
goto :goto_7
:cond_20
iget-object v2, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v2, :cond_2b
iget-object v2, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v3, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v2, v3, p0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v4/internal/view/SupportMenu;Landroid/support/v7/internal/view/menu/ac;)V
:cond_2b
iget-object v2, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/n;->h()V
iget-object v2, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
iget-object v3, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v2, v1, v3}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z
move-result v2
if-nez v2, :cond_47
iput-object v4, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v0, :cond_45
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, v4, p0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v4/internal/view/SupportMenu;Landroid/support/v7/internal/view/menu/ac;)V
:cond_45
move v0, v1
goto :goto_7
:cond_47
iput-boolean v1, p0, Landroid/support/v7/app/j;->r:Z
:cond_49
iget-object v2, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/n;->h()V
iget-object v2, p0, Landroid/support/v7/app/j;->s:Landroid/os/Bundle;
if-eqz v2, :cond_5b
iget-object v2, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
iget-object v3, p0, Landroid/support/v7/app/j;->s:Landroid/os/Bundle;
invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/n;->d(Landroid/os/Bundle;)V
iput-object v4, p0, Landroid/support/v7/app/j;->s:Landroid/os/Bundle;
:cond_5b
iget-object v2, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
iget-object v3, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v2, v1, v4, v3}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v2
if-nez v2, :cond_75
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v0, :cond_6e
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, v4, p0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v4/internal/view/SupportMenu;Landroid/support/v7/internal/view/menu/ac;)V
:cond_6e
iget-object v0, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->i()V
move v0, v1
goto :goto_7
:cond_75
iget-object v1, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/n;->i()V
iput-boolean v0, p0, Landroid/support/v7/app/j;->q:Z
goto :goto_7
.end method
.method public a()Landroid/support/v7/app/ActionBar;
.registers 4
invoke-virtual {p0}, Landroid/support/v7/app/j;->m()V
new-instance v0, Landroid/support/v7/app/q;
iget-object v1, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
iget-object v2, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-direct {v0, v1, v2}, Landroid/support/v7/app/q;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V
return-object v0
.end method
.method public a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "ActionMode callback can not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Landroid/support/v7/app/j;->k:Landroid/support/v7/b/a;
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/app/j;->k:Landroid/support/v7/b/a;
invoke-virtual {v0}, Landroid/support/v7/b/a;->c()V
:cond_13
new-instance v1, Landroid/support/v7/app/k;
invoke-direct {v1, p0, p1}, Landroid/support/v7/app/k;-><init>(Landroid/support/v7/app/j;Landroid/support/v7/b/b;)V
invoke-virtual {p0}, Landroid/support/v7/app/j;->b()Landroid/support/v7/app/ActionBar;
move-result-object v0
check-cast v0, Landroid/support/v7/app/q;
if-eqz v0, :cond_26
invoke-virtual {v0, v1}, Landroid/support/v7/app/q;->a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/j;->k:Landroid/support/v7/b/a;
:cond_26
iget-object v0, p0, Landroid/support/v7/app/j;->k:Landroid/support/v7/b/a;
if-eqz v0, :cond_31
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
iget-object v1, p0, Landroid/support/v7/app/j;->k:Landroid/support/v7/b/a;
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/support/v7/b/a;)V
:cond_31
iget-object v0, p0, Landroid/support/v7/app/j;->k:Landroid/support/v7/b/a;
return-object v0
.end method
.method public a(I)V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/app/j;->m()V
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
const v1, 0x1020002
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
iget-object v1, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v1
invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->c()V
return-void
.end method
.method public a(Landroid/content/res/Configuration;)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/app/j;->d:Z
if-eqz v0, :cond_11
iget-boolean v0, p0, Landroid/support/v7/app/j;->l:Z
if-eqz v0, :cond_11
invoke-virtual {p0}, Landroid/support/v7/app/j;->b()Landroid/support/v7/app/ActionBar;
move-result-object v0
check-cast v0, Landroid/support/v7/app/q;
invoke-virtual {v0, p1}, Landroid/support/v7/app/q;->a(Landroid/content/res/Configuration;)V
:cond_11
return-void
.end method
.method public a(Landroid/support/v7/internal/view/menu/n;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Landroid/support/v7/app/j;->b(Landroid/support/v7/internal/view/menu/n;Z)V
return-void
.end method
.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
.registers 4
iget-boolean v0, p0, Landroid/support/v7/app/j;->p:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/j;->p:Z
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->closeOptionsMenu()V
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->f()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/app/j;->p:Z
goto :goto_4
.end method
.method public a(Landroid/view/View;)V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/app/j;->m()V
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
const v1, 0x1020002
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->c()V
return-void
.end method
.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 5
invoke-virtual {p0}, Landroid/support/v7/app/j;->m()V
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
const v1, 0x1020002
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->c()V
return-void
.end method
.method public a(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V
:goto_9
return-void
:cond_a
iput-object p1, p0, Landroid/support/v7/app/j;->m:Ljava/lang/CharSequence;
goto :goto_9
.end method
.method  a(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, -0x1
:goto_3
invoke-direct {p0, v0}, Landroid/support/v7/app/j;->e(I)V
return-void
:cond_7
const/4 v0, -0x2
goto :goto_3
.end method
.method public a(ILandroid/view/Menu;)Z
.registers 4
if-eqz p1, :cond_9
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public a(ILandroid/view/MenuItem;)Z
.registers 4
if-nez p1, :cond_6
invoke-static {p2}, Landroid/support/v7/internal/view/menu/af;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
move-result-object p2
:cond_6
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public a(ILandroid/view/View;Landroid/view/Menu;)Z
.registers 5
if-eqz p1, :cond_9
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z
.registers 5
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1, p2}, Landroid/support/v7/app/ActionBarActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 5
invoke-virtual {p0}, Landroid/support/v7/app/j;->m()V
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
const v1, 0x1020002
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->c()V
return-void
.end method
.method  b(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, -0x1
:goto_3
invoke-direct {p0, v0}, Landroid/support/v7/app/j;->e(I)V
return-void
:cond_7
const/4 v0, -0x2
goto :goto_3
.end method
.method public b(I)Z
.registers 3
const/4 v0, 0x1
packed-switch p1, :pswitch_data_18
:pswitch_4
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->requestWindowFeature(I)Z
move-result v0
:goto_a
return v0
:pswitch_b
iput-boolean v0, p0, Landroid/support/v7/app/j;->d:Z
goto :goto_a
:pswitch_e
iput-boolean v0, p0, Landroid/support/v7/app/j;->e:Z
goto :goto_a
:pswitch_11
iput-boolean v0, p0, Landroid/support/v7/app/j;->n:Z
goto :goto_a
:pswitch_14
iput-boolean v0, p0, Landroid/support/v7/app/j;->o:Z
goto :goto_a
nop
:pswitch_data_18
.packed-switch 0x2
:pswitch_11
:pswitch_4
:pswitch_4
:pswitch_14
:pswitch_4
:pswitch_4
:pswitch_b
:pswitch_e
.end packed-switch
.end method
.method public b(Landroid/support/v7/internal/view/menu/n;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public c(I)Landroid/view/View;
.registers 4
const/4 v0, 0x0
if-nez p1, :cond_11
invoke-direct {p0}, Landroid/support/v7/app/j;->r()Z
move-result v1
if-eqz v1, :cond_11
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-direct {p0, v0, p0}, Landroid/support/v7/app/j;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/ac;)Landroid/support/v7/internal/view/menu/ad;
move-result-object v0
check-cast v0, Landroid/view/View;
:cond_11
return-object v0
.end method
.method  c(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, -0x3
:goto_3
invoke-direct {p0, v0}, Landroid/support/v7/app/j;->e(I)V
return-void
:cond_7
const/4 v0, -0x4
goto :goto_3
.end method
.method public d()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/j;->b()Landroid/support/v7/app/ActionBar;
move-result-object v0
check-cast v0, Landroid/support/v7/app/q;
if-eqz v0, :cond_c
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/app/q;->h(Z)V
:cond_c
return-void
.end method
.method  d(I)V
.registers 3
add-int/lit8 v0, p1, 0x0
invoke-direct {p0, v0}, Landroid/support/v7/app/j;->e(I)V
return-void
.end method
.method public e()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/j;->b()Landroid/support/v7/app/ActionBar;
move-result-object v0
check-cast v0, Landroid/support/v7/app/q;
if-eqz v0, :cond_c
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/app/q;->h(Z)V
:cond_c
return-void
.end method
.method public f()V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
if-eqz v0, :cond_20
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iget-object v1, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/n;->c(Landroid/os/Bundle;)V
invoke-virtual {v0}, Landroid/os/Bundle;->size()I
move-result v1
if-lez v1, :cond_16
iput-object v0, p0, Landroid/support/v7/app/j;->s:Landroid/os/Bundle;
:cond_16
iget-object v0, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->h()V
iget-object v0, p0, Landroid/support/v7/app/j;->j:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->clear()V
:cond_20
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/j;->r:Z
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v0, :cond_2d
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/app/j;->q:Z
invoke-direct {p0}, Landroid/support/v7/app/j;->r()Z
:cond_2d
return-void
.end method
.method public g()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Landroid/support/v7/app/j;->k:Landroid/support/v7/b/a;
if-eqz v1, :cond_b
iget-object v1, p0, Landroid/support/v7/app/j;->k:Landroid/support/v7/b/a;
invoke-virtual {v1}, Landroid/support/v7/b/a;->c()V
:goto_a
return v0
:cond_b
iget-object v1, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v1, :cond_1d
iget-object v1, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->k()Z
move-result v1
if-eqz v1, :cond_1d
iget-object v1, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->l()V
goto :goto_a
:cond_1d
const/4 v0, 0x0
goto :goto_a
.end method
.method  i()I
.registers 2
sget v0, Landroid/support/v7/a/d;->homeAsUpIndicator:I
return v0
.end method
.method public j()V
.registers 1
return-void
.end method
.method final m()V
.registers 7
const v5, 0x1020002
iget-boolean v0, p0, Landroid/support/v7/app/j;->l:Z
if-nez v0, :cond_bd
iget-boolean v0, p0, Landroid/support/v7/app/j;->d:Z
if-eqz v0, :cond_db
iget-boolean v0, p0, Landroid/support/v7/app/j;->e:Z
if-eqz v0, :cond_be
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
sget v1, Landroid/support/v7/a/k;->abc_action_bar_decor_overlay:I
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->b(I)V
:goto_16
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
sget v1, Landroid/support/v7/a/i;->action_bar:I
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;
iput-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v1, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V
iget-boolean v0, p0, Landroid/support/v7/app/j;->n:Z
if-eqz v0, :cond_32
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g()V
:cond_32
iget-boolean v0, p0, Landroid/support/v7/app/j;->o:Z
if-eqz v0, :cond_3b
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h()V
:cond_3b
const-string v0, "splitActionBarWhenNarrow"
invoke-virtual {p0}, Landroid/support/v7/app/j;->k()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_c7
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Landroid/support/v7/a/e;->abc_split_action_bar_is_narrow:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v0
move v2, v0
:goto_54
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
sget v1, Landroid/support/v7/a/i;->split_action_bar:I
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v0, :cond_82
iget-object v1, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
iget-object v1, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitActionBar(Z)V
iget-object v1, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V
iget-object v1, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
sget v4, Landroid/support/v7/a/i;->action_context_bar:I
invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/widget/ActionBarContextView;
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V
:cond_82
:goto_82
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
sget v1, Landroid/support/v7/a/i;->action_bar_activity_content:I
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V
iget-object v0, p0, Landroid/support/v7/app/j;->m:Ljava/lang/CharSequence;
if-eqz v0, :cond_a5
iget-object v0, p0, Landroid/support/v7/app/j;->h:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v1, p0, Landroid/support/v7/app/j;->m:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/app/j;->m:Ljava/lang/CharSequence;
:cond_a5
invoke-direct {p0}, Landroid/support/v7/app/j;->n()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/j;->l:Z
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
new-instance v1, Landroid/support/v7/app/j$1;
invoke-direct {v1, p0}, Landroid/support/v7/app/j$1;-><init>(Landroid/support/v7/app/j;)V
invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
:cond_bd
return-void
:cond_be
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
sget v1, Landroid/support/v7/a/k;->abc_action_bar_decor:I
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->b(I)V
goto/16 :goto_16
:cond_c7
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
sget-object v1, Landroid/support/v7/a/n;->ActionBarWindow:[I
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v1
const/4 v0, 0x2
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v0
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
move v2, v0
goto/16 :goto_54
:cond_db
iget-object v0, p0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
sget v1, Landroid/support/v7/a/k;->abc_simple_decor:I
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->b(I)V
goto :goto_82
.end method