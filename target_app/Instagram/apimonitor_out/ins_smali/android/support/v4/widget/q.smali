.class public final Landroid/support/v4/widget/q;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SlidingPaneLayout.java"
.field private static final e:[I
.field public a:F
.field  b:Z
.field  c:Z
.field  d:Landroid/graphics/Paint;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const v2, 0x1010181
aput v2, v0, v1
sput-object v0, Landroid/support/v4/widget/q;->e:[I
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, -0x1
invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/widget/q;->a:F
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v2, p0, Landroid/support/v4/widget/q;->a:F
sget-object v0, Landroid/support/v4/widget/q;->e:[I
invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v1
iput v1, p0, Landroid/support/v4/widget/q;->a:F
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/widget/q;->a:F
return-void
.end method
.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/widget/q;->a:F
return-void
.end method