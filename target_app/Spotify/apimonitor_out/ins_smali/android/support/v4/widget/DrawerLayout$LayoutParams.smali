.class public Landroid/support/v4/widget/DrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"
.field public a:I
.field  b:F
.field  c:Z
.field  d:Z
.method public constructor <init>()V
.registers 2
const/4 v0, -0x1
invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I
invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->e()[I
move-result-object v0
invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I
iget v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I
return-void
.end method
.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I
return-void
.end method
.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I
return-void
.end method