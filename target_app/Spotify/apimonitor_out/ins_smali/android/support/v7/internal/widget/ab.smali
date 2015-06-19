.class final Landroid/support/v7/internal/widget/ab;
.super Landroid/support/v7/internal/widget/AbsSpinnerICS;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field  E:I
.field private F:Landroid/support/v7/internal/widget/af;
.field private G:Landroid/support/v7/internal/widget/ad;
.field private H:I
.field private I:Landroid/graphics/Rect;
.method constructor <init>(Landroid/content/Context;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ab;-><init>(Landroid/content/Context;IB)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;IB)V
.registers 10
const/4 v5, 0x0
const/4 v4, 0x0
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;-><init>(Landroid/content/Context;I)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/ab;->I:Landroid/graphics/Rect;
sget-object v0, Landroid/support/v7/a/k;->n:[I
invoke-virtual {p1, v5, v0, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x7
invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
packed-switch v1, :pswitch_data_72
:goto_1a
const/16 v1, 0x11
invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ab;->H:I
iget-object v1, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
const/4 v2, 0x6
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/af;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->G:Landroid/support/v7/internal/widget/ad;
if-eqz v0, :cond_3c
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
iget-object v1, p0, Landroid/support/v7/internal/widget/ab;->G:Landroid/support/v7/internal/widget/ad;
invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/af;->a(Landroid/widget/ListAdapter;)V
iput-object v5, p0, Landroid/support/v7/internal/widget/ab;->G:Landroid/support/v7/internal/widget/ad;
:cond_3c
return-void
:pswitch_3d
new-instance v1, Landroid/support/v7/internal/widget/ac;
invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/ac;-><init>(Landroid/support/v7/internal/widget/ab;B)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
goto :goto_1a
:pswitch_45
new-instance v1, Landroid/support/v7/internal/widget/ae;
invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/internal/widget/ae;-><init>(Landroid/support/v7/internal/widget/ab;Landroid/content/Context;I)V
const/4 v2, 0x3
const/4 v3, -0x2
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
move-result v2
iput v2, p0, Landroid/support/v7/internal/widget/ab;->E:I
const/4 v2, 0x2
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ae;->a(Landroid/graphics/drawable/Drawable;)V
const/4 v2, 0x5
invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v2
if-eqz v2, :cond_64
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ae;->b(I)V
:cond_64
const/4 v2, 0x4
invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v2
if-eqz v2, :cond_6e
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ae;->a(I)V
:cond_6e
iput-object v1, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
goto :goto_1a
nop
:pswitch_data_72
.packed-switch 0x0
:pswitch_3d
:pswitch_45
.end packed-switch
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/ab;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->I:Landroid/graphics/Rect;
return-object v0
.end method
.method private a(Landroid/view/View;)V
.registers 8
const/4 v5, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
if-nez v0, :cond_b
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
:cond_b
invoke-virtual {p0, p1, v5, v0}, Landroid/support/v7/internal/widget/ab;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->hasFocus()Z
move-result v1
invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V
iget v1, p0, Landroid/support/v7/internal/widget/ab;->b:I
iget-object v2, p0, Landroid/support/v7/internal/widget/ab;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
iget-object v3, p0, Landroid/support/v7/internal/widget/ab;->i:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->bottom:I
add-int/2addr v2, v3
iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v1
iget v2, p0, Landroid/support/v7/internal/widget/ab;->c:I
iget-object v3, p0, Landroid/support/v7/internal/widget/ab;->i:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
iget-object v4, p0, Landroid/support/v7/internal/widget/ab;->i:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
add-int/2addr v3, v4
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v0
invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->i:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->getMeasuredHeight()I
move-result v1
iget-object v2, p0, Landroid/support/v7/internal/widget/ab;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
sub-int/2addr v1, v2
iget-object v2, p0, Landroid/support/v7/internal/widget/ab;->i:Landroid/graphics/Rect;
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
add-int/lit8 v2, v2, 0x0
invoke-virtual {p1, v5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V
return-void
.end method
.method private d(I)Landroid/view/View;
.registers 4
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ab;->u:Z
if-nez v0, :cond_10
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->j:Landroid/support/v7/internal/widget/b;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/b;->a(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_10
invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ab;->a(Landroid/view/View;)V
:goto_f
return-object v0
:cond_10
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/widget/SpinnerAdapter;
const/4 v1, 0x0
invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ab;->a(Landroid/view/View;)V
goto :goto_f
.end method
.method final a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
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
iget v1, p0, Landroid/support/v7/internal/widget/l;->v:I
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
:goto_2b
if-ge v5, v8, :cond_56
invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I
move-result v0
if-eq v0, v1, :cond_6a
move-object v1, v2
:goto_34
invoke-interface {p1, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-nez v1, :cond_46
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_46
invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I
move-result v4
add-int/lit8 v1, v5, 0x1
move v5, v1
move v1, v0
goto :goto_2b
:cond_56
if-eqz p2, :cond_68
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->I:Landroid/graphics/Rect;
invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->I:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Landroid/support/v7/internal/widget/ab;->I:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
add-int/2addr v0, v1
add-int/2addr v0, v4
goto :goto_5
:cond_68
move v0, v4
goto :goto_5
:cond_6a
move v0, v1
move-object v1, v3
goto :goto_34
.end method
.method public final a(Landroid/support/v7/internal/widget/n;)V
.registers 4
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "setOnItemClickListener cannot be used with a spinner."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final a(Landroid/widget/SpinnerAdapter;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/widget/SpinnerAdapter;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
new-instance v1, Landroid/support/v7/internal/widget/ad;
invoke-direct {v1, p1}, Landroid/support/v7/internal/widget/ad;-><init>(Landroid/widget/SpinnerAdapter;)V
invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/af;->a(Landroid/widget/ListAdapter;)V
:goto_11
return-void
:cond_12
new-instance v0, Landroid/support/v7/internal/widget/ad;
invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/ad;-><init>(Landroid/widget/SpinnerAdapter;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ab;->G:Landroid/support/v7/internal/widget/ad;
goto :goto_11
.end method
.method final b(Landroid/support/v7/internal/widget/n;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/support/v7/internal/widget/n;)V
return-void
.end method
.method public final getBaseline()I
.registers 5
const/4 v0, -0x1
const/4 v3, 0x0
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->getChildCount()I
move-result v2
if-lez v2, :cond_1b
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ab;->getChildAt(I)Landroid/view/View;
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
iget-object v2, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/widget/SpinnerAdapter;
if-eqz v2, :cond_d
iget-object v2, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/widget/SpinnerAdapter;
invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v2
if-lez v2, :cond_d
invoke-direct {p0, v3}, Landroid/support/v7/internal/widget/ab;->d(I)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/internal/widget/ab;->j:Landroid/support/v7/internal/widget/b;
invoke-virtual {v2, v3, v1}, Landroid/support/v7/internal/widget/b;->a(ILandroid/view/View;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->removeAllViewsInLayout()V
goto :goto_d
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/ab; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/ab;->a(I)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
const-string v1, " - Landroid/support/v7/internal/widget/ab; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected final onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
invoke-interface {v0}, Landroid/support/v7/internal/widget/af;->i()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
invoke-interface {v0}, Landroid/support/v7/internal/widget/af;->f()V
:cond_14
return-void
.end method
.method protected final onLayout(ZIIII)V
.registers 15
const/4 v2, 0x0
invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onLayout(ZIIII)V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ab;->r:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->i:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->getRight()I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->getLeft()I
move-result v3
sub-int/2addr v1, v3
iget-object v3, p0, Landroid/support/v7/internal/widget/ab;->i:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v3
iget-object v3, p0, Landroid/support/v7/internal/widget/ab;->i:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->right:I
sub-int v3, v1, v3
iget-boolean v1, p0, Landroid/support/v7/internal/widget/ab;->u:Z
if-eqz v1, :cond_26
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->e()V
:cond_26
iget v1, p0, Landroid/support/v7/internal/widget/ab;->z:I
if-nez v1, :cond_30
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->a()V
:goto_2d
iput-boolean v2, p0, Landroid/support/v7/internal/widget/ab;->r:Z
return-void
:cond_30
iget v1, p0, Landroid/support/v7/internal/widget/ab;->v:I
if-ltz v1, :cond_39
iget v1, p0, Landroid/support/v7/internal/widget/ab;->v:I
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ab;->b(I)V
:cond_39
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildCount()I
move-result v4
iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j:Landroid/support/v7/internal/widget/b;
iget v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->k:I
move v1, v2
:goto_42
if-ge v1, v4, :cond_50
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;
move-result-object v7
add-int v8, v6, v1
invoke-virtual {v5, v8, v7}, Landroid/support/v7/internal/widget/b;->a(ILandroid/view/View;)V
add-int/lit8 v1, v1, 0x1
goto :goto_42
:cond_50
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->removeAllViewsInLayout()V
iget v1, p0, Landroid/support/v7/internal/widget/ab;->x:I
iput v1, p0, Landroid/support/v7/internal/widget/ab;->k:I
iget v1, p0, Landroid/support/v7/internal/widget/ab;->x:I
invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/ab;->d(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I
move-result v4
iget v5, p0, Landroid/support/v7/internal/widget/ab;->H:I
and-int/lit8 v5, v5, 0x7
sparse-switch v5, :sswitch_data_8a
:goto_68
invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->j:Landroid/support/v7/internal/widget/b;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/b;->a()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->invalidate()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->f()V
iput-boolean v2, p0, Landroid/support/v7/internal/widget/ab;->u:Z
iput-boolean v2, p0, Landroid/support/v7/internal/widget/ab;->p:Z
iget v0, p0, Landroid/support/v7/internal/widget/ab;->x:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ab;->c(I)V
goto :goto_2d
:sswitch_80
div-int/lit8 v3, v3, 0x2
add-int/2addr v0, v3
div-int/lit8 v3, v4, 0x2
sub-int/2addr v0, v3
goto :goto_68
:sswitch_87
add-int/2addr v0, v3
sub-int/2addr v0, v4
goto :goto_68
:sswitch_data_8a
.sparse-switch
0x1 -> :sswitch_80
0x5 -> :sswitch_87
.end sparse-switch
.end method
.method protected final onMeasure(II)V
.registers 6
invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onMeasure(II)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
if-eqz v0, :cond_30
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
const/high16 v1, -0x8000
if-ne v0, v1, :cond_30
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->getMeasuredWidth()I
move-result v0
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {p0, v1, v2}, Landroid/support/v7/internal/widget/ab;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ab;->getMeasuredHeight()I
move-result v1
invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ab;->setMeasuredDimension(II)V
:cond_30
return-void
.end method
.method public final performClick()Z
.registers 3
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->performClick()Z
move-result v0
if-nez v0, :cond_14
const/4 v0, 0x1
iget-object v1, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
invoke-interface {v1}, Landroid/support/v7/internal/widget/af;->i()Z
move-result v1
if-nez v1, :cond_14
iget-object v1, p0, Landroid/support/v7/internal/widget/ab;->F:Landroid/support/v7/internal/widget/af;
invoke-interface {v1}, Landroid/support/v7/internal/widget/af;->e()V
:cond_14
return v0
.end method