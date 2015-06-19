.class  Landroid/support/v7/internal/widget/ag;
.super Landroid/support/v7/internal/widget/AbsSpinnerICS;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field static final M:I = 0x0
.field static final N:I = 0x1
.field private static final P:Ljava/lang/String; = "Spinner"
.field private static final Q:I = 0xf
.field private static final R:I = -0x1
.field  O:I
.field private S:Landroid/support/v7/internal/widget/ak;
.field private T:Landroid/support/v7/internal/widget/ai;
.field private U:I
.field private V:Landroid/graphics/Rect;
.method constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;I)V
.registers 5
const/4 v0, 0x0
sget v1, Landroid/support/v7/a/d;->spinnerStyle:I
invoke-direct {p0, p1, v0, v1, p2}, Landroid/support/v7/internal/widget/ag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Landroid/support/v7/a/d;->spinnerStyle:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
const/4 v0, -0x1
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/widget/ag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.registers 11
const/4 v5, 0x0
const/4 v4, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AbsSpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/ag;->V:Landroid/graphics/Rect;
sget-object v0, Landroid/support/v7/a/n;->Spinner:[I
invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, -0x1
if-ne p4, v1, :cond_1a
const/4 v1, 0x7
invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I
move-result p4
:cond_1a
packed-switch p4, :pswitch_data_74
:goto_1d
const/16 v1, 0x11
invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ag;->U:I
iget-object v1, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
const/4 v2, 0x6
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/ak;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->T:Landroid/support/v7/internal/widget/ai;
if-eqz v0, :cond_3f
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
iget-object v1, p0, Landroid/support/v7/internal/widget/ag;->T:Landroid/support/v7/internal/widget/ai;
invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ak;->a(Landroid/widget/ListAdapter;)V
iput-object v5, p0, Landroid/support/v7/internal/widget/ag;->T:Landroid/support/v7/internal/widget/ai;
:cond_3f
return-void
:pswitch_40
new-instance v1, Landroid/support/v7/internal/widget/ah;
invoke-direct {v1, p0, v5}, Landroid/support/v7/internal/widget/ah;-><init>(Landroid/support/v7/internal/widget/ag;Landroid/support/v7/internal/widget/ag$1;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
goto :goto_1d
:pswitch_48
new-instance v1, Landroid/support/v7/internal/widget/aj;
invoke-direct {v1, p0, p1, p2, p3}, Landroid/support/v7/internal/widget/aj;-><init>(Landroid/support/v7/internal/widget/ag;Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v2, 0x3
const/4 v3, -0x2
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
move-result v2
iput v2, p0, Landroid/support/v7/internal/widget/ag;->O:I
const/4 v2, 0x2
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/aj;->b(Landroid/graphics/drawable/Drawable;)V
const/4 v2, 0x5
invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v2
if-eqz v2, :cond_67
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/aj;->e(I)V
:cond_67
const/4 v2, 0x4
invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v2
if-eqz v2, :cond_71
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/aj;->d(I)V
:cond_71
iput-object v1, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
goto :goto_1d
:pswitch_data_74
.packed-switch 0x0
:pswitch_40
:pswitch_48
.end packed-switch
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/ag;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->V:Landroid/graphics/Rect;
return-object v0
.end method
.method private e(Landroid/view/View;)V
.registers 8
const/4 v5, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
if-nez v0, :cond_b
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
:cond_b
invoke-virtual {p0, p1, v5, v0}, Landroid/support/v7/internal/widget/ag;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->hasFocus()Z
move-result v1
invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V
iget v1, p0, Landroid/support/v7/internal/widget/ag;->b:I
iget-object v2, p0, Landroid/support/v7/internal/widget/ag;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
iget-object v3, p0, Landroid/support/v7/internal/widget/ag;->i:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->bottom:I
add-int/2addr v2, v3
iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v1
iget v2, p0, Landroid/support/v7/internal/widget/ag;->c:I
iget-object v3, p0, Landroid/support/v7/internal/widget/ag;->i:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
iget-object v4, p0, Landroid/support/v7/internal/widget/ag;->i:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
add-int/2addr v3, v4
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v0
invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->i:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->getMeasuredHeight()I
move-result v1
iget-object v2, p0, Landroid/support/v7/internal/widget/ag;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
sub-int/2addr v1, v2
iget-object v2, p0, Landroid/support/v7/internal/widget/ag;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
sub-int/2addr v1, v2
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v2
sub-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
add-int/2addr v0, v1
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
add-int/2addr v1, v0
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v2
add-int/2addr v2, v5
invoke-virtual {p1, v5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V
return-void
.end method
.method private h(I)Landroid/view/View;
.registers 4
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ag;->A:Z
if-nez v0, :cond_10
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->j:Landroid/support/v7/internal/widget/b;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/b;->a(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_10
invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ag;->e(Landroid/view/View;)V
:goto_f
return-object v0
:cond_10
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->a:Landroid/widget/SpinnerAdapter;
const/4 v1, 0x0
invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ag;->e(Landroid/view/View;)V
goto :goto_f
.end method
.method  a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
.registers 13
const/4 v2, 0x0
const/4 v9, -0x2
const/4 v0, 0x0
if-nez p1, :cond_6
:goto_5
return v0
:cond_6
invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v6
invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->j()I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v3
add-int/lit8 v4, v1, 0xf
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v8
sub-int v3, v8, v1
rsub-int/lit8 v3, v3, 0xf
sub-int/2addr v1, v3
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v1
move v5, v1
move-object v3, v2
move v4, v0
move v1, v0
:goto_2d
if-ge v5, v8, :cond_58
invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I
move-result v0
if-eq v0, v1, :cond_6c
move-object v1, v2
:goto_36
invoke-interface {p1, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-nez v1, :cond_48
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_48
invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I
move-result v4
add-int/lit8 v1, v5, 0x1
move v5, v1
move v1, v0
goto :goto_2d
:cond_58
if-eqz p2, :cond_6a
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->V:Landroid/graphics/Rect;
invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->V:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Landroid/support/v7/internal/widget/ag;->V:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
add-int/2addr v0, v1
add-int/2addr v0, v4
goto :goto_5
:cond_6a
move v0, v4
goto :goto_5
:cond_6c
move v0, v1
move-object v1, v3
goto :goto_36
.end method
.method public a(Landroid/support/v7/internal/widget/q;)V
.registers 4
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "setOnItemClickListener cannot be used with a spinner."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public bridge synthetic a(Landroid/widget/Adapter;)V
.registers 2
check-cast p1, Landroid/widget/SpinnerAdapter;
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ag;->a(Landroid/widget/SpinnerAdapter;)V
return-void
.end method
.method public a(Landroid/widget/SpinnerAdapter;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/widget/SpinnerAdapter;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
new-instance v1, Landroid/support/v7/internal/widget/ai;
invoke-direct {v1, p1}, Landroid/support/v7/internal/widget/ai;-><init>(Landroid/widget/SpinnerAdapter;)V
invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ak;->a(Landroid/widget/ListAdapter;)V
:goto_11
return-void
:cond_12
new-instance v0, Landroid/support/v7/internal/widget/ai;
invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/ai;-><init>(Landroid/widget/SpinnerAdapter;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ag;->T:Landroid/support/v7/internal/widget/ai;
goto :goto_11
.end method
.method public a(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ak;->a(Ljava/lang/CharSequence;)V
return-void
.end method
.method  b(Landroid/support/v7/internal/widget/q;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/support/v7/internal/widget/q;)V
return-void
.end method
.method  c(IZ)V
.registers 9
const/4 v5, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->i:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->getRight()I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->getLeft()I
move-result v2
sub-int/2addr v1, v2
iget-object v2, p0, Landroid/support/v7/internal/widget/ag;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v2
iget-object v2, p0, Landroid/support/v7/internal/widget/ag;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
sub-int/2addr v1, v2
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ag;->A:Z
if-eqz v2, :cond_1f
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->s()V
:cond_1f
iget v2, p0, Landroid/support/v7/internal/widget/ag;->F:I
if-nez v2, :cond_27
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->a()V
:goto_26
return-void
:cond_27
iget v2, p0, Landroid/support/v7/internal/widget/ag;->B:I
if-ltz v2, :cond_30
iget v2, p0, Landroid/support/v7/internal/widget/ag;->B:I
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ag;->d(I)V
:cond_30
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->b()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->removeAllViewsInLayout()V
iget v2, p0, Landroid/support/v7/internal/widget/ag;->D:I
iput v2, p0, Landroid/support/v7/internal/widget/ag;->m:I
iget v2, p0, Landroid/support/v7/internal/widget/ag;->D:I
invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/ag;->h(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
iget v4, p0, Landroid/support/v7/internal/widget/ag;->U:I
and-int/lit8 v4, v4, 0x7
sparse-switch v4, :sswitch_data_6e
:goto_4b
invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->j:Landroid/support/v7/internal/widget/b;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/b;->a()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->invalidate()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->t()V
iput-boolean v5, p0, Landroid/support/v7/internal/widget/ag;->A:Z
iput-boolean v5, p0, Landroid/support/v7/internal/widget/ag;->r:Z
iget v0, p0, Landroid/support/v7/internal/widget/ag;->D:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ag;->e(I)V
goto :goto_26
:sswitch_63
div-int/lit8 v1, v1, 0x2
add-int/2addr v0, v1
div-int/lit8 v1, v3, 0x2
sub-int/2addr v0, v1
goto :goto_4b
:sswitch_6a
add-int/2addr v0, v1
sub-int/2addr v0, v3
goto :goto_4b
nop
:sswitch_data_6e
.sparse-switch
0x1 -> :sswitch_63
0x5 -> :sswitch_6a
.end sparse-switch
.end method
.method public f(I)V
.registers 3
iget v0, p0, Landroid/support/v7/internal/widget/ag;->U:I
if-eq v0, p1, :cond_f
and-int/lit8 v0, p1, 0x7
if-nez v0, :cond_a
or-int/lit8 p1, p1, 0x3
:cond_a
iput p1, p0, Landroid/support/v7/internal/widget/ag;->U:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->requestLayout()V
:cond_f
return-void
.end method
.method public g(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ag;->a(Ljava/lang/CharSequence;)V
return-void
.end method
.method public getBaseline()I
.registers 5
const/4 v0, -0x1
const/4 v3, 0x0
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->getChildCount()I
move-result v2
if-lez v2, :cond_1b
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ag;->getChildAt(I)Landroid/view/View;
move-result-object v1
:goto_d
:cond_d
if-eqz v1, :cond_1a
invoke-virtual {v1}, Landroid/view/View;->getBaseline()I
move-result v2
if-ltz v2, :cond_1a
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v0
add-int/2addr v0, v2
:cond_1a
return v0
:cond_1b
iget-object v2, p0, Landroid/support/v7/internal/widget/ag;->a:Landroid/widget/SpinnerAdapter;
if-eqz v2, :cond_d
iget-object v2, p0, Landroid/support/v7/internal/widget/ag;->a:Landroid/widget/SpinnerAdapter;
invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v2
if-lez v2, :cond_d
invoke-direct {p0, v3}, Landroid/support/v7/internal/widget/ag;->h(I)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/internal/widget/ag;->j:Landroid/support/v7/internal/widget/b;
invoke-virtual {v2, v3, v1}, Landroid/support/v7/internal/widget/b;->a(ILandroid/view/View;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->removeAllViewsInLayout()V
goto :goto_d
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/ag; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/ag;->a(I)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
const-string v1, " - Landroid/support/v7/internal/widget/ag; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
invoke-interface {v0}, Landroid/support/v7/internal/widget/ak;->q()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
invoke-interface {v0}, Landroid/support/v7/internal/widget/ak;->n()V
:cond_14
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 8
const/4 v1, 0x0
invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onLayout(ZIIII)V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ag;->w:Z
invoke-virtual {p0, v1, v1}, Landroid/support/v7/internal/widget/ag;->c(IZ)V
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ag;->w:Z
return-void
.end method
.method protected onMeasure(II)V
.registers 6
invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onMeasure(II)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
if-eqz v0, :cond_32
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
const/high16 v1, -0x8000
if-ne v0, v1, :cond_32
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->getMeasuredWidth()I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->d()Landroid/widget/SpinnerAdapter;
move-result-object v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {p0, v1, v2}, Landroid/support/v7/internal/widget/ag;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ag;->getMeasuredHeight()I
move-result v1
invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ag;->setMeasuredDimension(II)V
:cond_32
return-void
.end method
.method public performClick()Z
.registers 3
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->performClick()Z
move-result v0
if-nez v0, :cond_14
const/4 v0, 0x1
iget-object v1, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
invoke-interface {v1}, Landroid/support/v7/internal/widget/ak;->q()Z
move-result v1
if-nez v1, :cond_14
iget-object v1, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
invoke-interface {v1}, Landroid/support/v7/internal/widget/ak;->m()V
:cond_14
return v0
.end method
.method public w()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->S:Landroid/support/v7/internal/widget/ak;
invoke-interface {v0}, Landroid/support/v7/internal/widget/ak;->a()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method