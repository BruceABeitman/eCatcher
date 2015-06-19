.class public Lit/sephiroth/android/library/widget/HListView;
.super Lit/sephiroth/android/library/widget/AbsHListView;
.source "SourceFile"
.field private aA:Z
.field private aB:Z
.field private aC:Z
.field private aD:Z
.field private aE:Z
.field private aF:Z
.field private final aG:Landroid/graphics/Rect;
.field private aH:Landroid/graphics/Paint;
.field private final aI:Lit/sephiroth/android/library/widget/t;
.field private aJ:Lit/sephiroth/android/library/widget/v;
.field  at:Landroid/graphics/drawable/Drawable;
.field  au:I
.field  av:I
.field  aw:Landroid/graphics/drawable/Drawable;
.field  ax:Landroid/graphics/drawable/Drawable;
.field private ay:Ljava/util/ArrayList;
.field private az:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string v1, "sephiroth_listViewStyle"
const-string v2, "attr"
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 15
invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
const/4 v0, 0x1
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
new-instance v0, Lit/sephiroth/android/library/widget/t;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lit/sephiroth/android/library/widget/t;-><init>(B)V
iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/t;
const/4 v1, 0x0
const-string v0, "HListView"
invoke-static {p1, v0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
if-eqz v0, :cond_100
const/4 v1, 0x0
invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
move-object v8, v0
:goto_37
const/4 v7, 0x0
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
const/4 v2, 0x1
const/4 v1, 0x1
const/4 v0, -0x1
if-eqz v8, :cond_f6
const/4 v0, 0x0
invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;
move-result-object v7
const/4 v0, 0x1
invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v6
const/4 v0, 0x5
invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v5
const/4 v0, 0x6
invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
const/4 v0, 0x2
const/4 v1, 0x0
invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v3
const/4 v0, 0x3
const/4 v1, 0x1
invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v2
const/4 v0, 0x4
const/4 v1, 0x1
invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
const/4 v0, 0x7
const/4 v9, -0x1
invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getInteger(II)I
move-result v0
invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
move v10, v0
move-object v0, v6
move-object v6, v5
move-object v5, v4
move v4, v3
move v3, v2
move v2, v1
move v1, v10
:goto_78
if-eqz v7, :cond_85
new-instance v8, Landroid/widget/ArrayAdapter;
const v9, 0x1090003
invoke-direct {v8, p1, v9, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
invoke-virtual {p0, v8}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/widget/ListAdapter;)V
:cond_85
if-eqz v0, :cond_b7
const-string v7, "HListView"
new-instance v8, Ljava/lang/StringBuilder;
const-string v9, "setDivider: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
if-eqz v0, :cond_f0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v7
iput v7, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
:goto_a3
iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->at:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_ae
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v0
const/4 v7, -0x1
if-ne v0, v7, :cond_f4
:cond_ae
const/4 v0, 0x1
:goto_af
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aB:Z
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
:cond_b7
if-eqz v6, :cond_c4
iput-object v6, p0, Lit/sephiroth/android/library/widget/HListView;->aw:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v0
if-gez v0, :cond_c4
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
:cond_c4
if-eqz v5, :cond_cb
iput-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->ax:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
:cond_cb
if-eqz v4, :cond_e9
const-string v0, "HListView"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "setDividerWidth: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iput v4, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
:cond_e9
iput-boolean v3, p0, Lit/sephiroth/android/library/widget/HListView;->aC:Z
iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->aD:Z
iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->av:I
return-void
:cond_f0
const/4 v7, 0x0
iput v7, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
goto :goto_a3
:cond_f4
const/4 v0, 0x0
goto :goto_af
:cond_f6
move v10, v0
move-object v0, v6
move-object v6, v5
move-object v5, v4
move v4, v3
move v3, v2
move v2, v1
move v1, v10
goto/16 :goto_78
:cond_100
move-object v8, v1
goto/16 :goto_37
.end method
.method private A()I
.registers 4
const v0, 0x3ea8f5c3
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I
move-result v2
sub-int/2addr v1, v2
int-to-float v1, v1
mul-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method private B()V
.registers 6
const/4 v0, 0x0
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v2
if-lez v2, :cond_27
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-nez v1, :cond_28
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v2
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-eqz v2, :cond_1f
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
sub-int/2addr v1, v2
:cond_1f
if-gez v1, :cond_48
:goto_21
:cond_21
if-eqz v0, :cond_27
neg-int v0, v0
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->b(I)V
:cond_27
return-void
:cond_28
add-int/lit8 v1, v2, -0x1
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getRight()I
move-result v1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v3
iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
sub-int/2addr v3, v4
sub-int/2addr v1, v3
iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v2, v3
iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-ge v2, v3, :cond_46
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
add-int/2addr v1, v2
:cond_46
if-gtz v1, :cond_21
:cond_48
move v0, v1
goto :goto_21
.end method
.method private C()I
.registers 3
const/4 v0, 0x2
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
return v0
.end method
.method private a(III)Landroid/view/View;
.registers 12
const/4 v3, 0x1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I
move-result v0
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
invoke-static {p2, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->c(III)I
move-result v6
invoke-direct {p0, p3, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->b(III)I
move-result v7
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v0, Landroid/graphics/Rect;->top:I
move-object v0, p0
move v2, p1
move v5, v3
invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
if-le v2, v7, :cond_41
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
sub-int/2addr v2, v6
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v3
sub-int/2addr v3, v7
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v2
neg-int v2, v2
invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V
:goto_32
:cond_32
invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-nez v1, :cond_5b
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v1
invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->k(I)V
:goto_40
return-object v0
:cond_41
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
if-ge v2, v6, :cond_32
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
sub-int v2, v6, v2
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v3
sub-int v3, v7, v3
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v2
invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V
goto :goto_32
:cond_5b
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v1
invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->l(I)V
goto :goto_40
.end method
.method private a(IIZIZ)Landroid/view/View;
.registers 14
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->ai:Z
if-nez v0, :cond_17
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/j;
invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/j;->b(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_17
const/4 v7, 0x1
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move v6, p5
invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V
:goto_16
return-object v1
:cond_17
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z
invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;
move-result-object v1
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z
const/4 v2, 0x0
aget-boolean v7, v0, v2
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move v6, p5
invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V
goto :goto_16
.end method
.method private a(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
.registers 17
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I
move-result v0
iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
invoke-static {p4, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->c(III)I
move-result v7
invoke-direct {p0, p4, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->b(III)I
move-result v8
if-lez p3, :cond_95
add-int/lit8 v1, v6, -0x1
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v2
const/4 v3, 0x1
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v0, Landroid/graphics/Rect;->top:I
const/4 v5, 0x0
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;
move-result-object v9
iget v10, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
invoke-virtual {v9}, Landroid/view/View;->getRight()I
move-result v0
add-int v2, v0, v10
const/4 v3, 0x1
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v0, Landroid/graphics/Rect;->top:I
const/4 v5, 0x1
move-object v0, p0
move v1, v6
invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v1
if-le v1, v8, :cond_59
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
sub-int/2addr v1, v7
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
sub-int/2addr v2, v8
sub-int v3, p5, p4
div-int/lit8 v3, v3, 0x2
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I
move-result v1
neg-int v2, v1
invoke-virtual {v9, v2}, Landroid/view/View;->offsetLeftAndRight(I)V
neg-int v1, v1
invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V
:cond_59
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-nez v1, :cond_79
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
add-int/lit8 v1, v1, -0x2
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
sub-int/2addr v2, v10
invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
add-int/2addr v2, v10
invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->c(II)Landroid/view/View;
:goto_78
return-object v0
:cond_79
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
add-int/2addr v2, v10
invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->c(II)Landroid/view/View;
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
add-int/lit8 v1, v1, -0x2
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
sub-int/2addr v2, v10
invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
goto :goto_78
:cond_95
if-gez p3, :cond_df
if-eqz p2, :cond_ce
invoke-virtual {p2}, Landroid/view/View;->getLeft()I
move-result v2
const/4 v3, 0x1
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v0, Landroid/graphics/Rect;->top:I
const/4 v5, 0x1
move-object v0, p0
move v1, v6
invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;
move-result-object v0
:goto_a9
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
if-ge v1, v7, :cond_ca
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
sub-int v1, v7, v1
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
sub-int v2, v8, v2
sub-int v3, p5, p4
div-int/lit8 v3, v3, 0x2
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V
:cond_ca
invoke-direct {p0, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V
goto :goto_78
:cond_ce
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v2
const/4 v3, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v0, Landroid/graphics/Rect;->top:I
const/4 v5, 0x1
move-object v0, p0
move v1, v6
invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;
move-result-object v0
goto :goto_a9
:cond_df
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v2
const/4 v3, 0x1
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v0, Landroid/graphics/Rect;->top:I
const/4 v5, 0x1
move-object v0, p0
move v1, v6
invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;
move-result-object v0
if-ge v2, p4, :cond_102
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v1
add-int/lit8 v2, p4, 0x14
if-ge v1, v2, :cond_102
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
sub-int v1, p4, v1
invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V
:cond_102
invoke-direct {p0, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V
goto/16 :goto_78
.end method
.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
.registers 4
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->at:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
return-void
.end method
.method private static a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
.registers 6
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I
move-result v0
invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I
invoke-virtual {p0, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z
iget v1, p2, Landroid/graphics/Rect;->right:I
iget v2, p2, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v2
if-ge v1, v0, :cond_17
iget v1, p2, Landroid/graphics/Rect;->right:I
sub-int v0, v1, v0
iput v0, p2, Landroid/graphics/Rect;->left:I
:cond_17
invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V
return-void
.end method
.method private a(Landroid/view/View;I)V
.registers 6
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-nez v1, :cond_1e
add-int/lit8 v1, p2, -0x1
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v2
sub-int/2addr v2, v0
invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V
add-int/lit8 v1, p2, 0x1
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v2
add-int/2addr v0, v2
invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->c(II)Landroid/view/View;
:goto_1d
return-void
:cond_1e
add-int/lit8 v1, p2, 0x1
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v2
add-int/2addr v2, v0
invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->c(II)Landroid/view/View;
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V
add-int/lit8 v1, p2, -0x1
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v2
sub-int v0, v2, v0
invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
goto :goto_1d
.end method
.method private a(Landroid/view/View;II)V
.registers 8
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
if-nez v0, :cond_12
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_12
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v1
iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I
const/4 v1, 0x1
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->c:Z
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
add-int/2addr v1, v2
iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->height:I
invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v1
iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->width:I
if-lez v0, :cond_3a
const/high16 v2, 0x4000
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
:goto_36
invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V
return-void
:cond_3a
invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
goto :goto_36
.end method
.method private a(Landroid/view/View;IIZIZZ)V
.registers 16
if-eqz p6, :cond_d6
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->h()Z
move-result v0
if-eqz v0, :cond_d6
const/4 v0, 0x1
move v1, v0
:goto_a
invoke-virtual {p1}, Landroid/view/View;->isSelected()Z
move-result v0
if-eq v1, v0, :cond_da
const/4 v0, 0x1
move v2, v0
:goto_12
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->F:I
if-lez v0, :cond_de
const/4 v3, 0x3
if-ge v0, v3, :cond_de
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->A:I
if-ne v0, p2, :cond_de
const/4 v0, 0x1
move v3, v0
:goto_1f
invoke-virtual {p1}, Landroid/view/View;->isPressed()Z
move-result v0
if-eq v3, v0, :cond_e2
const/4 v0, 0x1
move v6, v0
:goto_27
if-eqz p7, :cond_31
if-nez v2, :cond_31
invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z
move-result v0
if-eqz v0, :cond_e6
:cond_31
const/4 v0, 0x1
move v4, v0
:goto_33
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
if-nez v0, :cond_135
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
move-object v5, v0
:goto_42
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v0
iput v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I
if-eqz p7, :cond_50
iget-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->c:Z
if-eqz v0, :cond_59
:cond_50
iget-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->b:Z
if-eqz v0, :cond_ed
iget v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I
const/4 v7, -0x2
if-ne v0, v7, :cond_ed
:cond_59
if-eqz p4, :cond_ea
const/4 v0, -0x1
:goto_5c
invoke-virtual {p0, p1, v0, v5}, Lit/sephiroth/android/library/widget/HListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
:goto_5f
if-eqz v2, :cond_64
invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V
:cond_64
if-eqz v6, :cond_69
invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V
:cond_69
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->b:I
if-eqz v0, :cond_81
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/util/SparseBooleanArray;
if-eqz v0, :cond_81
instance-of v0, p1, Landroid/widget/Checkable;
if-eqz v0, :cond_103
move-object v0, p1
check-cast v0, Landroid/widget/Checkable;
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/util/SparseBooleanArray;
invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z
move-result v1
invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V
:goto_81
:cond_81
if-eqz v4, :cond_11b
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
add-int/2addr v1, v2
iget v2, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->height:I
invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v1
iget v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->width:I
if-lez v0, :cond_114
const/high16 v2, 0x4000
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
:goto_9e
invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V
:goto_a1
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
if-eqz p4, :cond_11f
:goto_ab
if-eqz v4, :cond_121
add-int/2addr v1, p5
add-int/2addr v0, p3
invoke-virtual {p1, p3, p5, v0, v1}, Landroid/view/View;->layout(IIII)V
:goto_b2
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->y:Z
if-eqz v0, :cond_c0
invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z
move-result v0
if-nez v0, :cond_c0
const/4 v0, 0x1
invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
:cond_c0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_d5
if-eqz p7, :cond_d5
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I
if-eq v0, p2, :cond_d5
invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V
:cond_d5
return-void
:cond_d6
const/4 v0, 0x0
move v1, v0
goto/16 :goto_a
:cond_da
const/4 v0, 0x0
move v2, v0
goto/16 :goto_12
:cond_de
const/4 v0, 0x0
move v3, v0
goto/16 :goto_1f
:cond_e2
const/4 v0, 0x0
move v6, v0
goto/16 :goto_27
:cond_e6
const/4 v0, 0x0
move v4, v0
goto/16 :goto_33
:cond_ea
const/4 v0, 0x0
goto/16 :goto_5c
:cond_ed
const/4 v0, 0x0
iput-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->c:Z
iget v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I
const/4 v7, -0x2
if-ne v0, v7, :cond_f8
const/4 v0, 0x1
iput-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->b:Z
:cond_f8
if-eqz p4, :cond_101
const/4 v0, -0x1
:goto_fb
const/4 v7, 0x1
invoke-virtual {p0, p1, v0, v5, v7}, Lit/sephiroth/android/library/widget/HListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
goto/16 :goto_5f
:cond_101
const/4 v0, 0x0
goto :goto_fb
:cond_103
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_81
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/util/SparseBooleanArray;
invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z
move-result v0
invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V
goto/16 :goto_81
:cond_114
const/4 v0, 0x0
const/4 v2, 0x0
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
goto :goto_9e
:cond_11b
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->cleanupLayoutState(Landroid/view/View;)V
goto :goto_a1
:cond_11f
sub-int/2addr p3, v0
goto :goto_ab
:cond_121
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
sub-int v0, p3, v0
invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v0
sub-int v0, p5, v0
invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V
goto/16 :goto_b2
:cond_135
move-object v5, v0
goto/16 :goto_42
.end method
.method private static a(Ljava/util/ArrayList;)V
.registers 5
const/4 v2, 0x0
if-eqz p0, :cond_20
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v3
move v1, v2
:goto_8
if-ge v1, v3, :cond_20
invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/u;
iget-object v0, v0, Lit/sephiroth/android/library/widget/u;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
if-eqz v0, :cond_1c
iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->b:Z
:cond_1c
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_20
return-void
.end method
.method private a(IILandroid/view/KeyEvent;)Z
.registers 12
const/4 v7, 0x2
const/16 v6, 0x82
const/16 v5, 0x21
const/4 v1, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v0, :cond_f
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->S:Z
if-nez v0, :cond_10
:goto_f
:cond_f
return v1
:cond_10
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->ai:Z
if-eqz v0, :cond_17
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->e()V
:cond_17
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xb
if-lt v0, v3, :cond_f
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v4
if-eq v4, v2, :cond_26
sparse-switch p1, :sswitch_data_18c
:cond_26
move v0, v1
:goto_27
:cond_27
if-eqz v0, :cond_175
move v1, v2
goto :goto_f
:sswitch_2b
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_45
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_27
move v3, p2
:goto_38
add-int/lit8 p2, v3, -0x1
if-lez v3, :cond_27
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->p(I)Z
move-result v3
if-eqz v3, :cond_27
move v0, v2
move v3, p2
goto :goto_38
:cond_45
invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_57
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->n(I)Z
move-result v0
if-eqz v0, :cond_59
:cond_57
move v0, v2
goto :goto_27
:cond_59
move v0, v1
goto :goto_27
:sswitch_5b
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_75
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_27
move v3, p2
:goto_68
add-int/lit8 p2, v3, -0x1
if-lez v3, :cond_27
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->p(I)Z
move-result v3
if-eqz v3, :cond_27
move v0, v2
move v3, p2
goto :goto_68
:cond_75
invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_87
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->n(I)Z
move-result v0
if-eqz v0, :cond_89
:cond_87
move v0, v2
goto :goto_27
:cond_89
move v0, v1
goto :goto_27
:sswitch_8b
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_26
const/16 v0, 0x11
invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->o(I)Z
move-result v0
goto :goto_27
:sswitch_98
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_26
const/16 v0, 0x42
invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->o(I)Z
move-result v0
goto :goto_27
:sswitch_a5
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_27
invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v3
if-nez v3, :cond_27
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v3
if-lez v3, :cond_27
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->i()V
move v0, v2
goto/16 :goto_27
:sswitch_c3
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_d5
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_d2
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->m(I)Z
:cond_d2
:goto_d2
move v0, v2
goto/16 :goto_27
:cond_d5
invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z
move-result v0
if-eqz v0, :cond_d2
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_d2
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->m(I)Z
goto :goto_d2
:sswitch_e5
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_fd
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_f7
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->m(I)Z
move-result v0
if-eqz v0, :cond_fa
:cond_f7
move v0, v2
goto/16 :goto_27
:cond_fa
move v0, v1
goto/16 :goto_27
:cond_fd
invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_10f
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->n(I)Z
move-result v0
if-eqz v0, :cond_112
:cond_10f
move v0, v2
goto/16 :goto_27
:cond_112
move v0, v1
goto/16 :goto_27
:sswitch_115
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_12d
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_127
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->m(I)Z
move-result v0
if-eqz v0, :cond_12a
:cond_127
move v0, v2
goto/16 :goto_27
:cond_12a
move v0, v1
goto/16 :goto_27
:cond_12d
invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_13f
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->n(I)Z
move-result v0
if-eqz v0, :cond_142
:cond_13f
move v0, v2
goto/16 :goto_27
:cond_142
move v0, v1
goto/16 :goto_27
:sswitch_145
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_157
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->n(I)Z
move-result v0
if-eqz v0, :cond_15a
:cond_157
move v0, v2
goto/16 :goto_27
:cond_15a
move v0, v1
goto/16 :goto_27
:sswitch_15d
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z
move-result v0
if-nez v0, :cond_16f
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->n(I)Z
move-result v0
if-eqz v0, :cond_172
:cond_16f
move v0, v2
goto/16 :goto_27
:cond_172
move v0, v1
goto/16 :goto_27
:cond_175
packed-switch v4, :pswitch_data_1ba
goto/16 :goto_f
:pswitch_17a
invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v1
goto/16 :goto_f
:pswitch_180
invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v1
goto/16 :goto_f
:pswitch_186
invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z
move-result v1
goto/16 :goto_f
:pswitch_data_1ba
.packed-switch 0x0
:pswitch_17a
:pswitch_180
:pswitch_186
.end packed-switch
:sswitch_data_18c
.sparse-switch
0x13 -> :sswitch_2b
0x14 -> :sswitch_5b
0x15 -> :sswitch_8b
0x16 -> :sswitch_98
0x17 -> :sswitch_a5
0x3e -> :sswitch_c3
0x42 -> :sswitch_a5
0x5c -> :sswitch_e5
0x5d -> :sswitch_115
0x7a -> :sswitch_145
0x7b -> :sswitch_15d
.end sparse-switch
.end method
.method private a(Landroid/view/View;Landroid/view/View;)Z
.registers 6
const/4 v1, 0x1
if-ne p1, p2, :cond_5
move v0, v1
:goto_4
return v0
:cond_5
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
instance-of v2, v0, Landroid/view/ViewGroup;
if-eqz v2, :cond_17
check-cast v0, Landroid/view/View;
invoke-direct {p0, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_17
move v0, v1
goto :goto_4
:cond_17
const/4 v0, 0x0
goto :goto_4
.end method
.method private b(III)I
.registers 5
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v0, v0, -0x1
if-eq p3, v0, :cond_7
sub-int/2addr p1, p2
:cond_7
return p1
.end method
.method private static b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
.registers 6
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I
move-result v0
invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I
invoke-virtual {p0, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z
iget v1, p2, Landroid/graphics/Rect;->right:I
iget v2, p2, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v2
if-ge v1, v0, :cond_16
iget v1, p2, Landroid/graphics/Rect;->left:I
add-int/2addr v0, v1
iput v0, p2, Landroid/graphics/Rect;->right:I
:cond_16
invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V
return-void
.end method
.method private b(Landroid/view/View;II)V
.registers 10
const/4 v5, 0x0
invoke-virtual {p1}, Landroid/view/View;->getWidth()I
move-result v1
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
if-nez v0, :cond_12
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
const/4 v2, -0x2
const/4 v3, -0x1
invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
:cond_12
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:I
iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->bottom:I
add-int/2addr v3, v4
iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-static {v2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v2
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
if-lez v0, :cond_5f
const/high16 v3, 0x4000
invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
:goto_2d
invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
if-eq v0, v1, :cond_64
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v2
iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
add-int/2addr v2, v3
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v4
add-int/2addr v0, v4
invoke-virtual {p1, v4, v3, v0, v2}, Landroid/view/View;->layout(IIII)V
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
sub-int v1, v0, v1
add-int/lit8 v0, p2, 0x1
:goto_53
if-ge v0, p3, :cond_64
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/view/View;->offsetLeftAndRight(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_53
:cond_5f
invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
goto :goto_2d
:cond_64
return-void
.end method
.method private b(Landroid/view/View;)Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v5
move v3, v2
:goto_9
if-ge v3, v5, :cond_1b
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/u;
iget-object v0, v0, Lit/sephiroth/android/library/widget/u;->a:Landroid/view/View;
if-ne p1, v0, :cond_17
move v0, v1
:goto_16
return v0
:cond_17
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_9
:cond_1b
iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v5
move v3, v2
:goto_22
if-ge v3, v5, :cond_34
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/u;
iget-object v0, v0, Lit/sephiroth/android/library/widget/u;->a:Landroid/view/View;
if-ne p1, v0, :cond_30
move v0, v1
goto :goto_16
:cond_30
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_22
:cond_34
move v0, v2
goto :goto_16
.end method
.method private static c(III)I
.registers 3
if-lez p2, :cond_3
add-int/2addr p0, p1
:cond_3
return p0
.end method
.method private c(Landroid/view/View;)I
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I
move-result v2
sub-int/2addr v1, v2
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
sub-int/2addr v1, v2
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
if-ge v2, v3, :cond_2d
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
sub-int/2addr v0, v1
:cond_2c
:goto_2c
return v0
:cond_2d
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
if-le v2, v1, :cond_2c
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
sub-int/2addr v0, v1
goto :goto_2c
.end method
.method private c(II)Landroid/view/View;
.registers 11
const/4 v3, 0x1
const/4 v6, 0x0
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v0
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I
move-result v1
sub-int v7, v0, v1
move v2, p2
move v1, p1
:goto_e
if-ge v2, v7, :cond_31
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-ge v1, v0, :cond_31
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-ne v1, v0, :cond_2f
move v5, v3
:goto_19
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v0, Landroid/graphics/Rect;->top:I
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
add-int/2addr v2, v4
if-eqz v5, :cond_39
:goto_2b
add-int/lit8 v1, v1, 0x1
move-object v6, v0
goto :goto_e
:cond_2f
const/4 v5, 0x0
goto :goto_19
:cond_31
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
return-object v6
:cond_39
move-object v0, v6
goto :goto_2b
.end method
.method private d(II)Landroid/view/View;
.registers 10
const/4 v3, 0x0
const/4 v6, 0x0
move v2, p2
move v1, p1
:goto_4
if-lez v2, :cond_25
if-ltz v1, :cond_25
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-ne v1, v0, :cond_23
const/4 v5, 0x1
:goto_d
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v0, Landroid/graphics/Rect;->top:I
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
sub-int/2addr v2, v4
if-eqz v5, :cond_31
:goto_1f
add-int/lit8 v1, v1, -0x1
move-object v6, v0
goto :goto_4
:cond_23
move v5, v3
goto :goto_d
:cond_25
add-int/lit8 v0, v1, 0x1
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
return-object v6
:cond_31
move-object v0, v6
goto :goto_1f
.end method
.method private e(II)I
.registers 12
const/4 v2, 0x0
const-string v0, "HListView"
const-string v1, "measureWidthOfChildren, from 0 to -1"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-nez v4, :cond_17
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
add-int p2, v0, v1
:cond_16
:goto_16
return p2
:cond_17
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
add-int v3, v0, v1
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
if-lez v0, :cond_62
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->at:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_62
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
move v1, v0
:goto_2c
invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
add-int/lit8 v5, v0, -0x1
iget-object v6, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/j;
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z
move v4, v2
move v0, v3
:goto_38
if-gt v4, v5, :cond_66
invoke-virtual {p0, v4, v7}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;
move-result-object v8
invoke-direct {p0, v8, v4, p1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;II)V
if-lez v4, :cond_68
add-int/2addr v0, v1
move v3, v0
:goto_45
invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I
if-ltz v0, :cond_64
const/4 v0, 0x1
:goto_50
if-eqz v0, :cond_56
const/4 v0, -0x1
invoke-virtual {v6, v8, v0}, Lit/sephiroth/android/library/widget/j;->a(Landroid/view/View;I)V
:cond_56
invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
add-int/2addr v3, v0
if-ge v3, p2, :cond_16
add-int/lit8 v0, v4, 0x1
move v4, v0
move v0, v3
goto :goto_38
:cond_62
move v1, v2
goto :goto_2c
:cond_64
move v0, v2
goto :goto_50
:cond_66
move p2, v0
goto :goto_16
:cond_68
move v3, v0
goto :goto_45
.end method
.method private f(II)Landroid/view/View;
.registers 9
const/4 v3, 0x1
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-ne p1, v0, :cond_3e
move v5, v3
:goto_6
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v0, Landroid/graphics/Rect;->top:I
move-object v0, p0
move v1, p1
move v2, p2
invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;
move-result-object v0
iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-nez v1, :cond_40
add-int/lit8 v1, p1, -0x1
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
sub-int/2addr v2, v3
invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
move-result-object v1
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V
add-int/lit8 v2, p1, 0x1
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v4
add-int/2addr v3, v4
invoke-direct {p0, v2, v3}, Lit/sephiroth/android/library/widget/HListView;->c(II)Landroid/view/View;
move-result-object v2
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v3
if-lez v3, :cond_3b
invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->k(I)V
:goto_3b
:cond_3b
if-eqz v5, :cond_64
:goto_3d
return-object v0
:cond_3e
const/4 v5, 0x0
goto :goto_6
:cond_40
add-int/lit8 v1, p1, 0x1
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
add-int/2addr v2, v3
invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->c(II)Landroid/view/View;
move-result-object v2
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V
add-int/lit8 v1, p1, -0x1
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v4
sub-int v3, v4, v3
invoke-direct {p0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
move-result-object v1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v3
if-lez v3, :cond_3b
invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->l(I)V
goto :goto_3b
:cond_64
if-eqz v1, :cond_68
move-object v0, v1
goto :goto_3d
:cond_68
move-object v0, v2
goto :goto_3d
.end method
.method private j(I)Landroid/view/View;
.registers 4
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v1, v1, -0x1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-gez v0, :cond_1d
const/4 v0, 0x0
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
:cond_1d
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/widget/HListView;->c(II)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method private k(I)V
.registers 6
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v0, p1
add-int/lit8 v0, v0, -0x1
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v1, v1, -0x1
if-ne v0, v1, :cond_62
if-lez p1, :cond_62
add-int/lit8 v0, p1, -0x1
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v0
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I
move-result v2
sub-int/2addr v1, v2
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
sub-int/2addr v1, v2
sub-int v0, v1, v0
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v2
if-lez v0, :cond_62
iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-gtz v3, :cond_3c
iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
if-ge v2, v3, :cond_62
:cond_3c
iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-nez v3, :cond_4a
iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
sub-int v2, v3, v2
invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
move-result v0
:cond_4a
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->b(I)V
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-lez v0, :cond_62
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/lit8 v0, v0, -0x1
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
sub-int/2addr v1, v2
invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V
:cond_62
return-void
.end method
.method private l(I)V
.registers 8
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-nez v0, :cond_60
if-lez p1, :cond_60
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v2
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I
move-result v3
sub-int/2addr v2, v3
iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->right:I
sub-int/2addr v2, v3
sub-int/2addr v0, v1
add-int/lit8 v1, p1, -0x1
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getRight()I
move-result v3
iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v4, p1
add-int/lit8 v4, v4, -0x1
if-lez v0, :cond_60
iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v5, v5, -0x1
if-lt v4, v5, :cond_3b
if-le v3, v2, :cond_61
:cond_3b
iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v5, v5, -0x1
if-ne v4, v5, :cond_47
sub-int v2, v3, v2
invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
move-result v0
:cond_47
neg-int v0, v0
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->b(I)V
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v0, v0, -0x1
if-ge v4, v0, :cond_60
add-int/lit8 v0, v4, 0x1
invoke-virtual {v1}, Landroid/view/View;->getRight()I
move-result v1
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
add-int/2addr v1, v2
invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->c(II)Landroid/view/View;
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V
:goto_60
:cond_60
return-void
:cond_61
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v0, v0, -0x1
if-ne v4, v0, :cond_60
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()V
goto :goto_60
.end method
.method private m(I)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
const/4 v2, -0x1
const/16 v3, 0x21
if-ne p1, v3, :cond_54
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v3
sub-int/2addr v2, v3
add-int/lit8 v2, v2, -0x1
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v2
move v3, v2
move v2, v1
:goto_16
if-ltz v3, :cond_6c
invoke-virtual {p0, v3, v2}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I
move-result v3
if-ltz v3, :cond_6c
const/4 v1, 0x4
iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->h:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingLeft()I
move-result v1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I
move-result v4
add-int/2addr v1, v4
iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I
if-eqz v2, :cond_3a
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v4
sub-int/2addr v1, v4
if-le v3, v1, :cond_3a
const/4 v1, 0x3
iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->h:I
:cond_3a
if-nez v2, :cond_44
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v1
if-ge v3, v1, :cond_44
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->h:I
:cond_44
invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->d(I)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->c()V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z
move-result v1
if-nez v1, :cond_53
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
:cond_53
:goto_53
return v0
:cond_54
const/16 v3, 0x82
if-ne p1, v3, :cond_6e
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v2, v2, -0x1
iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v4
add-int/2addr v3, v4
add-int/lit8 v3, v3, -0x1
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v2
move v3, v2
move v2, v0
goto :goto_16
:cond_6c
move v0, v1
goto :goto_53
:cond_6e
move v3, v2
move v2, v1
goto :goto_16
.end method
.method private n(I)Z
.registers 6
const/4 v1, 0x0
const/4 v0, 0x1
const/16 v2, 0x21
if-ne p1, v2, :cond_27
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-eqz v2, :cond_47
invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I
move-result v1
if-ltz v1, :cond_18
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->h:I
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->d(I)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->c()V
:goto_18
:cond_18
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z
move-result v1
if-nez v1, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
:cond_26
return v0
:cond_27
const/16 v2, 0x82
if-ne p1, v2, :cond_47
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v3, v3, -0x1
if-ge v2, v3, :cond_47
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I
move-result v1
if-ltz v1, :cond_18
const/4 v2, 0x3
iput v2, p0, Lit/sephiroth/android/library/widget/HListView;->h:I
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->d(I)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->c()V
goto :goto_18
:cond_47
move v0, v1
goto :goto_18
.end method
.method private o(I)Z
.registers 5
const/16 v0, 0x11
if-eq p1, v0, :cond_10
const/16 v0, 0x42
if-eq p1, v0, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v0
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
if-eqz v1, :cond_6d
if-lez v0, :cond_6d
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
const/4 v1, -0x1
if-eq v0, v1, :cond_6d
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->g()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_6d
invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z
move-result v1
if-eqz v1, :cond_6d
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_6d
invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;
move-result-object v1
invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
move-result-object v2
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_58
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/HListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z
move-result v0
if-eqz v0, :cond_58
const/4 v0, 0x1
:goto_57
return v0
:cond_58
invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
move-result-object v2
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRootView()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_6d
invoke-direct {p0, v0, p0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z
move-result v0
goto :goto_57
:cond_6d
const/4 v0, 0x0
goto :goto_57
.end method
.method private p(I)Z
.registers 14
const/4 v0, 0x1
:try_start_1
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->ae:Z
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v0
if-lez v0, :cond_30d
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->g()Landroid/view/View;
move-result-object v3
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->q(I)I
move-result v4
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v1
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
sub-int v5, v1, v2
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->left:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v6
const/16 v1, 0x82
if-ne p1, v1, :cond_f9
add-int/lit8 v1, v6, -0x1
const/4 v2, -0x1
if-eq v4, v2, :cond_32
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
sub-int v1, v4, v1
:cond_32
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v2, v1
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v7
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v1, v1, -0x1
if-ge v2, v1, :cond_316
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->C()I
move-result v1
sub-int v1, v5, v1
:goto_45
invoke-virtual {v7}, Landroid/view/View;->getRight()I
move-result v2
if-gt v2, v1, :cond_c1
const/4 v2, 0x0
:goto_4c
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
if-eqz v1, :cond_238
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->g()Landroid/view/View;
move-result-object v5
if-eqz v5, :cond_14a
invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z
move-result v1
if-eqz v1, :cond_14a
invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;
move-result-object v1
invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
move-result-object v5
invoke-virtual {v5, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
move-result-object v1
move-object v5, v1
:goto_69
if-eqz v5, :cond_234
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v6
const/4 v1, 0x0
:goto_70
if-ge v1, v6, :cond_1bd
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v7
invoke-direct {p0, v5, v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z
move-result v7
if-eqz v7, :cond_1b9
iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v6, v1
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
const/4 v7, -0x1
if-eq v1, v7, :cond_1c5
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-eq v6, v1, :cond_1c5
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->q(I)I
move-result v1
const/4 v7, -0x1
if-eq v1, v7, :cond_1c5
const/16 v7, 0x82
if-ne p1, v7, :cond_95
if-lt v1, v6, :cond_9b
:cond_95
const/16 v7, 0x21
if-ne p1, v7, :cond_1c5
if-le v1, v6, :cond_1c5
:cond_9b
const/4 v1, 0x0
move-object v9, v1
:goto_9d
if-eqz v9, :cond_a7
invoke-virtual {v9}, Lit/sephiroth/android/library/widget/t;->a()I
move-result v4
invoke-virtual {v9}, Lit/sephiroth/android/library/widget/t;->b()I
move-result v2
:cond_a7
if-eqz v9, :cond_23c
const/4 v1, 0x1
:goto_aa
const/4 v5, -0x1
if-eq v4, v5, :cond_30f
if-eqz v9, :cond_23f
const/4 v0, 0x1
move v8, v0
:goto_b1
const/4 v0, -0x1
if-ne v4, v0, :cond_243
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "newSelectedPosition needs to be valid"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_bc
.catchall {:try_start_1 .. :try_end_bc} :catchall_bc
:catchall_bc
move-exception v0
const/4 v1, 0x0
iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->ae:Z
throw v0
:cond_c1
const/4 v2, -0x1
if-eq v4, v2, :cond_d3
:try_start_c4
invoke-virtual {v7}, Landroid/view/View;->getLeft()I
move-result v2
sub-int v2, v1, v2
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->A()I
move-result v8
if-lt v2, v8, :cond_d3
const/4 v2, 0x0
goto/16 :goto_4c
:cond_d3
invoke-virtual {v7}, Landroid/view/View;->getRight()I
move-result v2
sub-int v1, v2, v1
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v2, v6
iget v7, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-ne v2, v7, :cond_ef
add-int/lit8 v2, v6, -0x1
invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v2
sub-int/2addr v2, v5
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
:cond_ef
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->A()I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v2
goto/16 :goto_4c
:cond_f9
const/4 v1, 0x0
const/4 v5, -0x1
if-eq v4, v5, :cond_101
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
sub-int v1, v4, v1
:cond_101
iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v5, v1
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v6
if-lez v5, :cond_313
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->C()I
move-result v1
add-int/2addr v1, v2
:goto_10f
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v5
if-lt v5, v1, :cond_118
const/4 v2, 0x0
goto/16 :goto_4c
:cond_118
const/4 v5, -0x1
if-eq v4, v5, :cond_129
invoke-virtual {v6}, Landroid/view/View;->getRight()I
move-result v5
sub-int/2addr v5, v1
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->A()I
move-result v7
if-lt v5, v7, :cond_129
const/4 v2, 0x0
goto/16 :goto_4c
:cond_129
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v5
sub-int/2addr v1, v5
iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-nez v5, :cond_140
const/4 v5, 0x0
invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getLeft()I
move-result v5
sub-int/2addr v2, v5
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
:cond_140
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->A()I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v2
goto/16 :goto_4c
:cond_14a
const/16 v1, 0x82
if-ne p1, v1, :cond_182
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-lez v1, :cond_17e
const/4 v1, 0x1
:goto_153
iget-object v6, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
if-eqz v1, :cond_180
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->C()I
move-result v1
:goto_15d
add-int/2addr v1, v6
if-eqz v5, :cond_16a
invoke-virtual {v5}, Landroid/view/View;->getLeft()I
move-result v6
if-le v6, v1, :cond_16a
invoke-virtual {v5}, Landroid/view/View;->getLeft()I
move-result v1
:cond_16a
iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v5, v1, v6, v1, v7}, Landroid/graphics/Rect;->set(IIII)V
:goto_171
invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
move-result-object v1
iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {v1, p0, v5, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
move-result-object v1
move-object v5, v1
goto/16 :goto_69
:cond_17e
const/4 v1, 0x0
goto :goto_153
:cond_180
const/4 v1, 0x0
goto :goto_15d
:cond_182
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v6
add-int/2addr v1, v6
add-int/lit8 v1, v1, -0x1
iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-ge v1, v6, :cond_1b5
const/4 v1, 0x1
:goto_190
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v6
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->right:I
sub-int/2addr v6, v7
if-eqz v1, :cond_1b7
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->C()I
move-result v1
:goto_19f
sub-int v1, v6, v1
if-eqz v5, :cond_1ad
invoke-virtual {v5}, Landroid/view/View;->getRight()I
move-result v6
if-ge v6, v1, :cond_1ad
invoke-virtual {v5}, Landroid/view/View;->getRight()I
move-result v1
:cond_1ad
iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v5, v1, v6, v1, v7}, Landroid/graphics/Rect;->set(IIII)V
goto :goto_171
:cond_1b5
const/4 v1, 0x0
goto :goto_190
:cond_1b7
const/4 v1, 0x0
goto :goto_19f
:cond_1b9
add-int/lit8 v1, v1, 0x1
goto/16 :goto_70
:cond_1bd
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "newFocus is not a child of any of the children of the list!"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c5
const/4 v1, 0x0
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {v5, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {p0, v5, v7}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
const/16 v7, 0x21
if-ne p1, v7, :cond_201
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->left:I
iget-object v8, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->left:I
if-ge v7, v8, :cond_1ee
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v7
if-lez v6, :cond_1ee
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->C()I
move-result v7
add-int/2addr v1, v7
:goto_1ee
:cond_1ee
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->A()I
move-result v7
if-ge v1, v7, :cond_221
invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z
iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/t;
invoke-virtual {v5, v6, v1}, Lit/sephiroth/android/library/widget/t;->a(II)V
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/t;
move-object v9, v1
goto/16 :goto_9d
:cond_201
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v7
iget-object v8, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->right:I
sub-int/2addr v7, v8
iget-object v8, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->bottom:I
if-le v8, v7, :cond_1ee
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
sub-int/2addr v1, v7
iget v7, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v7, v7, -0x1
if-ge v6, v7, :cond_1ee
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->C()I
move-result v7
add-int/2addr v1, v7
goto :goto_1ee
:cond_221
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->c(Landroid/view/View;)I
move-result v1
if-ge v1, v7, :cond_234
invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/t;
invoke-virtual {v1, v6, v7}, Lit/sephiroth/android/library/widget/t;->a(II)V
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/t;
move-object v9, v1
goto/16 :goto_9d
:cond_234
const/4 v1, 0x0
move-object v9, v1
goto/16 :goto_9d
:cond_238
const/4 v1, 0x0
move-object v9, v1
goto/16 :goto_9d
:cond_23c
const/4 v1, 0x0
goto/16 :goto_aa
:cond_23f
const/4 v0, 0x0
move v8, v0
goto/16 :goto_b1
:cond_243
const/4 v0, 0x0
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
sub-int/2addr v1, v5
iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
sub-int v5, v4, v5
const/16 v6, 0x21
if-ne p1, v6, :cond_2fb
invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v6
const/4 v0, 0x1
move-object v7, v6
move-object v6, v3
move v3, v1
move v1, v0
:goto_25a
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v10
if-eqz v7, :cond_26b
if-nez v8, :cond_305
if-eqz v1, :cond_305
const/4 v0, 0x1
:goto_265
invoke-virtual {v7, v0}, Landroid/view/View;->setSelected(Z)V
invoke-direct {p0, v7, v5, v10}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;II)V
:cond_26b
if-eqz v6, :cond_278
if-nez v8, :cond_308
if-nez v1, :cond_308
const/4 v0, 0x1
:goto_272
invoke-virtual {v6, v0}, Landroid/view/View;->setSelected(Z)V
invoke-direct {p0, v6, v3, v10}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;II)V
:cond_278
invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->h(I)V
invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->i(I)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->g()Landroid/view/View;
move-result-object v0
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
if-eqz v1, :cond_291
if-nez v9, :cond_291
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_291
invoke-virtual {v1}, Landroid/view/View;->clearFocus()V
:cond_291
const/4 v1, 0x1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->x()V
move v3, v4
:goto_296
if-lez v2, :cond_2a1
const/16 v1, 0x21
if-ne p1, v1, :cond_30b
move v1, v2
:goto_29d
invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->r(I)V
const/4 v1, 0x1
:cond_2a1
iget-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
if-eqz v2, :cond_2c2
if-nez v9, :cond_2c2
if-eqz v0, :cond_2c2
invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z
move-result v2
if-eqz v2, :cond_2c2
invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;
move-result-object v2
invoke-direct {p0, v2, p0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z
move-result v5
if-eqz v5, :cond_2bf
invoke-direct {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->c(Landroid/view/View;)I
move-result v5
if-lez v5, :cond_2c2
:cond_2bf
invoke-virtual {v2}, Landroid/view/View;->clearFocus()V
:cond_2c2
const/4 v2, -0x1
if-ne v4, v2, :cond_2d4
if-eqz v0, :cond_2d4
invoke-direct {p0, v0, p0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z
move-result v2
if-nez v2, :cond_2d4
const/4 v0, 0x0
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->l()V
const/4 v2, -0x1
iput v2, p0, Lit/sephiroth/android/library/widget/HListView;->M:I
:cond_2d4
if-eqz v1, :cond_30d
if-eqz v0, :cond_2e1
invoke-virtual {p0, v3, v0}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->J:I
:cond_2e1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z
move-result v0
if-nez v0, :cond_2ea
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
:cond_2ea
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->c()V
const/4 v0, 0x1
:goto_2ee
if-eqz v0, :cond_2f7
invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I
move-result v1
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->playSoundEffect(I)V
:cond_2f7
:try_end_2f7
.catchall {:try_start_c4 .. :try_end_2f7} :catchall_bc
const/4 v1, 0x0
iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->ae:Z
return v0
:try_start_2fb
:cond_2fb
invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
:try_end_2fe
.catchall {:try_start_2fb .. :try_end_2fe} :catchall_bc
move-result-object v6
move-object v7, v3
move v3, v5
move v5, v1
move v1, v0
goto/16 :goto_25a
:cond_305
const/4 v0, 0x0
goto/16 :goto_265
:cond_308
const/4 v0, 0x0
goto/16 :goto_272
:cond_30b
neg-int v1, v2
goto :goto_29d
:cond_30d
const/4 v0, 0x0
goto :goto_2ee
:cond_30f
move v11, v0
move-object v0, v3
move v3, v11
goto :goto_296
:cond_313
move v1, v2
goto/16 :goto_10f
:cond_316
move v1, v5
goto/16 :goto_45
.end method
.method private q(I)I
.registers 8
const/4 v3, -0x1
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
const/16 v0, 0x82
if-ne p1, v0, :cond_3b
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-eq v0, v3, :cond_19
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
add-int/lit8 v0, v0, 0x1
:goto_f
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I
move-result v2
if-lt v0, v2, :cond_1b
move v0, v3
:cond_18
:goto_18
return v0
:cond_19
move v0, v1
goto :goto_f
:cond_1b
if-ge v0, v1, :cond_1e
move v0, v1
:cond_1e
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->v()I
move-result v2
iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
:goto_24
if-gt v0, v2, :cond_79
invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v5
if-eqz v5, :cond_38
sub-int v5, v0, v1
invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getVisibility()I
move-result v5
if-eqz v5, :cond_18
:cond_38
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_3b
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v0
add-int/2addr v0, v1
add-int/lit8 v0, v0, -0x1
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-eq v2, v3, :cond_56
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
add-int/lit8 v2, v2, -0x1
:goto_4a
if-ltz v2, :cond_54
iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I
move-result v4
if-lt v2, v4, :cond_5e
:cond_54
move v0, v3
goto :goto_18
:cond_56
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v2
add-int/2addr v2, v1
add-int/lit8 v2, v2, -0x1
goto :goto_4a
:cond_5e
if-le v2, v0, :cond_7b
:goto_60
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
:goto_62
if-lt v0, v1, :cond_79
invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v4
if-eqz v4, :cond_76
sub-int v4, v0, v1
invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v4
if-eqz v4, :cond_18
:cond_76
add-int/lit8 v0, v0, -0x1
goto :goto_62
:cond_79
move v0, v3
goto :goto_18
:cond_7b
move v0, v2
goto :goto_60
.end method
.method private r(I)V
.registers 14
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->b(I)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v0
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
sub-int v9, v0, v1
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v10, v0, Landroid/graphics/Rect;->left:I
iget-object v11, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/j;
if-gez p1, :cond_98
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v0
add-int/lit8 v1, v0, -0x1
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
move v8, v0
move-object v0, v1
:goto_21
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v1
if-ge v1, v9, :cond_55
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v1, v8
add-int/lit8 v1, v1, -0x1
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v2, v2, -0x1
if-ge v1, v2, :cond_55
add-int/lit8 v2, v1, 0x1
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z
invoke-virtual {p0, v2, v1}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;
move-result-object v1
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v0
iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
add-int/2addr v3, v0
const/4 v4, 0x1
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v5, v0, Landroid/graphics/Rect;->top:I
const/4 v6, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z
const/4 v7, 0x0
aget-boolean v7, v0, v7
move-object v0, p0
invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V
add-int/lit8 v0, v8, 0x1
move v8, v0
move-object v0, v1
goto :goto_21
:cond_55
invoke-virtual {v0}, Landroid/view/View;->getBottom()I
move-result v1
if-ge v1, v9, :cond_64
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v0
sub-int v0, v9, v0
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->b(I)V
:cond_64
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
move-object v1, v0
:goto_6a
invoke-virtual {v1}, Landroid/view/View;->getRight()I
move-result v0
if-ge v0, v10, :cond_117
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I
if-ltz v0, :cond_92
const/4 v0, 0x1
:goto_7b
if-eqz v0, :cond_94
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->detachViewFromParent(Landroid/view/View;)V
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
invoke-virtual {v11, v1, v0}, Lit/sephiroth/android/library/widget/j;->a(Landroid/view/View;I)V
:goto_85
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
move-object v1, v0
goto :goto_6a
:cond_92
const/4 v0, 0x0
goto :goto_7b
:cond_94
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->removeViewInLayout(Landroid/view/View;)V
goto :goto_85
:cond_98
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
move-object v0, v1
:goto_9e
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
if-le v1, v10, :cond_d1
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-lez v1, :cond_d1
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/lit8 v2, v1, -0x1
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z
invoke-virtual {p0, v2, v1}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;
move-result-object v1
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
sub-int v3, v0, v3
const/4 v4, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v5, v0, Landroid/graphics/Rect;->top:I
const/4 v6, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->P:[Z
const/4 v7, 0x0
aget-boolean v7, v0, v7
move-object v0, p0
invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
move-object v0, v1
goto :goto_9e
:cond_d1
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
if-le v1, v10, :cond_e0
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
sub-int v0, v10, v0
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->b(I)V
:cond_e0
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v0
add-int/lit8 v1, v0, -0x1
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
move v2, v1
move-object v1, v0
:goto_ec
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v0
if-le v0, v9, :cond_117
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I
if-ltz v0, :cond_111
const/4 v0, 0x1
:goto_fd
if-eqz v0, :cond_113
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->detachViewFromParent(Landroid/view/View;)V
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v0, v2
invoke-virtual {v11, v1, v0}, Lit/sephiroth/android/library/widget/j;->a(Landroid/view/View;I)V
:goto_108
add-int/lit8 v1, v2, -0x1
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
move v2, v1
move-object v1, v0
goto :goto_ec
:cond_111
const/4 v0, 0x0
goto :goto_fd
:cond_113
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->removeViewInLayout(Landroid/view/View;)V
goto :goto_108
:cond_117
return-void
.end method
.method protected final a(IZ)I
.registers 7
const/4 v0, -0x1
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v1, :cond_b
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->isInTouchMode()Z
move-result v2
if-eqz v2, :cond_d
:cond_b
move p1, v0
:goto_c
:cond_c
return p1
:cond_d
invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
move-result v2
iget-boolean v3, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z
if-nez v3, :cond_3e
if-eqz p2, :cond_27
const/4 v3, 0x0
invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I
move-result p1
:goto_1c
if-ge p1, v2, :cond_38
invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v3
if-nez v3, :cond_38
add-int/lit8 p1, p1, 0x1
goto :goto_1c
:cond_27
add-int/lit8 v3, v2, -0x1
invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I
move-result p1
:goto_2d
if-ltz p1, :cond_38
invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v3
if-nez v3, :cond_38
add-int/lit8 p1, p1, -0x1
goto :goto_2d
:cond_38
if-ltz p1, :cond_3c
if-lt p1, v2, :cond_c
:cond_3c
move p1, v0
goto :goto_c
:cond_3e
if-ltz p1, :cond_42
if-lt p1, v2, :cond_c
:cond_42
move p1, v0
goto :goto_c
.end method
.method public final a(Landroid/widget/ListAdapter;)V
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v0, :cond_11
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/a;
if-eqz v0, :cond_11
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/a;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_11
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->d()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/j;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/j;->b()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gtz v0, :cond_29
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_8f
:cond_29
new-instance v0, Lit/sephiroth/android/library/widget/w;
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
invoke-direct {v0, v1, v2, p1}, Lit/sephiroth/android/library/widget/w;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
:goto_34
const/4 v0, -0x1
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->aq:I
const-wide/high16 v0, -0x8000
iput-wide v0, p0, Lit/sephiroth/android/library/widget/HListView;->ar:J
invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v0, :cond_97
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z
move-result v0
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->w()V
new-instance v0, Lit/sephiroth/android/library/widget/a;
invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/a;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/a;
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/a;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/j;
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I
move-result v1
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/j;->a(I)V
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-eqz v0, :cond_92
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v0, v0, -0x1
invoke-virtual {p0, v0, v3}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I
move-result v0
:goto_7e
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->h(I)V
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->i(I)V
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-nez v0, :cond_8b
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->x()V
:goto_8b
:cond_8b
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V
return-void
:cond_8f
iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
goto :goto_34
:cond_92
invoke-virtual {p0, v3, v4}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I
move-result v0
goto :goto_7e
:cond_97
iput-boolean v4, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->w()V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->x()V
goto :goto_8b
.end method
.method protected final a(Z)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v1
if-eqz p1, :cond_24
if-lez v1, :cond_16
add-int/lit8 v0, v1, -0x1
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v0
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
add-int/2addr v0, v2
:cond_16
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v1, v2
invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->c(II)Landroid/view/View;
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v0
invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->k(I)V
:goto_23
return-void
:cond_24
if-lez v1, :cond_40
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
sub-int/2addr v0, v1
:goto_31
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/lit8 v1, v1, -0x1
invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v0
invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->l(I)V
goto :goto_23
:cond_40
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v0
add-int/lit8 v0, v0, 0x0
goto :goto_31
.end method
.method public final b(II)V
.registers 5
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->isInTouchMode()Z
move-result v0
if-nez v0, :cond_3c
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I
move-result p1
if-ltz p1, :cond_15
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->i(I)V
:cond_15
:goto_15
if-ltz p1, :cond_4
const/4 v0, 0x4
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->h:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
add-int/2addr v0, p2
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->ac:Z
if-eqz v0, :cond_2f
iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->Z:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v0
iput-wide v0, p0, Lit/sephiroth/android/library/widget/HListView;->aa:J
:cond_2f
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/i;
if-eqz v0, :cond_38
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/i;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/i;->a()V
:cond_38
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V
goto :goto_4
:cond_3c
iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->M:I
goto :goto_15
.end method
.method protected final c(I)I
.registers 5
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v1
if-lez v1, :cond_33
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-nez v0, :cond_1e
const/4 v0, 0x0
:goto_b
if-ge v0, v1, :cond_33
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v2
if-gt p1, v2, :cond_1b
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v0, v1
:goto_1a
return v0
:cond_1b
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_1e
add-int/lit8 v0, v1, -0x1
:goto_20
if-ltz v0, :cond_33
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
if-lt p1, v1, :cond_30
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v0, v1
goto :goto_1a
:cond_30
add-int/lit8 v0, v0, -0x1
goto :goto_20
:cond_33
const/4 v0, -0x1
goto :goto_1a
.end method
.method protected canAnimate()Z
.registers 2
invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->canAnimate()Z
move-result v0
if-eqz v0, :cond_c
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-lez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method protected final d()V
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-static {v0}, Lit/sephiroth/android/library/widget/HListView;->a(Ljava/util/ArrayList;)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
invoke-static {v0}, Lit/sephiroth/android/library/widget/HListView;->a(Ljava/util/ArrayList;)V
invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V
const/4 v0, 0x0
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->h:I
return-void
.end method
.method public final d(I)V
.registers 6
const/4 v0, 0x1
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->i(I)V
const/4 v1, 0x0
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-ltz v2, :cond_23
add-int/lit8 v3, v2, -0x1
if-ne p1, v3, :cond_1f
:cond_d
:goto_d
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/i;
if-eqz v1, :cond_16
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/i;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/i;->a()V
:cond_16
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->e()V
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z
:cond_1e
return-void
:cond_1f
add-int/lit8 v2, v2, 0x1
if-eq p1, v2, :cond_d
:cond_23
move v0, v1
goto :goto_d
.end method
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.registers 26
move-object/from16 v0, p0
iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->y:Z
if-eqz v2, :cond_b
const/4 v2, 0x1
move-object/from16 v0, p0
iput-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->z:Z
:cond_b
move-object/from16 v0, p0
iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->au:I
move-object/from16 v0, p0
iget-object v9, v0, Lit/sephiroth/android/library/widget/HListView;->aw:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p0
iget-object v10, v0, Lit/sephiroth/android/library/widget/HListView;->ax:Landroid/graphics/drawable/Drawable;
if-eqz v9, :cond_13b
const/4 v2, 0x1
move v7, v2
:goto_1b
if-eqz v10, :cond_13f
const/4 v2, 0x1
move v6, v2
:goto_1f
if-lez v8, :cond_143
move-object/from16 v0, p0
iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->at:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_143
const/4 v2, 0x1
move v5, v2
:goto_29
if-nez v5, :cond_2f
if-nez v7, :cond_2f
if-eqz v6, :cond_185
:cond_2f
move-object/from16 v0, p0
iget-object v11, v0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingTop()I
move-result v2
iput v2, v11, Landroid/graphics/Rect;->top:I
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getBottom()I
move-result v2
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getTop()I
move-result v3
sub-int/2addr v2, v3
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingBottom()I
move-result v3
sub-int/2addr v2, v3
iput v2, v11, Landroid/graphics/Rect;->bottom:I
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v12
move-object/from16 v0, p0
iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v13
move-object/from16 v0, p0
iget v14, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
move-object/from16 v0, p0
iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
sub-int v2, v14, v2
add-int/lit8 v15, v2, -0x1
move-object/from16 v0, p0
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView;->aC:Z
move/from16 v16, v0
move-object/from16 v0, p0
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView;->aD:Z
move/from16 v17, v0
move-object/from16 v0, p0
iget v0, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
move/from16 v18, v0
move-object/from16 v0, p0
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView;->aE:Z
move/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
move-object/from16 v20, v0
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->isOpaque()Z
move-result v2
if-eqz v2, :cond_147
invoke-super/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isOpaque()Z
move-result v2
if-nez v2, :cond_147
const/4 v2, 0x1
move v4, v2
:goto_91
if-eqz v4, :cond_b3
move-object/from16 v0, p0
iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;
if-nez v2, :cond_b3
move-object/from16 v0, p0
iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->aA:Z
if-eqz v2, :cond_b3
new-instance v2, Landroid/graphics/Paint;
invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V
move-object/from16 v0, p0
iput-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;
move-object/from16 v0, p0
iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->p()I
move-result v3
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V
:cond_b3
move-object/from16 v0, p0
iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;
move-object/from16 v21, v0
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v2
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I
move-result v3
sub-int/2addr v2, v3
add-int/lit8 v2, v2, 0x0
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v3
add-int v22, v2, v3
move-object/from16 v0, p0
iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-nez v2, :cond_189
const/4 v3, 0x0
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v2
if-lez v12, :cond_e5
if-gez v2, :cond_e5
if-eqz v7, :cond_14b
const/4 v7, 0x0
iput v7, v11, Landroid/graphics/Rect;->right:I
iput v2, v11, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p1
invoke-static {v0, v9, v11}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
:cond_e5
:goto_e5
const/4 v2, 0x0
move/from16 v23, v2
move v2, v3
move/from16 v3, v23
:goto_eb
if-ge v3, v12, :cond_16b
if-nez v16, :cond_f3
add-int v7, v18, v3
if-lt v7, v13, :cond_138
:cond_f3
if-nez v17, :cond_f9
add-int v7, v18, v3
if-ge v7, v15, :cond_138
:cond_f9
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v2
if-eqz v5, :cond_138
move/from16 v0, v22
if-ge v2, v0, :cond_138
if-eqz v6, :cond_10f
add-int/lit8 v7, v12, -0x1
if-eq v3, v7, :cond_138
:cond_10f
if-nez v19, :cond_12b
add-int v7, v18, v3
move-object/from16 v0, v20
invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v7
if-eqz v7, :cond_15b
add-int/lit8 v7, v12, -0x1
if-eq v3, v7, :cond_12b
add-int v7, v18, v3
add-int/lit8 v7, v7, 0x1
move-object/from16 v0, v20
invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v7
if-eqz v7, :cond_15b
:cond_12b
iput v2, v11, Landroid/graphics/Rect;->left:I
add-int v7, v2, v8
iput v7, v11, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v11}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
:goto_138
:cond_138
add-int/lit8 v3, v3, 0x1
goto :goto_eb
:cond_13b
const/4 v2, 0x0
move v7, v2
goto/16 :goto_1b
:cond_13f
const/4 v2, 0x0
move v6, v2
goto/16 :goto_1f
:cond_143
const/4 v2, 0x0
move v5, v2
goto/16 :goto_29
:cond_147
const/4 v2, 0x0
move v4, v2
goto/16 :goto_91
:cond_14b
if-eqz v5, :cond_e5
const/4 v2, 0x0
iput v2, v11, Landroid/graphics/Rect;->right:I
neg-int v2, v8
iput v2, v11, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v11}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
goto :goto_e5
:cond_15b
if-eqz v4, :cond_138
iput v2, v11, Landroid/graphics/Rect;->left:I
add-int v7, v2, v8
iput v7, v11, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p1
move-object/from16 v1, v21
invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto :goto_138
:cond_16b
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v3
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v4
add-int/2addr v3, v4
if-eqz v6, :cond_185
add-int v4, v18, v12
if-ne v4, v14, :cond_185
if-le v3, v2, :cond_185
iput v2, v11, Landroid/graphics/Rect;->left:I
iput v3, v11, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p1
invoke-static {v0, v10, v11}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
:cond_185
:goto_185
invoke-super/range {p0 .. p1}, Lit/sephiroth/android/library/widget/AbsHListView;->dispatchDraw(Landroid/graphics/Canvas;)V
return-void
:cond_189
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v3
if-lez v12, :cond_1a5
if-eqz v7, :cond_1a5
iput v3, v11, Landroid/graphics/Rect;->left:I
const/4 v2, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v2
iput v2, v11, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p1
invoke-static {v0, v9, v11}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
:cond_1a5
if-eqz v7, :cond_1ee
const/4 v2, 0x1
:goto_1a8
if-ge v2, v12, :cond_200
if-nez v16, :cond_1b0
add-int v7, v18, v2
if-lt v7, v13, :cond_1eb
:cond_1b0
if-nez v17, :cond_1b6
add-int v7, v18, v2
if-ge v7, v15, :cond_1eb
:cond_1b6
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v7
invoke-virtual {v7}, Landroid/view/View;->getLeft()I
move-result v7
if-lez v7, :cond_1eb
if-nez v19, :cond_1de
add-int v9, v18, v2
move-object/from16 v0, v20
invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v9
if-eqz v9, :cond_1f0
add-int/lit8 v9, v12, -0x1
if-eq v2, v9, :cond_1de
add-int v9, v18, v2
add-int/lit8 v9, v9, 0x1
move-object/from16 v0, v20
invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v9
if-eqz v9, :cond_1f0
:cond_1de
sub-int v9, v7, v8
iput v9, v11, Landroid/graphics/Rect;->left:I
iput v7, v11, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v11}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
:goto_1eb
:cond_1eb
add-int/lit8 v2, v2, 0x1
goto :goto_1a8
:cond_1ee
const/4 v2, 0x0
goto :goto_1a8
:cond_1f0
if-eqz v4, :cond_1eb
sub-int v9, v7, v8
iput v9, v11, Landroid/graphics/Rect;->left:I
iput v7, v11, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p1
move-object/from16 v1, v21
invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto :goto_1eb
:cond_200
if-lez v12, :cond_185
if-lez v3, :cond_185
if-eqz v6, :cond_216
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v2
iput v2, v11, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v3
iput v2, v11, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p1
invoke-static {v0, v10, v11}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
goto/16 :goto_185
:cond_216
if-eqz v5, :cond_185
move/from16 v0, v22
iput v0, v11, Landroid/graphics/Rect;->left:I
add-int v2, v22, v8
iput v2, v11, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v11}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
goto/16 :goto_185
.end method
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
if-nez v0, :cond_1a
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_1a
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-nez v1, :cond_1a
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v0
invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/widget/HListView;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
:cond_1a
return v0
.end method
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
move-result v0
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->z:Z
if-eqz v1, :cond_b
const/4 v1, 0x0
iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->z:Z
:cond_b
return v0
.end method
.method protected final e()V
.registers 18
move-object/from16 v0, p0
iget-boolean v12, v0, Lit/sephiroth/android/library/widget/HListView;->as:Z
if-nez v12, :cond_24
const/4 v1, 0x1
move-object/from16 v0, p0
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->as:Z
:try_start_b
invoke-super/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
move-object/from16 v0, p0
iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-nez v1, :cond_25
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->d()V
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->c()V
:try_end_1d
.catchall {:try_start_b .. :try_end_1d} :catchall_100
if-nez v12, :cond_24
const/4 v1, 0x0
move-object/from16 v0, p0
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->as:Z
:cond_24
:goto_24
return-void
:cond_25
:try_start_25
move-object/from16 v0, p0
iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v3, v1, Landroid/graphics/Rect;->left:I
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v1
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I
move-result v2
sub-int/2addr v1, v2
move-object/from16 v0, p0
iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
sub-int v9, v1, v2
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v13
const/4 v7, 0x0
const/4 v5, 0x0
const/4 v1, 0x0
const/4 v6, 0x0
const/4 v2, 0x0
move-object/from16 v0, p0
iget v4, v0, Lit/sephiroth/android/library/widget/HListView;->h:I
packed-switch v4, :pswitch_data_37a
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->al:I
move-object/from16 v0, p0
iget v4, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
sub-int v4, v1, v4
if-ltz v4, :cond_60
if-ge v4, v13, :cond_60
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v5
:cond_60
const/4 v1, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
move-object/from16 v0, p0
iget v6, v0, Lit/sephiroth/android/library/widget/HListView;->aj:I
if-ltz v6, :cond_77
move-object/from16 v0, p0
iget v6, v0, Lit/sephiroth/android/library/widget/HListView;->aj:I
move-object/from16 v0, p0
iget v7, v0, Lit/sephiroth/android/library/widget/HListView;->al:I
sub-int v7, v6, v7
:cond_77
add-int/2addr v4, v7
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v6
move-object v8, v1
:goto_7f
move-object/from16 v0, p0
iget-boolean v10, v0, Lit/sephiroth/android/library/widget/HListView;->ai:Z
if-eqz v10, :cond_88
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->o()V
:cond_88
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-nez v1, :cond_b3
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->d()V
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->c()V
:try_end_94
.catchall {:try_start_25 .. :try_end_94} :catchall_100
if-nez v12, :cond_24
const/4 v1, 0x0
move-object/from16 v0, p0
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->as:Z
goto :goto_24
:pswitch_9c
:try_start_9c
move-object/from16 v0, p0
iget v4, v0, Lit/sephiroth/android/library/widget/HListView;->aj:I
move-object/from16 v0, p0
iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
sub-int/2addr v4, v8
if-ltz v4, :cond_377
if-ge v4, v13, :cond_377
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v6
move-object v8, v1
goto :goto_7f
:pswitch_b1
move-object v8, v1
goto :goto_7f
:cond_b3
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I
move-result v4
if-eq v1, v4, :cond_109
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getId()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ") with Adapter("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")]"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_100
.catchall {:try_start_9c .. :try_end_100} :catchall_100
:catchall_100
move-exception v1
if-nez v12, :cond_108
const/4 v2, 0x0
move-object/from16 v0, p0
iput-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->as:Z
:cond_108
throw v1
:cond_109
:try_start_109
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->aj:I
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->h(I)V
move-object/from16 v0, p0
iget v11, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
move-object/from16 v0, p0
iget-object v14, v0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/j;
const/4 v1, 0x0
if-eqz v10, :cond_12e
const/4 v4, 0x0
:goto_11e
if-ge v4, v13, :cond_131
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v15
add-int v16, v11, v4
invoke-virtual/range {v14 .. v16}, Lit/sephiroth/android/library/widget/j;->a(Landroid/view/View;I)V
add-int/lit8 v4, v4, 0x1
goto :goto_11e
:cond_12e
invoke-virtual {v14, v13, v11}, Lit/sephiroth/android/library/widget/j;->a(II)V
:cond_131
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;
move-result-object v4
if-eqz v4, :cond_373
if-eqz v10, :cond_141
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;)Z
move-result v10
if-eqz v10, :cond_14b
:cond_141
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->findFocus()Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_14a
invoke-virtual {v2}, Landroid/view/View;->onStartTemporaryDetach()V
:cond_14a
move-object v1, v4
:cond_14b
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->requestFocus()Z
move-object v10, v1
move-object v11, v2
:goto_150
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->detachAllViewsFromParent()V
invoke-virtual {v14}, Lit/sephiroth/android/library/widget/j;->d()V
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->h:I
packed-switch v1, :pswitch_data_388
if-nez v13, :cond_2ce
move-object/from16 v0, p0
iget-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-nez v1, :cond_2ad
const/4 v1, 0x0
const/4 v2, 0x1
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I
move-result v1
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->h(I)V
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->j(I)Landroid/view/View;
move-result-object v1
move-object v2, v1
:goto_179
invoke-virtual {v14}, Lit/sephiroth/android/library/widget/j;->e()V
if-eqz v2, :cond_332
move-object/from16 v0, p0
iget-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
if-eqz v1, :cond_32a
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->hasFocus()Z
move-result v1
if-eqz v1, :cond_32a
invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z
move-result v1
if-nez v1, :cond_32a
if-ne v2, v10, :cond_19a
if-eqz v11, :cond_19a
invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z
move-result v1
if-nez v1, :cond_1a0
:cond_19a
invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z
move-result v1
if-eqz v1, :cond_31a
:cond_1a0
const/4 v1, 0x1
:goto_1a1
if-nez v1, :cond_31d
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_1ac
invoke-virtual {v1}, Landroid/view/View;->clearFocus()V
:cond_1ac
const/4 v1, -0x1
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V
:goto_1b2
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v1
move-object/from16 v0, p0
iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->J:I
:goto_1ba
:cond_1ba
if-eqz v11, :cond_1c5
invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
if-eqz v1, :cond_1c5
invoke-virtual {v11}, Landroid/view/View;->onFinishTemporaryDetach()V
:cond_1c5
const/4 v1, 0x0
move-object/from16 v0, p0
iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->h:I
const/4 v1, 0x0
move-object/from16 v0, p0
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->ai:Z
move-object/from16 v0, p0
iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->O:Ljava/lang/Runnable;
if-eqz v1, :cond_1e3
move-object/from16 v0, p0
iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->O:Ljava/lang/Runnable;
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->post(Ljava/lang/Runnable;)Z
const/4 v1, 0x0
move-object/from16 v0, p0
iput-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->O:Ljava/lang/Runnable;
:cond_1e3
const/4 v1, 0x0
move-object/from16 v0, p0
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->ac:Z
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->al:I
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->i(I)V
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->f()V
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-lez v1, :cond_1fd
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->x()V
:cond_1fd
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->c()V
:try_end_200
.catchall {:try_start_109 .. :try_end_200} :catchall_100
if-nez v12, :cond_24
const/4 v1, 0x0
move-object/from16 v0, p0
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->as:Z
goto/16 :goto_24
:pswitch_209
if-eqz v6, :cond_218
:try_start_20b
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v1
move-object/from16 v0, p0
invoke-direct {v0, v1, v3, v9}, Lit/sephiroth/android/library/widget/HListView;->a(III)Landroid/view/View;
move-result-object v1
move-object v2, v1
goto/16 :goto_179
:cond_218
sub-int v7, v9, v3
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->m()I
move-result v2
const/4 v4, 0x1
move-object/from16 v0, p0
iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v5, v1, Landroid/graphics/Rect;->top:I
const/4 v6, 0x1
move-object/from16 v1, p0
invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;
move-result-object v1
move-object/from16 v0, p0
iput v2, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
if-gt v3, v7, :cond_23d
sub-int v3, v7, v3
div-int/lit8 v3, v3, 0x2
invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V
:cond_23d
move-object/from16 v0, p0
invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V
move-object/from16 v0, p0
iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-nez v2, :cond_254
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v2
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->k(I)V
:goto_251
move-object v2, v1
goto/16 :goto_179
:cond_254
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v2
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->l(I)V
goto :goto_251
:pswitch_25e
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->Z:I
move-object/from16 v0, p0
iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->W:I
move-object/from16 v0, p0
invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->f(II)Landroid/view/View;
move-result-object v1
move-object v2, v1
goto/16 :goto_179
:pswitch_26f
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v1, v1, -0x1
move-object/from16 v0, p0
invoke-direct {v0, v1, v9}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
move-result-object v1
invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->B()V
move-object v2, v1
goto/16 :goto_179
:pswitch_281
const/4 v1, 0x0
move-object/from16 v0, p0
iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->j(I)Landroid/view/View;
move-result-object v1
invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->B()V
move-object v2, v1
goto/16 :goto_179
:pswitch_292
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->m()I
move-result v1
move-object/from16 v0, p0
iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->W:I
move-object/from16 v0, p0
invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->f(II)Landroid/view/View;
move-result-object v1
move-object v2, v1
goto/16 :goto_179
:pswitch_2a3
move-object/from16 v4, p0
move v8, v3
invoke-direct/range {v4 .. v9}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
move-result-object v1
move-object v2, v1
goto/16 :goto_179
:cond_2ad
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I
move-result v1
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->h(I)V
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v1, v1, -0x1
move-object/from16 v0, p0
invoke-direct {v0, v1, v9}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
move-result-object v1
move-object v2, v1
goto/16 :goto_179
:cond_2ce
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-ltz v1, :cond_2f2
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->al:I
move-object/from16 v0, p0
iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-ge v1, v2, :cond_2f2
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-nez v5, :cond_2ed
:goto_2e4
move-object/from16 v0, p0
invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->f(II)Landroid/view/View;
move-result-object v1
move-object v2, v1
goto/16 :goto_179
:cond_2ed
invoke-virtual {v5}, Landroid/view/View;->getLeft()I
move-result v3
goto :goto_2e4
:cond_2f2
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
move-object/from16 v0, p0
iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-ge v1, v2, :cond_310
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-nez v8, :cond_30b
:goto_302
move-object/from16 v0, p0
invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->f(II)Landroid/view/View;
move-result-object v1
move-object v2, v1
goto/16 :goto_179
:cond_30b
invoke-virtual {v8}, Landroid/view/View;->getLeft()I
move-result v3
goto :goto_302
:cond_310
const/4 v1, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->f(II)Landroid/view/View;
move-result-object v1
move-object v2, v1
goto/16 :goto_179
:cond_31a
const/4 v1, 0x0
goto/16 :goto_1a1
:cond_31d
const/4 v1, 0x0
invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V
move-object/from16 v0, p0
iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->o:Landroid/graphics/Rect;
invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
goto/16 :goto_1b2
:cond_32a
const/4 v1, -0x1
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V
goto/16 :goto_1b2
:cond_332
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->F:I
if-lez v1, :cond_366
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->F:I
const/4 v2, 0x3
if-ge v1, v2, :cond_366
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->A:I
move-object/from16 v0, p0
iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
sub-int/2addr v1, v2
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_359
move-object/from16 v0, p0
iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->A:I
move-object/from16 v0, p0
invoke-virtual {v0, v2, v1}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V
:goto_359
:cond_359
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->hasFocus()Z
move-result v1
if-eqz v1, :cond_1ba
if-eqz v11, :cond_1ba
invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z
goto/16 :goto_1ba
:cond_366
const/4 v1, 0x0
move-object/from16 v0, p0
iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->J:I
move-object/from16 v0, p0
iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->o:Landroid/graphics/Rect;
invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
:try_end_372
.catchall {:try_start_20b .. :try_end_372} :catchall_100
goto :goto_359
:cond_373
move-object v10, v1
move-object v11, v2
goto/16 :goto_150
:cond_377
move-object v8, v1
goto/16 :goto_7f
:pswitch_data_388
.packed-switch 0x1
:pswitch_281
:pswitch_209
:pswitch_26f
:pswitch_292
:pswitch_25e
:pswitch_2a3
.end packed-switch
:pswitch_data_37a
.packed-switch 0x1
:pswitch_b1
:pswitch_9c
:pswitch_b1
:pswitch_b1
:pswitch_b1
.end packed-switch
.end method
.method public final e(I)V
.registers 4
ushr-int/lit8 v0, p1, 0x18
const/16 v1, 0xff
if-ne v0, v1, :cond_1f
const/4 v0, 0x1
:goto_7
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aA:Z
if-eqz v0, :cond_1b
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;
if-nez v0, :cond_16
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;
:cond_16
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
:cond_1b
invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->e(I)V
return-void
:cond_1f
const/4 v0, 0x0
goto :goto_7
.end method
.method public final f(I)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->b(II)V
return-void
.end method
.method public isOpaque()Z
.registers 5
const/4 v1, 0x0
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->z:Z
if-eqz v0, :cond_d
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aA:Z
if-eqz v0, :cond_d
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aB:Z
if-nez v0, :cond_13
:cond_d
invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isOpaque()Z
move-result v0
if-eqz v0, :cond_2c
:cond_13
const/4 v2, 0x1
:goto_14
if-eqz v2, :cond_5a
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
if-eqz v0, :cond_2e
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
:goto_1e
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_2a
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v3
if-le v3, v0, :cond_33
:cond_2a
move v0, v1
:goto_2b
return v0
:cond_2c
move v2, v1
goto :goto_14
:cond_2e
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingLeft()I
move-result v0
goto :goto_1e
:cond_33
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v3
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
if-eqz v0, :cond_55
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
:goto_3f
sub-int v0, v3, v0
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_53
invoke-virtual {v3}, Landroid/view/View;->getRight()I
move-result v3
if-ge v3, v0, :cond_5a
:cond_53
move v0, v1
goto :goto_2b
:cond_55
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingRight()I
move-result v0
goto :goto_3f
:cond_5a
move v0, v2
goto :goto_2b
.end method
.method public final j()I
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public final k()I
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method protected onFinishInflate()V
.registers 5
invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->onFinishInflate()V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v1
if-lez v1, :cond_47
const/4 v0, 0x0
:goto_a
if-ge v0, v1, :cond_44
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v3, :cond_22
iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
instance-of v3, v3, Lit/sephiroth/android/library/widget/w;
if-nez v3, :cond_22
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot add header view to list -- setAdapter has already been called."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
new-instance v3, Lit/sephiroth/android/library/widget/u;
invoke-direct {v3}, Lit/sephiroth/android/library/widget/u;-><init>()V
iput-object v2, v3, Lit/sephiroth/android/library/widget/u;->a:Landroid/view/View;
const/4 v2, 0x0
iput-object v2, v3, Lit/sephiroth/android/library/widget/u;->b:Ljava/lang/Object;
const/4 v2, 0x1
iput-boolean v2, v3, Lit/sephiroth/android/library/widget/u;->c:Z
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v2, :cond_41
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/a;
if-eqz v2, :cond_41
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/a;
invoke-virtual {v2}, Lit/sephiroth/android/library/widget/a;->onChanged()V
:cond_41
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_44
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->removeAllViews()V
:cond_47
return-void
.end method
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
.registers 19
invoke-super/range {p0 .. p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onFocusChanged(ZILandroid/graphics/Rect;)V
iget-object v9, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
const/4 v5, -0x1
const/4 v3, 0x0
if-eqz v9, :cond_105
if-eqz p1, :cond_105
if-eqz p3, :cond_105
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollY()I
move-result v2
move-object/from16 v0, p3
invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V
invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v2
iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v2, v4
if-ge v1, v2, :cond_2d
const/4 v1, 0x0
iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->h:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->e()V
:cond_2d
iget-object v10, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
const v2, 0x7fffffff
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v11
iget v12, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
const/4 v4, 0x0
:goto_39
if-ge v4, v11, :cond_105
add-int v1, v12, v4
invoke-interface {v9, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v1
if-eqz v1, :cond_112
invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v13
invoke-virtual {v13, v10}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V
invoke-virtual {p0, v13, v10}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
sparse-switch p2, :sswitch_data_118
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:sswitch_58
move-object/from16 v0, p3
iget v8, v0, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->top:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int v7, v1, v6
iget v6, v10, Landroid/graphics/Rect;->left:I
iget v1, v10, Landroid/graphics/Rect;->top:I
invoke-virtual {v10}, Landroid/graphics/Rect;->height()I
move-result v14
div-int/lit8 v14, v14, 0x2
add-int/2addr v1, v14
:goto_73
sub-int/2addr v6, v8
sub-int/2addr v1, v7
mul-int/2addr v1, v1
mul-int/2addr v6, v6
add-int/2addr v1, v6
if-ge v1, v2, :cond_112
invoke-virtual {v13}, Landroid/view/View;->getLeft()I
move-result v2
move v3, v4
:goto_7f
add-int/lit8 v4, v4, 0x1
move v5, v3
move v3, v2
move v2, v1
goto :goto_39
:sswitch_85
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->left:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int v8, v1, v6
move-object/from16 v0, p3
iget v7, v0, Landroid/graphics/Rect;->bottom:I
iget v1, v10, Landroid/graphics/Rect;->left:I
invoke-virtual {v10}, Landroid/graphics/Rect;->width()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int/2addr v6, v1
iget v1, v10, Landroid/graphics/Rect;->top:I
goto :goto_73
:sswitch_a1
move-object/from16 v0, p3
iget v8, v0, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->top:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int v7, v1, v6
iget v6, v10, Landroid/graphics/Rect;->right:I
iget v1, v10, Landroid/graphics/Rect;->top:I
invoke-virtual {v10}, Landroid/graphics/Rect;->height()I
move-result v14
div-int/lit8 v14, v14, 0x2
add-int/2addr v1, v14
goto :goto_73
:sswitch_bd
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->left:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int v8, v1, v6
move-object/from16 v0, p3
iget v7, v0, Landroid/graphics/Rect;->top:I
iget v1, v10, Landroid/graphics/Rect;->left:I
invoke-virtual {v10}, Landroid/graphics/Rect;->width()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int/2addr v6, v1
iget v1, v10, Landroid/graphics/Rect;->bottom:I
goto :goto_73
:sswitch_d9
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->right:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int v8, v1, v6
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->top:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int v7, v1, v6
iget v1, v10, Landroid/graphics/Rect;->left:I
invoke-virtual {v10}, Landroid/graphics/Rect;->width()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int/2addr v6, v1
iget v1, v10, Landroid/graphics/Rect;->top:I
invoke-virtual {v10}, Landroid/graphics/Rect;->height()I
move-result v14
div-int/lit8 v14, v14, 0x2
add-int/2addr v1, v14
goto/16 :goto_73
:cond_105
if-ltz v5, :cond_10e
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v1, v5
invoke-virtual {p0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->b(II)V
:goto_10d
return-void
:cond_10e
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V
goto :goto_10d
:cond_112
move v1, v2
move v2, v3
move v3, v5
goto/16 :goto_7f
nop
:sswitch_data_118
.sparse-switch
0x1 -> :sswitch_d9
0x2 -> :sswitch_d9
0x11 -> :sswitch_a1
0x21 -> :sswitch_bd
0x42 -> :sswitch_58
0x82 -> :sswitch_85
.end sparse-switch
.end method
.method public onGlobalLayout()V
.registers 1
return-void
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
const-class v0, Lit/sephiroth/android/library/widget/HListView;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
return-void
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.registers 3
invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
const-class v0, Lit/sephiroth/android/library/widget/HListView;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->a(IILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
.registers 5
invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HListView;->a(IILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->a(IILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method protected onMeasure(II)V
.registers 21
invoke-super/range {p0 .. p2}, Lit/sephiroth/android/library/widget/AbsHListView;->onMeasure(II)V
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v12
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v9
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v5
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v6
const/4 v8, 0x0
const/4 v7, 0x0
const/4 v4, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-nez v3, :cond_bd
const/4 v3, 0x0
:goto_1d
move-object/from16 v0, p0
iput v3, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
move-object/from16 v0, p0
iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-lez v3, :cond_76
if-eqz v12, :cond_2b
if-nez v9, :cond_76
:cond_2b
const-string v3, "HListView"
const-string v7, "let\'s measure a scrap child"
invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v7, v0, Lit/sephiroth/android/library/widget/HListView;->P:[Z
move-object/from16 v0, p0
invoke-virtual {v0, v3, v7}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;
move-result-object v10
const/4 v3, 0x0
move-object/from16 v0, p0
move/from16 v1, p2
invoke-direct {v0, v10, v3, v1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;II)V
invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I
move-result v8
invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I
move-result v7
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v11, 0xb
if-lt v3, v11, :cond_5d
const/4 v3, 0x0
invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I
move-result v4
invoke-static {v3, v4}, Lit/sephiroth/android/library/widget/HListView;->combineMeasuredStates(II)I
move-result v3
move v4, v3
:cond_5d
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/j;
invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I
if-ltz v3, :cond_c7
const/4 v3, 0x1
:goto_6c
if-eqz v3, :cond_76
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/j;
const/4 v11, -0x1
invoke-virtual {v3, v10, v11}, Lit/sephiroth/android/library/widget/j;->a(Landroid/view/View;I)V
:cond_76
move v3, v7
move v11, v8
if-nez v9, :cond_c9
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v6, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->bottom:I
add-int/2addr v4, v6
add-int/2addr v3, v4
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalScrollbarHeight()I
move-result v4
add-int/2addr v3, v4
move v4, v3
:goto_8e
if-nez v12, :cond_1d7
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v5, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->right:I
add-int/2addr v3, v5
add-int/2addr v3, v11
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I
move-result v5
mul-int/lit8 v5, v5, 0x2
add-int/2addr v3, v5
:goto_a5
const/high16 v5, -0x8000
if-ne v12, v5, :cond_b1
move-object/from16 v0, p0
move/from16 v1, p2
invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->e(II)I
move-result v3
:cond_b1
move-object/from16 v0, p0
invoke-virtual {v0, v3, v4}, Lit/sephiroth/android/library/widget/HListView;->setMeasuredDimension(II)V
move/from16 v0, p2
move-object/from16 v1, p0
iput v0, v1, Lit/sephiroth/android/library/widget/HListView;->v:I
return-void
:cond_bd
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I
move-result v3
goto/16 :goto_1d
:cond_c7
const/4 v3, 0x0
goto :goto_6c
:cond_c9
const/high16 v3, -0x8000
if-ne v9, v3, :cond_1ca
move-object/from16 v0, p0
iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-lez v3, :cond_1ca
move-object/from16 v0, p0
iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->av:I
if-ltz v3, :cond_1ca
move-object/from16 v0, p0
iget v7, v0, Lit/sephiroth/android/library/widget/HListView;->av:I
move-object/from16 v0, p0
iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->av:I
const-string v4, "HListView"
new-instance v8, Ljava/lang/StringBuilder;
const-string v9, "measureWithLargeChildren, from "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " to "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
move-object/from16 v0, p0
iget-object v13, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-nez v13, :cond_12e
const/4 v3, 0x2
new-array v3, v3, [I
const/4 v4, 0x0
move-object/from16 v0, p0
iget-object v6, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v7, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->right:I
add-int/2addr v6, v7
aput v6, v3, v4
const/4 v4, 0x1
move-object/from16 v0, p0
iget-object v6, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v7, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->bottom:I
add-int/2addr v6, v7
aput v6, v3, v4
:goto_128
const/4 v4, 0x1
aget v3, v3, v4
move v4, v3
goto/16 :goto_8e
:cond_12e
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v8, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->right:I
add-int v14, v4, v8
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v8, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->bottom:I
add-int v15, v4, v8
move-object/from16 v0, p0
iget v4, v0, Lit/sephiroth/android/library/widget/HListView;->au:I
if-lez v4, :cond_1ac
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->at:Landroid/graphics/drawable/Drawable;
if-eqz v4, :cond_1ac
move-object/from16 v0, p0
iget v4, v0, Lit/sephiroth/android/library/widget/HListView;->au:I
move v10, v4
:goto_15b
const/4 v9, 0x0
const/4 v8, 0x0
const/4 v4, -0x1
if-ne v3, v4, :cond_1af
invoke-interface {v13}, Landroid/widget/ListAdapter;->getCount()I
move-result v3
add-int/lit8 v3, v3, -0x1
move v4, v3
:goto_167
move-object/from16 v0, p0
iget-object v13, v0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/j;
move-object/from16 v0, p0
iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView;->P:[Z
move-object/from16 v16, v0
:goto_171
if-gt v7, v4, :cond_1b3
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v7, v1}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;
move-result-object v17
move-object/from16 v0, p0
move-object/from16 v1, v17
move/from16 v2, p2
invoke-direct {v0, v1, v7, v2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;II)V
invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I
if-ltz v3, :cond_1b1
const/4 v3, 0x1
:goto_18f
if-eqz v3, :cond_197
const/4 v3, -0x1
move-object/from16 v0, v17
invoke-virtual {v13, v0, v3}, Lit/sephiroth/android/library/widget/j;->a(Landroid/view/View;I)V
:cond_197
invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
add-int/2addr v3, v10
invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I
move-result v9
invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I
move-result v8
add-int/lit8 v3, v7, 0x1
move v7, v3
goto :goto_171
:cond_1ac
const/4 v4, 0x0
move v10, v4
goto :goto_15b
:cond_1af
move v4, v3
goto :goto_167
:cond_1b1
const/4 v3, 0x0
goto :goto_18f
:cond_1b3
add-int v4, v14, v9
add-int v7, v15, v8
const/4 v3, 0x2
new-array v3, v3, [I
const/4 v8, 0x0
invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
move-result v4
aput v4, v3, v8
const/4 v4, 0x1
invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I
move-result v6
aput v6, v3, v4
goto/16 :goto_128
:cond_1ca
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v7, 0xb
if-lt v3, v7, :cond_1da
const/high16 v3, -0x100
and-int/2addr v3, v4
or-int/2addr v3, v6
move v4, v3
goto/16 :goto_8e
:cond_1d7
move v3, v5
goto/16 :goto_a5
:cond_1da
move v4, v6
goto/16 :goto_8e
.end method
.method protected onSizeChanged(IIII)V
.registers 10
const/4 v4, 0x0
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v0
if-lez v0, :cond_3c
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_3c
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->indexOfChild(Landroid/view/View;)I
move-result v2
add-int/2addr v1, v2
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingLeft()I
move-result v3
sub-int v3, p1, v3
sub-int/2addr v2, v3
invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I
move-result v2
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
sub-int/2addr v0, v2
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/v;
if-nez v2, :cond_33
new-instance v2, Lit/sephiroth/android/library/widget/v;
invoke-direct {v2, p0, v4}, Lit/sephiroth/android/library/widget/v;-><init>(Lit/sephiroth/android/library/widget/HListView;B)V
iput-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/v;
:cond_33
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/v;
invoke-virtual {v2, v1, v0}, Lit/sephiroth/android/library/widget/v;->a(II)Lit/sephiroth/android/library/widget/v;
move-result-object v0
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->post(Ljava/lang/Runnable;)Z
:cond_3c
invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->onSizeChanged(IIII)V
return-void
.end method
.method public final bridge synthetic q()Landroid/widget/Adapter;
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
return-object v0
.end method
.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
.registers 15
const/4 v2, 0x1
const/4 v3, 0x0
iget v5, p2, Landroid/graphics/Rect;->left:I
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v1
invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V
invoke-virtual {p1}, Landroid/view/View;->getScrollX()I
move-result v0
neg-int v0, v0
invoke-virtual {p1}, Landroid/view/View;->getScrollY()I
move-result v1
neg-int v1, v1
invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v6
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v0
add-int v1, v0, v6
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I
move-result v7
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v4
iget-object v8, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->left:I
add-int/2addr v4, v8
iget v8, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-gtz v8, :cond_41
invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v8
invoke-virtual {v8}, Landroid/view/View;->getLeft()I
move-result v8
if-le v8, v4, :cond_c6
:cond_41
move v4, v2
:goto_42
if-eqz v4, :cond_4b
iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-gtz v4, :cond_4a
if-le v5, v7, :cond_4b
:cond_4a
add-int/2addr v0, v7
:cond_4b
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v4
add-int/lit8 v4, v4, -0x1
invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4}, Landroid/view/View;->getRight()I
move-result v5
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v4
add-int/lit8 v8, v4, -0x1
invoke-virtual {p0, v8}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v8
invoke-virtual {v8}, Landroid/view/View;->getRight()I
move-result v8
iget v9, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v4, v9
add-int/lit8 v4, v4, -0x1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v9
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v10
add-int/2addr v9, v10
iget-object v10, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v10, v10, Landroid/graphics/Rect;->right:I
sub-int/2addr v9, v10
iget v10, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v10, v10, -0x1
if-lt v4, v10, :cond_82
if-ge v8, v9, :cond_c9
:cond_82
move v4, v2
:goto_83
if-eqz v4, :cond_94
iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
iget v8, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v8, v8, -0x1
if-lt v4, v8, :cond_93
iget v4, p2, Landroid/graphics/Rect;->right:I
sub-int v8, v5, v7
if-ge v4, v8, :cond_94
:cond_93
sub-int/2addr v1, v7
:cond_94
iget v4, p2, Landroid/graphics/Rect;->right:I
if-le v4, v1, :cond_d1
iget v4, p2, Landroid/graphics/Rect;->left:I
if-le v4, v0, :cond_d1
invoke-virtual {p2}, Landroid/graphics/Rect;->width()I
move-result v4
if-le v4, v6, :cond_cb
iget v4, p2, Landroid/graphics/Rect;->left:I
sub-int v0, v4, v0
add-int/lit8 v0, v0, 0x0
:goto_a8
sub-int v1, v5, v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
move v1, v0
:goto_af
if-eqz v1, :cond_fb
move v0, v2
:goto_b2
if-eqz v0, :cond_c5
neg-int v1, v1
invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->r(I)V
const/4 v1, -0x1
invoke-virtual {p0, v1, p1}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v1
iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->J:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
:cond_c5
return v0
:cond_c6
move v4, v3
goto/16 :goto_42
:cond_c9
move v4, v3
goto :goto_83
:cond_cb
iget v0, p2, Landroid/graphics/Rect;->right:I
sub-int/2addr v0, v1
add-int/lit8 v0, v0, 0x0
goto :goto_a8
:cond_d1
iget v4, p2, Landroid/graphics/Rect;->left:I
if-ge v4, v0, :cond_fd
iget v4, p2, Landroid/graphics/Rect;->right:I
if-ge v4, v1, :cond_fd
invoke-virtual {p2}, Landroid/graphics/Rect;->width()I
move-result v4
if-le v4, v6, :cond_f4
iget v4, p2, Landroid/graphics/Rect;->right:I
sub-int/2addr v1, v4
rsub-int/lit8 v1, v1, 0x0
:goto_e4
invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4}, Landroid/view/View;->getLeft()I
move-result v4
sub-int v0, v4, v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
move v1, v0
goto :goto_af
:cond_f4
iget v1, p2, Landroid/graphics/Rect;->left:I
sub-int v1, v0, v1
rsub-int/lit8 v1, v1, 0x0
goto :goto_e4
:cond_fb
move v0, v3
goto :goto_b2
:cond_fd
move v1, v3
goto :goto_af
.end method