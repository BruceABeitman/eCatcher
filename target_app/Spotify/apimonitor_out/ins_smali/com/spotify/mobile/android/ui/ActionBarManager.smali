.class public final Lcom/spotify/mobile/android/ui/ActionBarManager;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/support/v7/app/ActionBarActivity;
.field private b:Landroid/support/v7/app/ActionBar;
.field private c:Landroid/view/View;
.field private d:Landroid/graphics/drawable/Drawable;
.field private final e:Landroid/graphics/drawable/Drawable;
.field private final f:Landroid/graphics/drawable/Drawable;
.field private g:Lcom/spotify/mobile/android/ui/a;
.field private h:Z
.field private i:Lcom/spotify/mobile/android/ui/ActionBarTitle;
.field private j:Lcom/spotify/mobile/android/ui/ActionBarTitle;
.field private k:F
.field private l:Lcom/spotify/mobile/android/ui/ActionBarManager$State;
.method public constructor <init>(Lcom/spotify/music/MainActivity;)V
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->b:Lcom/spotify/mobile/android/ui/ActionBarManager$State;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->l:Lcom/spotify/mobile/android/ui/ActionBarManager$State;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->a:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {p1}, Lcom/spotify/music/MainActivity;->f()Landroid/support/v7/app/ActionBar;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->b:Landroid/support/v7/app/ActionBar;
new-instance v0, Lcom/spotify/mobile/android/ui/a;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/a;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->g:Lcom/spotify/mobile/android/ui/a;
const v0, 0x7f0a02fd
invoke-virtual {p1, v0}, Lcom/spotify/music/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->c:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->a:Landroid/support/v7/app/ActionBarActivity;
new-array v1, v5, [I
const v2, 0x10102ce
aput v2, v1, v4
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->a:Landroid/support/v7/app/ActionBarActivity;
new-array v2, v5, [I
const v3, 0x7f010054
aput v3, v2, v4
invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->c:Landroid/view/View;
if-eqz v0, :cond_a1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->b:Landroid/support/v7/app/ActionBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->c:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->d:Landroid/graphics/drawable/Drawable;
invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
:goto_5c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->d:Landroid/graphics/drawable/Drawable;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->c:Landroid/view/View;
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->c:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
invoke-static {p1}, Lcom/spotify/mobile/android/ui/ActionBarManager;->b(Landroid/content/Context;)I
move-result v1
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_71
const v0, 0x7f0a021b
invoke-virtual {p1, v0}, Lcom/spotify/music/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/MainLayout;
new-instance v1, Lcom/spotify/mobile/android/ui/ActionBarManager$1;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/ui/ActionBarManager$1;-><init>(Lcom/spotify/mobile/android/ui/ActionBarManager;Lcom/spotify/music/MainActivity;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/MainLayout;->a(Lcom/spotify/mobile/android/ui/view/m;)V
const v0, 0x7f0201b8
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->e:Landroid/graphics/drawable/Drawable;
const v0, 0x7f0201b9
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->f:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->b:Landroid/support/v7/app/ActionBar;
invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->b:Landroid/support/v7/app/ActionBar;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V
return-void
:cond_a1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->b:Landroid/support/v7/app/ActionBar;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V
goto :goto_5c
.end method
.method private a(I)Landroid/graphics/drawable/Drawable;
.registers 8
const/high16 v4, 0x4080
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->a:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-static {v4, v0}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v2
invoke-static {v4, v0}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v4
new-instance v0, Landroid/graphics/drawable/LayerDrawable;
const/4 v5, 0x1
new-array v5, v5, [Landroid/graphics/drawable/Drawable;
aput-object v3, v5, v1
invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
move v3, v1
move v5, v1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/ActionBarManager;)Landroid/support/v7/app/ActionBarActivity;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->a:Landroid/support/v7/app/ActionBarActivity;
return-object v0
.end method
.method public static a(Landroid/content/Context;)V
.registers 3
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->d:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
instance-of v0, p0, Landroid/app/Activity;
if-eqz v0, :cond_4
check-cast p0, Landroid/app/Activity;
invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
const/high16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
goto :goto_4
.end method
.method public static b(Landroid/content/Context;)I
.registers 7
const/4 v3, 0x1
const/4 v1, 0x0
new-instance v0, Landroid/util/TypedValue;
invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v2
const v4, 0x7f010002
invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
move-result v2
if-nez v2, :cond_15
:goto_14
return v1
:cond_15
iget v0, v0, Landroid/util/TypedValue;->data:I
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
move-result v2
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->d:Z
if-nez v0, :cond_54
instance-of v0, p0, Landroid/app/Activity;
if-eqz v0, :cond_54
move-object v0, p0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
move-result-object v0
iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
const/high16 v4, 0x400
and-int/2addr v0, v4
if-eqz v0, :cond_54
move v0, v3
:goto_3e
if-eqz v0, :cond_5f
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string v3, "status_bar_height"
const-string v4, "dimen"
const-string v5, "android"
invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_56
move v0, v1
:goto_51
add-int/2addr v0, v2
:goto_52
move v1, v0
goto :goto_14
:cond_54
move v0, v1
goto :goto_3e
:cond_56
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
goto :goto_51
:cond_5f
move v0, v2
goto :goto_52
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/ActionBarManager;)Lcom/spotify/mobile/android/ui/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->g:Lcom/spotify/mobile/android/ui/a;
return-object v0
.end method
.method private b()V
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->k:F
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(F)V
return-void
.end method
.method public final a(F)V
.registers 8
const/4 v0, 0x0
const/high16 v1, 0x3f80
const v5, 0x3d4ccccd
const/high16 v4, 0x3f00
iput p1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->k:F
iget-object v2, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->l:Lcom/spotify/mobile/android/ui/ActionBarManager$State;
sget-object v3, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->b:Lcom/spotify/mobile/android/ui/ActionBarManager$State;
if-eq v2, v3, :cond_1e
sget-object v2, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->b:Lcom/spotify/mobile/android/ui/ActionBarManager$State;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->a(Lcom/spotify/mobile/android/ui/ActionBarManager$State;)I
move-result v2
int-to-float v2, v2
mul-float/2addr v2, p1
float-to-int v2, v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_1e
cmpg-float v2, p1, v5
if-gez v2, :cond_3a
iget-object v2, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->i:Lcom/spotify/mobile/android/ui/ActionBarTitle;
:goto_24
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->h:Z
if-eq v3, v0, :cond_2f
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->h:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->a:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->x_()V
:cond_2f
if-eqz v2, :cond_34
invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/ui/ActionBarTitle;->b(F)V
:cond_34
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->b:Landroid/support/v7/app/ActionBar;
invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V
return-void
:cond_3a
cmpg-float v2, p1, v4
if-gez v2, :cond_48
iget-object v2, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->i:Lcom/spotify/mobile/android/ui/ActionBarTitle;
sub-float v3, p1, v5
const v4, 0x3ee66666
div-float/2addr v3, v4
sub-float/2addr v1, v3
goto :goto_24
:cond_48
iget-object v2, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->j:Lcom/spotify/mobile/android/ui/ActionBarTitle;
sub-float v0, p1, v4
div-float v1, v0, v4
const/4 v0, 0x1
goto :goto_24
.end method
.method public final a(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->i:Lcom/spotify/mobile/android/ui/ActionBarTitle;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->b()V
return-void
.end method
.method public final a(Z)V
.registers 4
iget-object v1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->b:Landroid/support/v7/app/ActionBar;
if-eqz p1, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->f:Landroid/graphics/drawable/Drawable;
:goto_6
invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V
if-eqz p1, :cond_25
sget-object v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->a:Lcom/spotify/mobile/android/ui/ActionBarManager$State;
:goto_d
iput-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->l:Lcom/spotify/mobile/android/ui/ActionBarManager$State;
sget-object v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->b:Lcom/spotify/mobile/android/ui/ActionBarManager$State;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->a(Lcom/spotify/mobile/android/ui/ActionBarManager$State;)I
move-result v0
if-eqz p1, :cond_1c
int-to-float v0, v0
iget v1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->k:F
mul-float/2addr v0, v1
float-to-int v0, v0
:cond_1c
iget-object v1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
return-void
:cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->e:Landroid/graphics/drawable/Drawable;
goto :goto_6
:cond_25
sget-object v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->b:Lcom/spotify/mobile/android/ui/ActionBarManager$State;
goto :goto_d
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->h:Z
return v0
.end method
.method public final b(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager;->j:Lcom/spotify/mobile/android/ui/ActionBarTitle;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->b()V
return-void
.end method