.class public Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"
.field static final a:[I
.field private b:I
.field private c:Landroid/support/v7/app/ActionBar;
.field private d:Landroid/view/View;
.field private e:Landroid/view/View;
.field private f:Landroid/support/v7/internal/widget/ActionBarContainer;
.field private g:Landroid/support/v7/internal/widget/ActionBarView;
.field private h:Landroid/view/View;
.field private final i:Landroid/graphics/Rect;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Landroid/support/v7/a/d;->actionBarSize:I
aput v2, v0, v1
sput-object v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a:[I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->i:Landroid/graphics/Rect;
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->i:Landroid/graphics/Rect;
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/content/Context;)V
return-void
.end method
.method private a(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v0
sget-object v1, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a:[I
invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method private a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
.registers 12
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
if-eqz p3, :cond_15
iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
iget v4, p2, Landroid/graphics/Rect;->left:I
if-eq v3, v4, :cond_15
iget v2, p2, Landroid/graphics/Rect;->left:I
iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
move v2, v1
:cond_15
if-eqz p4, :cond_22
iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
iget v4, p2, Landroid/graphics/Rect;->top:I
if-eq v3, v4, :cond_22
iget v2, p2, Landroid/graphics/Rect;->top:I
iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
move v2, v1
:cond_22
if-eqz p6, :cond_2f
iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I
iget v4, p2, Landroid/graphics/Rect;->right:I
if-eq v3, v4, :cond_2f
iget v2, p2, Landroid/graphics/Rect;->right:I
iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I
move v2, v1
:cond_2f
if-eqz p5, :cond_3d
iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
iget v4, p2, Landroid/graphics/Rect;->bottom:I
if-eq v3, v4, :cond_3d
iget v2, p2, Landroid/graphics/Rect;->bottom:I
iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
move v0, v1
:goto_3c
return v0
:cond_3d
move v0, v2
goto :goto_3c
.end method
.method  a()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;
if-nez v0, :cond_3d
sget v0, Landroid/support/v7/a/i;->action_bar_activity_content:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;
if-nez v0, :cond_19
const v0, 0x1020002
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;
:cond_19
sget v0, Landroid/support/v7/a/i;->top_action_bar:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->e:Landroid/view/View;
sget v0, Landroid/support/v7/a/i;->action_bar_container:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/internal/widget/ActionBarContainer;
sget v0, Landroid/support/v7/a/i;->action_bar:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/internal/widget/ActionBarView;
sget v0, Landroid/support/v7/a/i;->split_action_bar:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->h:Landroid/view/View;
:cond_3d
return-void
.end method
.method public setActionBar(Landroid/support/v7/app/ActionBar;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->c:Landroid/support/v7/app/ActionBar;
return-void
.end method