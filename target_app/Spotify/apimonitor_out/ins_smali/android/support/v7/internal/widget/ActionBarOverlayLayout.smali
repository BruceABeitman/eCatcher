.class public Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"
.field static final a:[I
.field private b:I
.field private c:Landroid/support/v7/app/ActionBar;
.field private final d:Landroid/graphics/Rect;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Landroid/support/v7/a/c;->a:I
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
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d:Landroid/graphics/Rect;
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d:Landroid/graphics/Rect;
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a()V
return-void
.end method
.method private a()V
.registers 4
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
.method public final a(Landroid/support/v7/app/ActionBar;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->c:Landroid/support/v7/app/ActionBar;
return-void
.end method