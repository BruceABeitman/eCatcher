.class public Lit/sephiroth/android/library/widget/HListView;
.super Lit/sephiroth/android/library/widget/AbsHListView;
.source "HListView.java"
.field private aA:Z
.field private aB:Z
.field private aC:Z
.field private aD:Z
.field private aE:Z
.field private aF:Z
.field private final aG:Landroid/graphics/Rect;
.field private aH:Landroid/graphics/Paint;
.field private final aI:Lit/sephiroth/android/library/widget/ak;
.field private aJ:Lit/sephiroth/android/library/widget/am;
.field  at:Landroid/graphics/drawable/Drawable;
.field  au:I
.field  av:I
.field  aw:Landroid/graphics/drawable/Drawable;
.field  ax:Landroid/graphics/drawable/Drawable;
.field private ay:Ljava/util/ArrayList;
.field private az:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lit/sephiroth/android/library/b;->hlv_listViewStyle:I
invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 14
const/4 v0, -0x1
const/4 v3, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z
iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
new-instance v4, Lit/sephiroth/android/library/widget/ak;
invoke-direct {v4, v2}, Lit/sephiroth/android/library/widget/ak;-><init>(B)V
iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/ak;
invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v4
sget-object v5, Lit/sephiroth/android/library/d;->HListView:[I
invoke-virtual {v4, p2, v5, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v8
if-eqz v8, :cond_84
invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;
move-result-object v7
invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v6
const/4 v3, 0x5
invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v5
const/4 v3, 0x6
invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
const/4 v3, 0x2
invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v3
const/4 v2, 0x3
invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v2
const/4 v9, 0x4
invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
const/4 v9, 0x7
invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInteger(II)I
move-result v0
invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
:goto_5c
if-eqz v7, :cond_69
new-instance v8, Landroid/widget/ArrayAdapter;
const v9, 0x1090003
invoke-direct {v8, p1, v9, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
invoke-virtual {p0, v8}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V
:cond_69
if-eqz v6, :cond_6e
invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
:cond_6e
if-eqz v5, :cond_73
invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
:cond_73
if-eqz v4, :cond_78
invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
:cond_78
if-eqz v3, :cond_7d
invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V
:cond_7d
iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->aC:Z
iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aD:Z
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->av:I
return-void
:cond_84
move-object v4, v3
move-object v5, v3
move-object v6, v3
move-object v7, v3
move v3, v2
move v2, v1
goto :goto_5c
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
invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->h(I)V
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
invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->i(I)V
goto :goto_40
.end method
.method private a(IIZIZ)Landroid/view/View;
.registers 14
const/4 v0, 0x0
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->ai:Z
if-nez v1, :cond_25
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/p;
iget v2, v1, Lit/sephiroth/android/library/widget/p;->b:I
sub-int v2, p1, v2
iget-object v3, v1, Lit/sephiroth/android/library/widget/p;->c:[Landroid/view/View;
if-ltz v2, :cond_23
array-length v1, v3
if-ge v2, v1, :cond_23
aget-object v1, v3, v2
aput-object v0, v3, v2
:goto_16
if-eqz v1, :cond_25
const/4 v7, 0x1
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move v6, p5
invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V
:goto_22
return-object v1
:cond_23
move-object v1, v0
goto :goto_16
:cond_25
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
goto :goto_22
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
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->p()V
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
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->p()V
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
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->p()V
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
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->p()V
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
check-cast v0, Lit/sephiroth/android/library/widget/i;
if-nez v0, :cond_12
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/i;
invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_12
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v1
iput v1, v0, Lit/sephiroth/android/library/widget/i;->a:I
const/4 v1, 0x1
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/i;->c:Z
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
add-int/2addr v1, v2
iget v2, v0, Lit/sephiroth/android/library/widget/i;->height:I
invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v1
iget v0, v0, Lit/sephiroth/android/library/widget/i;->width:I
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
if-eqz p6, :cond_e1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->f()Z
move-result v0
if-eqz v0, :cond_e1
const/4 v0, 0x1
move v1, v0
:goto_a
invoke-virtual {p1}, Landroid/view/View;->isSelected()Z
move-result v0
if-eq v1, v0, :cond_e5
const/4 v0, 0x1
move v2, v0
:goto_12
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->F:I
if-lez v0, :cond_e9
const/4 v3, 0x3
if-ge v0, v3, :cond_e9
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->A:I
if-ne v0, p2, :cond_e9
const/4 v0, 0x1
move v3, v0
:goto_1f
invoke-virtual {p1}, Landroid/view/View;->isPressed()Z
move-result v0
if-eq v3, v0, :cond_ed
const/4 v0, 0x1
move v6, v0
:goto_27
if-eqz p7, :cond_31
if-nez v2, :cond_31
invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z
move-result v0
if-eqz v0, :cond_f1
:cond_31
const/4 v0, 0x1
move v4, v0
:goto_33
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/i;
if-nez v0, :cond_14e
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/i;
move-object v5, v0
:goto_42
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v0
iput v0, v5, Lit/sephiroth/android/library/widget/i;->a:I
if-eqz p7, :cond_50
iget-boolean v0, v5, Lit/sephiroth/android/library/widget/i;->c:Z
if-eqz v0, :cond_59
:cond_50
iget-boolean v0, v5, Lit/sephiroth/android/library/widget/i;->b:Z
if-eqz v0, :cond_f8
iget v0, v5, Lit/sephiroth/android/library/widget/i;->a:I
const/4 v7, -0x2
if-ne v0, v7, :cond_f8
:cond_59
if-eqz p4, :cond_f5
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
if-eqz v0, :cond_8c
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/support/v4/b/o;
if-eqz v0, :cond_8c
instance-of v0, p1, Landroid/widget/Checkable;
if-eqz v0, :cond_10e
move-object v0, p1
check-cast v0, Landroid/widget/Checkable;
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/support/v4/b/o;
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v1, p2, v2}, Landroid/support/v4/b/o;->a(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V
:cond_8c
:goto_8c
if-eqz v4, :cond_132
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
add-int/2addr v1, v2
iget v2, v5, Lit/sephiroth/android/library/widget/i;->height:I
invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v1
iget v0, v5, Lit/sephiroth/android/library/widget/i;->width:I
if-lez v0, :cond_12a
const/high16 v2, 0x4000
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
:goto_a9
invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V
:goto_ac
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
if-eqz p4, :cond_137
:goto_b6
if-eqz v4, :cond_13a
add-int/2addr v1, p5
add-int/2addr v0, p3
invoke-virtual {p1, p3, p5, v0, v1}, Landroid/view/View;->layout(IIII)V
:goto_bd
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->y:Z
if-eqz v0, :cond_cb
invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z
move-result v0
if-nez v0, :cond_cb
const/4 v0, 0x1
invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
:cond_cb
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_e0
if-eqz p7, :cond_e0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/i;
iget v0, v0, Lit/sephiroth/android/library/widget/i;->d:I
if-eq v0, p2, :cond_e0
invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V
:cond_e0
return-void
:cond_e1
const/4 v0, 0x0
move v1, v0
goto/16 :goto_a
:cond_e5
const/4 v0, 0x0
move v2, v0
goto/16 :goto_12
:cond_e9
const/4 v0, 0x0
move v3, v0
goto/16 :goto_1f
:cond_ed
const/4 v0, 0x0
move v6, v0
goto/16 :goto_27
:cond_f1
const/4 v0, 0x0
move v4, v0
goto/16 :goto_33
:cond_f5
const/4 v0, 0x0
goto/16 :goto_5c
:cond_f8
const/4 v0, 0x0
iput-boolean v0, v5, Lit/sephiroth/android/library/widget/i;->c:Z
iget v0, v5, Lit/sephiroth/android/library/widget/i;->a:I
const/4 v7, -0x2
if-ne v0, v7, :cond_103
const/4 v0, 0x1
iput-boolean v0, v5, Lit/sephiroth/android/library/widget/i;->b:Z
:cond_103
if-eqz p4, :cond_10c
const/4 v0, -0x1
:goto_106
const/4 v7, 0x1
invoke-virtual {p0, p1, v0, v5, v7}, Lit/sephiroth/android/library/widget/HListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
goto/16 :goto_5f
:cond_10c
const/4 v0, 0x0
goto :goto_106
:cond_10e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_8c
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/support/v4/b/o;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, p2, v1}, Landroid/support/v4/b/o;->a(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V
goto/16 :goto_8c
:cond_12a
const/4 v0, 0x0
const/4 v2, 0x0
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
goto/16 :goto_a9
:cond_132
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->cleanupLayoutState(Landroid/view/View;)V
goto/16 :goto_ac
:cond_137
sub-int/2addr p3, v0
goto/16 :goto_b6
:cond_13a
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
sub-int v0, p3, v0
invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v0
sub-int v0, p5, v0
invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V
goto/16 :goto_bd
:cond_14e
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
check-cast v0, Lit/sephiroth/android/library/widget/al;
iget-object v0, v0, Lit/sephiroth/android/library/widget/al;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/i;
if-eqz v0, :cond_1c
iput-boolean v2, v0, Lit/sephiroth/android/library/widget/i;->b:Z
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
:cond_f
:goto_f
return v1
:cond_10
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->ai:Z
if-eqz v0, :cond_17
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->d()V
:cond_17
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xb
if-lt v0, v3, :cond_f
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v4
if-eq v4, v2, :cond_26
sparse-switch p1, :sswitch_data_188
:cond_26
move v0, v1
:goto_27
:cond_27
if-eqz v0, :cond_171
move v1, v2
goto :goto_f
:sswitch_2b
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_45
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_27
move v3, p2
:goto_38
add-int/lit8 p2, v3, -0x1
if-lez v3, :cond_27
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->m(I)Z
move-result v3
if-eqz v3, :cond_27
move v0, v2
move v3, p2
goto :goto_38
:cond_45
invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_57
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->k(I)Z
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
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_27
move v3, p2
:goto_68
add-int/lit8 p2, v3, -0x1
if-lez v3, :cond_27
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->m(I)Z
move-result v3
if-eqz v3, :cond_27
move v0, v2
move v3, p2
goto :goto_68
:cond_75
invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_87
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->k(I)Z
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
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->l(I)Z
move-result v0
goto :goto_27
:sswitch_96
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_26
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->l(I)Z
move-result v0
goto :goto_27
:sswitch_a1
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_27
invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v3
if-nez v3, :cond_27
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v3
if-lez v3, :cond_27
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->g()V
move v0, v2
goto/16 :goto_27
:sswitch_bf
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_d1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_ce
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->j(I)Z
:cond_ce
:goto_ce
move v0, v2
goto/16 :goto_27
:cond_d1
invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z
move-result v0
if-eqz v0, :cond_ce
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_ce
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->j(I)Z
goto :goto_ce
:sswitch_e1
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_f9
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_f3
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->j(I)Z
move-result v0
if-eqz v0, :cond_f6
:cond_f3
move v0, v2
goto/16 :goto_27
:cond_f6
move v0, v1
goto/16 :goto_27
:cond_f9
invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_10b
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->k(I)Z
move-result v0
if-eqz v0, :cond_10e
:cond_10b
move v0, v2
goto/16 :goto_27
:cond_10e
move v0, v1
goto/16 :goto_27
:sswitch_111
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_129
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_123
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->j(I)Z
move-result v0
if-eqz v0, :cond_126
:cond_123
move v0, v2
goto/16 :goto_27
:cond_126
move v0, v1
goto/16 :goto_27
:cond_129
invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_13b
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->k(I)Z
move-result v0
if-eqz v0, :cond_13e
:cond_13b
move v0, v2
goto/16 :goto_27
:cond_13e
move v0, v1
goto/16 :goto_27
:sswitch_141
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_153
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->k(I)Z
move-result v0
if-eqz v0, :cond_156
:cond_153
move v0, v2
goto/16 :goto_27
:cond_156
move v0, v1
goto/16 :goto_27
:sswitch_159
invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->j()Z
move-result v0
if-nez v0, :cond_16b
invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->k(I)Z
move-result v0
if-eqz v0, :cond_16e
:cond_16b
move v0, v2
goto/16 :goto_27
:cond_16e
move v0, v1
goto/16 :goto_27
:cond_171
packed-switch v4, :pswitch_data_1b6
goto/16 :goto_f
:pswitch_176
invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v1
goto/16 :goto_f
:pswitch_17c
invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v1
goto/16 :goto_f
:pswitch_182
invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z
move-result v1
goto/16 :goto_f
:sswitch_data_188
.sparse-switch
0x13 -> :sswitch_8b
0x14 -> :sswitch_96
0x15 -> :sswitch_2b
0x16 -> :sswitch_5b
0x17 -> :sswitch_a1
0x3e -> :sswitch_bf
0x42 -> :sswitch_a1
0x5c -> :sswitch_e1
0x5d -> :sswitch_111
0x7a -> :sswitch_141
0x7b -> :sswitch_159
.end sparse-switch
:pswitch_data_1b6
.packed-switch 0x0
:pswitch_176
:pswitch_17c
:pswitch_182
.end packed-switch
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
check-cast v0, Lit/sephiroth/android/library/widget/al;
iget-object v0, v0, Lit/sephiroth/android/library/widget/al;->a:Landroid/view/View;
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
check-cast v0, Lit/sephiroth/android/library/widget/al;
iget-object v0, v0, Lit/sephiroth/android/library/widget/al;->a:Landroid/view/View;
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
.method private e(II)Landroid/view/View;
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
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->p()V
add-int/lit8 v2, p1, 0x1
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v4
add-int/2addr v3, v4
invoke-direct {p0, v2, v3}, Lit/sephiroth/android/library/widget/HListView;->c(II)Landroid/view/View;
move-result-object v2
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v3
if-lez v3, :cond_3b
invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->h(I)V
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
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->p()V
add-int/lit8 v1, p1, -0x1
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v4
sub-int v3, v4, v3
invoke-direct {p0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
move-result-object v1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v3
if-lez v3, :cond_3b
invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->i(I)V
goto :goto_3b
:cond_64
if-eqz v1, :cond_68
move-object v0, v1
goto :goto_3d
:cond_68
move-object v0, v2
goto :goto_3d
.end method
.method private g(I)Landroid/view/View;
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
.method private getArrowScrollPreviewLength()I
.registers 3
const/4 v0, 0x2
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
return v0
.end method
.method private h(I)V
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
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->d(I)V
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-lez v0, :cond_62
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/lit8 v0, v0, -0x1
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
sub-int/2addr v1, v2
invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->d(II)Landroid/view/View;
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->p()V
:cond_62
return-void
.end method
.method private i(I)V
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
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->d(I)V
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v0, v0, -0x1
if-ge v4, v0, :cond_60
add-int/lit8 v0, v4, 0x1
invoke-virtual {v1}, Landroid/view/View;->getRight()I
move-result v1
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
add-int/2addr v1, v2
invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->c(II)Landroid/view/View;
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->p()V
:goto_60
:cond_60
return-void
:cond_61
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v0, v0, -0x1
if-ne v4, v0, :cond_60
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->p()V
goto :goto_60
.end method
.method private j(I)Z
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
invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
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
.method private k(I)Z
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
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
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
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
goto :goto_18
:cond_47
move v0, v1
goto :goto_18
.end method
.method private l(I)Z
.registers 5
const/16 v0, 0x21
if-eq p1, v0, :cond_10
const/16 v0, 0x82
if-eq p1, v0, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"
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
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getSelectedView()Landroid/view/View;
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
.method private m(I)Z
.registers 14
const/4 v0, 0x1
:try_start_1
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->ae:Z
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v0
if-lez v0, :cond_309
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getSelectedView()Landroid/view/View;
move-result-object v3
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->n(I)I
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
if-ne p1, v1, :cond_f5
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
if-ge v2, v1, :cond_312
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I
move-result v1
sub-int v1, v5, v1
:goto_45
invoke-virtual {v7}, Landroid/view/View;->getRight()I
move-result v2
if-gt v2, v1, :cond_bd
const/4 v2, 0x0
:goto_4c
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
if-eqz v1, :cond_234
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getSelectedView()Landroid/view/View;
move-result-object v5
if-eqz v5, :cond_146
invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z
move-result v1
if-eqz v1, :cond_146
invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;
move-result-object v1
invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
move-result-object v5
invoke-virtual {v5, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
move-result-object v1
move-object v5, v1
:goto_69
if-eqz v5, :cond_230
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v6
const/4 v1, 0x0
:goto_70
if-ge v1, v6, :cond_1b9
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v7
invoke-direct {p0, v5, v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z
move-result v7
if-eqz v7, :cond_1b5
iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v6, v1
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
const/4 v7, -0x1
if-eq v1, v7, :cond_1c1
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-eq v6, v1, :cond_1c1
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->n(I)I
move-result v1
const/4 v7, -0x1
if-eq v1, v7, :cond_1c1
const/16 v7, 0x82
if-ne p1, v7, :cond_95
if-lt v1, v6, :cond_9b
:cond_95
const/16 v7, 0x21
if-ne p1, v7, :cond_1c1
if-le v1, v6, :cond_1c1
:cond_9b
const/4 v1, 0x0
move-object v9, v1
:goto_9d
if-eqz v9, :cond_a3
iget v4, v9, Lit/sephiroth/android/library/widget/ak;->a:I
iget v2, v9, Lit/sephiroth/android/library/widget/ak;->b:I
:cond_a3
if-eqz v9, :cond_238
const/4 v1, 0x1
:goto_a6
const/4 v5, -0x1
if-eq v4, v5, :cond_30b
if-eqz v9, :cond_23b
const/4 v0, 0x1
move v8, v0
:goto_ad
const/4 v0, -0x1
if-ne v4, v0, :cond_23f
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "newSelectedPosition needs to be valid"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_b8
:try_end_b8
.catchall {:try_start_1 .. :try_end_b8} :catchall_b8
move-exception v0
const/4 v1, 0x0
iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->ae:Z
throw v0
:cond_bd
const/4 v2, -0x1
if-eq v4, v2, :cond_cf
:try_start_c0
invoke-virtual {v7}, Landroid/view/View;->getLeft()I
move-result v2
sub-int v2, v1, v2
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I
move-result v8
if-lt v2, v8, :cond_cf
const/4 v2, 0x0
goto/16 :goto_4c
:cond_cf
invoke-virtual {v7}, Landroid/view/View;->getRight()I
move-result v2
sub-int v1, v2, v1
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v2, v6
iget v7, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-ne v2, v7, :cond_eb
add-int/lit8 v2, v6, -0x1
invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v2
sub-int/2addr v2, v5
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
:cond_eb
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v2
goto/16 :goto_4c
:cond_f5
const/4 v1, 0x0
const/4 v5, -0x1
if-eq v4, v5, :cond_fd
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
sub-int v1, v4, v1
:cond_fd
iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v5, v1
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v6
if-lez v5, :cond_30f
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I
move-result v1
add-int/2addr v1, v2
:goto_10b
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v5
if-lt v5, v1, :cond_114
const/4 v2, 0x0
goto/16 :goto_4c
:cond_114
const/4 v5, -0x1
if-eq v4, v5, :cond_125
invoke-virtual {v6}, Landroid/view/View;->getRight()I
move-result v5
sub-int/2addr v5, v1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I
move-result v7
if-lt v5, v7, :cond_125
const/4 v2, 0x0
goto/16 :goto_4c
:cond_125
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v5
sub-int/2addr v1, v5
iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-nez v5, :cond_13c
const/4 v5, 0x0
invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getLeft()I
move-result v5
sub-int/2addr v2, v5
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
:cond_13c
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v2
goto/16 :goto_4c
:cond_146
const/16 v1, 0x82
if-ne p1, v1, :cond_17e
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
if-lez v1, :cond_17a
const/4 v1, 0x1
:goto_14f
iget-object v6, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
if-eqz v1, :cond_17c
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I
move-result v1
:goto_159
add-int/2addr v1, v6
if-eqz v5, :cond_166
invoke-virtual {v5}, Landroid/view/View;->getLeft()I
move-result v6
if-le v6, v1, :cond_166
invoke-virtual {v5}, Landroid/view/View;->getLeft()I
move-result v1
:cond_166
iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v5, v1, v6, v1, v7}, Landroid/graphics/Rect;->set(IIII)V
:goto_16d
invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
move-result-object v1
iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {v1, p0, v5, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
move-result-object v1
move-object v5, v1
goto/16 :goto_69
:cond_17a
const/4 v1, 0x0
goto :goto_14f
:cond_17c
const/4 v1, 0x0
goto :goto_159
:cond_17e
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v6
add-int/2addr v1, v6
add-int/lit8 v1, v1, -0x1
iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-ge v1, v6, :cond_1b1
const/4 v1, 0x1
:goto_18c
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v6
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->right:I
sub-int/2addr v6, v7
if-eqz v1, :cond_1b3
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I
move-result v1
:goto_19b
sub-int v1, v6, v1
if-eqz v5, :cond_1a9
invoke-virtual {v5}, Landroid/view/View;->getRight()I
move-result v6
if-ge v6, v1, :cond_1a9
invoke-virtual {v5}, Landroid/view/View;->getRight()I
move-result v1
:cond_1a9
iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v5, v1, v6, v1, v7}, Landroid/graphics/Rect;->set(IIII)V
goto :goto_16d
:cond_1b1
const/4 v1, 0x0
goto :goto_18c
:cond_1b3
const/4 v1, 0x0
goto :goto_19b
:cond_1b5
add-int/lit8 v1, v1, 0x1
goto/16 :goto_70
:cond_1b9
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "newFocus is not a child of any of the children of the list!"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c1
const/4 v1, 0x0
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {v5, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual {p0, v5, v7}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
const/16 v7, 0x21
if-ne p1, v7, :cond_1fd
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->left:I
iget-object v8, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->left:I
if-ge v7, v8, :cond_1ea
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v7
if-lez v6, :cond_1ea
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I
move-result v7
add-int/2addr v1, v7
:cond_1ea
:goto_1ea
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I
move-result v7
if-ge v1, v7, :cond_21d
invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z
iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/ak;
invoke-virtual {v5, v6, v1}, Lit/sephiroth/android/library/widget/ak;->a(II)V
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/ak;
move-object v9, v1
goto/16 :goto_9d
:cond_1fd
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v7
iget-object v8, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->right:I
sub-int/2addr v7, v8
iget-object v8, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->bottom:I
if-le v8, v7, :cond_1ea
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
sub-int/2addr v1, v7
iget v7, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v7, v7, -0x1
if-ge v6, v7, :cond_1ea
invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I
move-result v7
add-int/2addr v1, v7
goto :goto_1ea
:cond_21d
invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->c(Landroid/view/View;)I
move-result v1
if-ge v1, v7, :cond_230
invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/ak;
invoke-virtual {v1, v6, v7}, Lit/sephiroth/android/library/widget/ak;->a(II)V
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/ak;
move-object v9, v1
goto/16 :goto_9d
:cond_230
const/4 v1, 0x0
move-object v9, v1
goto/16 :goto_9d
:cond_234
const/4 v1, 0x0
move-object v9, v1
goto/16 :goto_9d
:cond_238
const/4 v1, 0x0
goto/16 :goto_a6
:cond_23b
const/4 v0, 0x0
move v8, v0
goto/16 :goto_ad
:cond_23f
const/4 v0, 0x0
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
sub-int/2addr v1, v5
iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
sub-int v5, v4, v5
const/16 v6, 0x21
if-ne p1, v6, :cond_2f7
invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v6
const/4 v0, 0x1
move-object v7, v6
move-object v6, v3
move v3, v1
move v1, v0
:goto_256
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v10
if-eqz v7, :cond_267
if-nez v8, :cond_301
if-eqz v1, :cond_301
const/4 v0, 0x1
:goto_261
invoke-virtual {v7, v0}, Landroid/view/View;->setSelected(Z)V
invoke-direct {p0, v7, v5, v10}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;II)V
:cond_267
if-eqz v6, :cond_274
if-nez v8, :cond_304
if-nez v1, :cond_304
const/4 v0, 0x1
:goto_26e
invoke-virtual {v6, v0}, Landroid/view/View;->setSelected(Z)V
invoke-direct {p0, v6, v3, v10}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;II)V
:cond_274
invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V
invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getSelectedView()Landroid/view/View;
move-result-object v0
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
if-eqz v1, :cond_28d
if-nez v9, :cond_28d
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_28d
invoke-virtual {v1}, Landroid/view/View;->clearFocus()V
:cond_28d
const/4 v1, 0x1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->m()V
move v3, v4
:goto_292
if-lez v2, :cond_29d
const/16 v1, 0x21
if-ne p1, v1, :cond_307
move v1, v2
:goto_299
invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->o(I)V
const/4 v1, 0x1
:cond_29d
iget-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
if-eqz v2, :cond_2be
if-nez v9, :cond_2be
if-eqz v0, :cond_2be
invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z
move-result v2
if-eqz v2, :cond_2be
invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;
move-result-object v2
invoke-direct {p0, v2, p0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z
move-result v5
if-eqz v5, :cond_2bb
invoke-direct {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->c(Landroid/view/View;)I
move-result v5
if-lez v5, :cond_2be
:cond_2bb
invoke-virtual {v2}, Landroid/view/View;->clearFocus()V
:cond_2be
const/4 v2, -0x1
if-ne v4, v2, :cond_2d0
if-eqz v0, :cond_2d0
invoke-direct {p0, v0, p0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z
move-result v2
if-nez v2, :cond_2d0
const/4 v0, 0x0
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->h()V
const/4 v2, -0x1
iput v2, p0, Lit/sephiroth/android/library/widget/HListView;->M:I
:cond_2d0
if-eqz v1, :cond_309
if-eqz v0, :cond_2dd
invoke-virtual {p0, v3, v0}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->J:I
:cond_2dd
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z
move-result v0
if-nez v0, :cond_2e6
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
:cond_2e6
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
const/4 v0, 0x1
:goto_2ea
if-eqz v0, :cond_2f3
invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I
move-result v1
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->playSoundEffect(I)V
:try_end_2f3
.catchall {:try_start_c0 .. :try_end_2f3} :catchall_b8
:cond_2f3
const/4 v1, 0x0
iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->ae:Z
return v0
:cond_2f7
:try_start_2f7
invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
:try_end_2fa
.catchall {:try_start_2f7 .. :try_end_2fa} :catchall_b8
move-result-object v6
move-object v7, v3
move v3, v5
move v5, v1
move v1, v0
goto/16 :goto_256
:cond_301
const/4 v0, 0x0
goto/16 :goto_261
:cond_304
const/4 v0, 0x0
goto/16 :goto_26e
:cond_307
neg-int v1, v2
goto :goto_299
:cond_309
const/4 v0, 0x0
goto :goto_2ea
:cond_30b
move v11, v0
move-object v0, v3
move v3, v11
goto :goto_292
:cond_30f
move v1, v2
goto/16 :goto_10b
:cond_312
move v1, v5
goto/16 :goto_45
.end method
.method private n(I)I
.registers 8
const/4 v3, -0x1
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
const/16 v0, 0x82
if-ne p1, v0, :cond_3d
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
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLastVisiblePosition()I
move-result v2
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v4
:goto_26
if-gt v0, v2, :cond_7d
invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v5
if-eqz v5, :cond_3a
sub-int v5, v0, v1
invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getVisibility()I
move-result v5
if-eqz v5, :cond_18
:cond_3a
add-int/lit8 v0, v0, 0x1
goto :goto_26
:cond_3d
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v0
add-int/2addr v0, v1
add-int/lit8 v0, v0, -0x1
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-eq v2, v3, :cond_58
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
add-int/lit8 v2, v2, -0x1
:goto_4c
if-ltz v2, :cond_56
iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I
move-result v4
if-lt v2, v4, :cond_60
:cond_56
move v0, v3
goto :goto_18
:cond_58
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v2
add-int/2addr v2, v1
add-int/lit8 v2, v2, -0x1
goto :goto_4c
:cond_60
if-le v2, v0, :cond_7f
:goto_62
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v2
:goto_66
if-lt v0, v1, :cond_7d
invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v4
if-eqz v4, :cond_7a
sub-int v4, v0, v1
invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v4
if-eqz v4, :cond_18
:cond_7a
add-int/lit8 v0, v0, -0x1
goto :goto_66
:cond_7d
move v0, v3
goto :goto_18
:cond_7f
move v0, v2
goto :goto_62
.end method
.method private o(I)V
.registers 14
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->d(I)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v0
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
sub-int v9, v0, v1
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v10, v0, Landroid/graphics/Rect;->left:I
iget-object v11, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/p;
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
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->d(I)V
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
check-cast v0, Lit/sephiroth/android/library/widget/i;
iget v0, v0, Lit/sephiroth/android/library/widget/i;->a:I
if-ltz v0, :cond_92
const/4 v0, 0x1
:goto_7b
if-eqz v0, :cond_94
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->detachViewFromParent(Landroid/view/View;)V
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
invoke-virtual {v11, v1, v0}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V
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
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->d(I)V
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
check-cast v0, Lit/sephiroth/android/library/widget/i;
iget v0, v0, Lit/sephiroth/android/library/widget/i;->a:I
if-ltz v0, :cond_111
const/4 v0, 0x1
:goto_fd
if-eqz v0, :cond_113
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->detachViewFromParent(Landroid/view/View;)V
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v0, v2
invoke-virtual {v11, v1, v0}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V
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
.method private p()V
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
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->d(I)V
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
.method  a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
.registers 5
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->at:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
return-void
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
invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->h(I)V
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
invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->i(I)V
goto :goto_23
:cond_40
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I
move-result v0
add-int/lit8 v0, v0, 0x0
goto :goto_31
.end method
.method public final b(I)V
.registers 2
invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V
return-void
.end method
.method protected final c()V
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-static {v0}, Lit/sephiroth/android/library/widget/HListView;->a(Ljava/util/ArrayList;)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
invoke-static {v0}, Lit/sephiroth/android/library/widget/HListView;->a(Ljava/util/ArrayList;)V
invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->c()V
const/4 v0, 0x0
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->h:I
return-void
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
.registers 18
move-object/from16 v0, p0
iget-boolean v12, v0, Lit/sephiroth/android/library/widget/HListView;->as:Z
if-nez v12, :cond_24
const/4 v1, 0x1
move-object/from16 v0, p0
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->as:Z
:try_start_b
invoke-super/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
move-object/from16 v0, p0
iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-nez v1, :cond_25
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->c()V
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
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
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->k()V
:cond_88
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-nez v1, :cond_b3
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->c()V
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
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
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V
move-object/from16 v0, p0
iget v11, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
move-object/from16 v0, p0
iget-object v14, v0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/p;
const/4 v1, 0x0
if-eqz v10, :cond_12e
const/4 v4, 0x0
:goto_11e
if-ge v4, v13, :cond_131
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v15
add-int v16, v11, v4
invoke-virtual/range {v14 .. v16}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V
add-int/lit8 v4, v4, 0x1
goto :goto_11e
:cond_12e
invoke-virtual {v14, v13, v11}, Lit/sephiroth/android/library/widget/p;->a(II)V
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
invoke-virtual {v14}, Lit/sephiroth/android/library/widget/p;->b()V
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
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->g(I)Landroid/view/View;
move-result-object v1
move-object v2, v1
:goto_179
invoke-virtual {v14}, Lit/sephiroth/android/library/widget/p;->c()V
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
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->e()V
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-lez v1, :cond_1fd
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->m()V
:cond_1fd
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
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
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->i()I
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
invoke-direct {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->h(I)V
:goto_251
move-object v2, v1
goto/16 :goto_179
:cond_254
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v2
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->i(I)V
goto :goto_251
:pswitch_25e
move-object/from16 v0, p0
iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->Z:I
move-object/from16 v0, p0
iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->W:I
move-object/from16 v0, p0
invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;
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
invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->p()V
move-object v2, v1
goto/16 :goto_179
:pswitch_281
const/4 v1, 0x0
move-object/from16 v0, p0
iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->g(I)Landroid/view/View;
move-result-object v1
invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->p()V
move-object v2, v1
goto/16 :goto_179
:pswitch_292
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->i()I
move-result v1
move-object/from16 v0, p0
iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->W:I
move-object/from16 v0, p0
invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;
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
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V
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
invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;
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
invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;
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
invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->e(II)Landroid/view/View;
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
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.registers 25
move-object/from16 v0, p0
iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->y:Z
if-eqz v2, :cond_b
const/4 v2, 0x1
move-object/from16 v0, p0
iput-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->z:Z
:cond_b
move-object/from16 v0, p0
iget v7, v0, Lit/sephiroth/android/library/widget/HListView;->au:I
move-object/from16 v0, p0
iget-object v8, v0, Lit/sephiroth/android/library/widget/HListView;->aw:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p0
iget-object v9, v0, Lit/sephiroth/android/library/widget/HListView;->ax:Landroid/graphics/drawable/Drawable;
if-eqz v8, :cond_139
const/4 v2, 0x1
move v3, v2
:goto_1b
if-eqz v9, :cond_13d
const/4 v2, 0x1
move v6, v2
:goto_1f
if-lez v7, :cond_141
move-object/from16 v0, p0
iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->at:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_141
const/4 v2, 0x1
move v5, v2
:goto_29
if-nez v5, :cond_2f
if-nez v3, :cond_2f
if-eqz v6, :cond_184
:cond_2f
move-object/from16 v0, p0
iget-object v10, v0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingTop()I
move-result v2
iput v2, v10, Landroid/graphics/Rect;->top:I
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getBottom()I
move-result v2
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getTop()I
move-result v4
sub-int/2addr v2, v4
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingBottom()I
move-result v4
sub-int/2addr v2, v4
iput v2, v10, Landroid/graphics/Rect;->bottom:I
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v11
move-object/from16 v0, p0
iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v12
move-object/from16 v0, p0
iget v13, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
move-object/from16 v0, p0
iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
sub-int v2, v13, v2
add-int/lit8 v14, v2, -0x1
move-object/from16 v0, p0
iget-boolean v15, v0, Lit/sephiroth/android/library/widget/HListView;->aC:Z
move-object/from16 v0, p0
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView;->aD:Z
move/from16 v16, v0
move-object/from16 v0, p0
iget v0, v0, Lit/sephiroth/android/library/widget/HListView;->V:I
move/from16 v17, v0
move-object/from16 v0, p0
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView;->aE:Z
move/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
move-object/from16 v19, v0
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->isOpaque()Z
move-result v2
if-eqz v2, :cond_145
invoke-super/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isOpaque()Z
move-result v2
if-nez v2, :cond_145
const/4 v2, 0x1
move v4, v2
:goto_8f
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
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getCacheColorHint()I
move-result v20
move/from16 v0, v20
invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V
:cond_b3
move-object/from16 v0, p0
iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;
move-object/from16 v20, v0
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v2
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I
move-result v21
sub-int v2, v2, v21
add-int/lit8 v2, v2, 0x0
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v21
add-int v21, v21, v2
move-object/from16 v0, p0
iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-nez v2, :cond_188
const/4 v2, 0x0
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v22
if-lez v11, :cond_e8
if-gez v22, :cond_e8
if-eqz v3, :cond_149
const/4 v3, 0x0
iput v3, v10, Landroid/graphics/Rect;->right:I
move/from16 v0, v22
iput v0, v10, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p1
invoke-static {v0, v8, v10}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
:cond_e8
:goto_e8
const/4 v3, 0x0
:goto_e9
if-ge v3, v11, :cond_16a
if-nez v15, :cond_f1
add-int v8, v17, v3
if-lt v8, v12, :cond_136
:cond_f1
if-nez v16, :cond_f7
add-int v8, v17, v3
if-ge v8, v14, :cond_136
:cond_f7
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v2
if-eqz v5, :cond_136
move/from16 v0, v21
if-ge v2, v0, :cond_136
if-eqz v6, :cond_10d
add-int/lit8 v8, v11, -0x1
if-eq v3, v8, :cond_136
:cond_10d
if-nez v18, :cond_129
add-int v8, v17, v3
move-object/from16 v0, v19
invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v8
if-eqz v8, :cond_15a
add-int/lit8 v8, v11, -0x1
if-eq v3, v8, :cond_129
add-int v8, v17, v3
add-int/lit8 v8, v8, 0x1
move-object/from16 v0, v19
invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v8
if-eqz v8, :cond_15a
:cond_129
iput v2, v10, Landroid/graphics/Rect;->left:I
add-int v8, v2, v7
iput v8, v10, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v10, v3}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
:goto_136
:cond_136
add-int/lit8 v3, v3, 0x1
goto :goto_e9
:cond_139
const/4 v2, 0x0
move v3, v2
goto/16 :goto_1b
:cond_13d
const/4 v2, 0x0
move v6, v2
goto/16 :goto_1f
:cond_141
const/4 v2, 0x0
move v5, v2
goto/16 :goto_29
:cond_145
const/4 v2, 0x0
move v4, v2
goto/16 :goto_8f
:cond_149
if-eqz v5, :cond_e8
const/4 v3, 0x0
iput v3, v10, Landroid/graphics/Rect;->right:I
neg-int v3, v7
iput v3, v10, Landroid/graphics/Rect;->left:I
const/4 v3, -0x1
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v10, v3}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
goto :goto_e8
:cond_15a
if-eqz v4, :cond_136
iput v2, v10, Landroid/graphics/Rect;->left:I
add-int v8, v2, v7
iput v8, v10, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p1
move-object/from16 v1, v20
invoke-virtual {v0, v10, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto :goto_136
:cond_16a
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v3
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v4
add-int/2addr v3, v4
if-eqz v6, :cond_184
add-int v4, v17, v11
if-ne v4, v13, :cond_184
if-le v3, v2, :cond_184
iput v2, v10, Landroid/graphics/Rect;->left:I
iput v3, v10, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p1
invoke-static {v0, v9, v10}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
:cond_184
:goto_184
invoke-super/range {p0 .. p1}, Lit/sephiroth/android/library/widget/AbsHListView;->dispatchDraw(Landroid/graphics/Canvas;)V
return-void
:cond_188
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v13
if-lez v11, :cond_1a4
if-eqz v3, :cond_1a4
iput v13, v10, Landroid/graphics/Rect;->left:I
const/4 v2, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v2
iput v2, v10, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p1
invoke-static {v0, v8, v10}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
:cond_1a4
if-eqz v3, :cond_1ef
const/4 v2, 0x1
:goto_1a7
if-ge v2, v11, :cond_201
if-nez v15, :cond_1af
add-int v3, v17, v2
if-lt v3, v12, :cond_1ec
:cond_1af
if-nez v16, :cond_1b5
add-int v3, v17, v2
if-ge v3, v14, :cond_1ec
:cond_1b5
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v3
if-lez v3, :cond_1ec
if-nez v18, :cond_1dd
add-int v8, v17, v2
move-object/from16 v0, v19
invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v8
if-eqz v8, :cond_1f1
add-int/lit8 v8, v11, -0x1
if-eq v2, v8, :cond_1dd
add-int v8, v17, v2
add-int/lit8 v8, v8, 0x1
move-object/from16 v0, v19
invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v8
if-eqz v8, :cond_1f1
:cond_1dd
sub-int v8, v3, v7
iput v8, v10, Landroid/graphics/Rect;->left:I
iput v3, v10, Landroid/graphics/Rect;->right:I
add-int/lit8 v3, v2, -0x1
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v10, v3}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
:goto_1ec
:cond_1ec
add-int/lit8 v2, v2, 0x1
goto :goto_1a7
:cond_1ef
const/4 v2, 0x0
goto :goto_1a7
:cond_1f1
if-eqz v4, :cond_1ec
sub-int v8, v3, v7
iput v8, v10, Landroid/graphics/Rect;->left:I
iput v3, v10, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p1
move-object/from16 v1, v20
invoke-virtual {v0, v10, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto :goto_1ec
:cond_201
if-lez v11, :cond_184
if-lez v13, :cond_184
if-eqz v6, :cond_217
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I
move-result v2
iput v2, v10, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v13
iput v2, v10, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p1
invoke-static {v0, v9, v10}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
goto/16 :goto_184
:cond_217
if-eqz v5, :cond_184
move/from16 v0, v21
iput v0, v10, Landroid/graphics/Rect;->left:I
add-int v2, v21, v7
iput v2, v10, Landroid/graphics/Rect;->right:I
const/4 v2, -0x1
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v10, v2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
goto/16 :goto_184
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
.method protected final e(I)I
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
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
.registers 2
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
return-object v0
.end method
.method public getAdapter()Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
return-object v0
.end method
.method public getCheckItemIds()[J
.registers 11
const/4 v4, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v0, :cond_12
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getCheckedItemIds()[J
move-result-object v0
:goto_11
return-object v0
:cond_12
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->b:I
if-eqz v0, :cond_53
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/support/v4/b/o;
if-eqz v0, :cond_53
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v0, :cond_53
iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->f:Landroid/support/v4/b/o;
invoke-virtual {v5}, Landroid/support/v4/b/o;->c()I
move-result v6
new-array v2, v6, [J
iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
move v3, v4
move v1, v4
:goto_2a
if-ge v3, v6, :cond_49
invoke-virtual {v5, v3}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_56
add-int/lit8 v0, v1, 0x1
invoke-virtual {v5, v3}, Landroid/support/v4/b/o;->b(I)I
move-result v8
invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v8
aput-wide v8, v2, v1
:goto_44
add-int/lit8 v1, v3, 0x1
move v3, v1
move v1, v0
goto :goto_2a
:cond_49
if-ne v1, v6, :cond_4d
move-object v0, v2
goto :goto_11
:cond_4d
new-array v0, v1, [J
invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_11
:cond_53
new-array v0, v4, [J
goto :goto_11
:cond_56
move v0, v1
goto :goto_44
.end method
.method public getDivider()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->at:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getDividerWidth()I
.registers 2
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
return v0
.end method
.method public getFooterViewsCount()I
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getHeaderViewsCount()I
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItemsCanFocus()Z
.registers 2
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
return v0
.end method
.method public getMaxScrollAmount()I
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
.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->ax:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aw:Landroid/graphics/drawable/Drawable;
return-object v0
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
instance-of v3, v3, Lit/sephiroth/android/library/widget/an;
if-nez v3, :cond_22
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot add header view to list -- setAdapter has already been called."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
new-instance v3, Lit/sephiroth/android/library/widget/al;
invoke-direct {v3}, Lit/sephiroth/android/library/widget/al;-><init>()V
iput-object v2, v3, Lit/sephiroth/android/library/widget/al;->a:Landroid/view/View;
const/4 v2, 0x0
iput-object v2, v3, Lit/sephiroth/android/library/widget/al;->b:Ljava/lang/Object;
const/4 v2, 0x1
iput-boolean v2, v3, Lit/sephiroth/android/library/widget/al;->c:Z
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v2, :cond_41
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/c;
if-eqz v2, :cond_41
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/c;
invoke-virtual {v2}, Lit/sephiroth/android/library/widget/c;->onChanged()V
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
if-eqz v9, :cond_103
if-eqz p1, :cond_103
if-eqz p3, :cond_103
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
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->d()V
:cond_2d
iget-object v10, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;
const v2, 0x7fffffff
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I
move-result v11
iget v12, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
const/4 v4, 0x0
:goto_39
if-ge v4, v11, :cond_103
add-int v1, v12, v4
invoke-interface {v9, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v1
if-eqz v1, :cond_110
invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;
move-result-object v13
invoke-virtual {v13, v10}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V
invoke-virtual {p0, v13, v10}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
sparse-switch p2, :sswitch_data_116
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:sswitch_58
move-object/from16 v0, p3
iget v6, v0, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->top:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I
move-result v7
div-int/lit8 v7, v7, 0x2
add-int v8, v1, v7
iget v1, v10, Landroid/graphics/Rect;->left:I
iget v7, v10, Landroid/graphics/Rect;->top:I
invoke-virtual {v10}, Landroid/graphics/Rect;->height()I
move-result v14
div-int/lit8 v14, v14, 0x2
add-int/2addr v7, v14
:goto_73
sub-int/2addr v1, v6
sub-int v6, v7, v8
mul-int/2addr v6, v6
mul-int/2addr v1, v1
add-int/2addr v1, v6
if-ge v1, v2, :cond_110
invoke-virtual {v13}, Landroid/view/View;->getLeft()I
move-result v2
move v3, v4
:goto_80
add-int/lit8 v4, v4, 0x1
move v5, v3
move v3, v2
move v2, v1
goto :goto_39
:sswitch_86
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->left:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int/2addr v6, v1
move-object/from16 v0, p3
iget v8, v0, Landroid/graphics/Rect;->bottom:I
iget v1, v10, Landroid/graphics/Rect;->left:I
invoke-virtual {v10}, Landroid/graphics/Rect;->width()I
move-result v7
div-int/lit8 v7, v7, 0x2
add-int/2addr v1, v7
iget v7, v10, Landroid/graphics/Rect;->top:I
goto :goto_73
:sswitch_a1
move-object/from16 v0, p3
iget v6, v0, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->top:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I
move-result v7
div-int/lit8 v7, v7, 0x2
add-int v8, v1, v7
iget v1, v10, Landroid/graphics/Rect;->right:I
iget v7, v10, Landroid/graphics/Rect;->top:I
invoke-virtual {v10}, Landroid/graphics/Rect;->height()I
move-result v14
div-int/lit8 v14, v14, 0x2
add-int/2addr v7, v14
goto :goto_73
:sswitch_bd
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->left:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int/2addr v6, v1
move-object/from16 v0, p3
iget v8, v0, Landroid/graphics/Rect;->top:I
iget v1, v10, Landroid/graphics/Rect;->left:I
invoke-virtual {v10}, Landroid/graphics/Rect;->width()I
move-result v7
div-int/lit8 v7, v7, 0x2
add-int/2addr v1, v7
iget v7, v10, Landroid/graphics/Rect;->bottom:I
goto :goto_73
:sswitch_d8
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->right:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I
move-result v6
div-int/lit8 v6, v6, 0x2
add-int/2addr v6, v1
move-object/from16 v0, p3
iget v1, v0, Landroid/graphics/Rect;->top:I
invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I
move-result v7
div-int/lit8 v7, v7, 0x2
add-int v8, v1, v7
iget v1, v10, Landroid/graphics/Rect;->left:I
invoke-virtual {v10}, Landroid/graphics/Rect;->width()I
move-result v7
div-int/lit8 v7, v7, 0x2
add-int/2addr v1, v7
iget v7, v10, Landroid/graphics/Rect;->top:I
invoke-virtual {v10}, Landroid/graphics/Rect;->height()I
move-result v14
div-int/lit8 v14, v14, 0x2
add-int/2addr v7, v14
goto/16 :goto_73
:cond_103
if-ltz v5, :cond_10c
iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->V:I
add-int/2addr v1, v5
invoke-virtual {p0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->setSelectionFromLeft(II)V
:goto_10b
return-void
:cond_10c
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V
goto :goto_10b
:cond_110
move v1, v2
move v2, v3
move v3, v5
goto/16 :goto_80
nop
:sswitch_data_116
.sparse-switch
0x1 -> :sswitch_d8
0x2 -> :sswitch_d8
0x11 -> :sswitch_a1
0x21 -> :sswitch_bd
0x42 -> :sswitch_58
0x82 -> :sswitch_86
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
move-result v6
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v5
const/4 v8, 0x0
const/4 v7, 0x0
const/4 v4, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-nez v3, :cond_c2
const/4 v3, 0x0
:goto_1d
move-object/from16 v0, p0
iput v3, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
move-object/from16 v0, p0
iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-lez v3, :cond_6f
if-eqz v12, :cond_2b
if-nez v9, :cond_6f
:cond_2b
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
if-lt v3, v11, :cond_56
const/4 v3, 0x0
invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I
move-result v4
invoke-static {v3, v4}, Lit/sephiroth/android/library/widget/HListView;->combineMeasuredStates(II)I
move-result v3
move v4, v3
:cond_56
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/p;
invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Lit/sephiroth/android/library/widget/i;
iget v3, v3, Lit/sephiroth/android/library/widget/i;->a:I
if-ltz v3, :cond_cc
const/4 v3, 0x1
:goto_65
if-eqz v3, :cond_6f
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/p;
const/4 v11, -0x1
invoke-virtual {v3, v10, v11}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V
:cond_6f
move v3, v7
move v11, v8
if-nez v9, :cond_ce
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v5, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->bottom:I
add-int/2addr v4, v5
add-int/2addr v3, v4
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalScrollbarHeight()I
move-result v4
add-int/2addr v3, v4
move v8, v3
:goto_87
if-nez v12, :cond_9f
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
add-int/2addr v3, v4
add-int/2addr v3, v11
invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I
move-result v4
mul-int/lit8 v4, v4, 0x2
add-int v6, v3, v4
:cond_9f
const/high16 v3, -0x8000
if-ne v12, v3, :cond_228
move-object/from16 v0, p0
iget-object v7, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-nez v7, :cond_1be
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
add-int/2addr v3, v4
:cond_b6
:goto_b6
move-object/from16 v0, p0
invoke-virtual {v0, v3, v8}, Lit/sephiroth/android/library/widget/HListView;->setMeasuredDimension(II)V
move/from16 v0, p2
move-object/from16 v1, p0
iput v0, v1, Lit/sephiroth/android/library/widget/HListView;->v:I
return-void
:cond_c2
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I
move-result v3
goto/16 :goto_1d
:cond_cc
const/4 v3, 0x0
goto :goto_65
:cond_ce
const/high16 v3, -0x8000
if-ne v9, v3, :cond_1b1
move-object/from16 v0, p0
iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-lez v3, :cond_1b1
move-object/from16 v0, p0
iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->av:I
if-ltz v3, :cond_1b1
move-object/from16 v0, p0
iget v9, v0, Lit/sephiroth/android/library/widget/HListView;->av:I
move-object/from16 v0, p0
iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->av:I
move-object/from16 v0, p0
iget-object v13, v0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-nez v13, :cond_115
const/4 v3, 0x2
new-array v3, v3, [I
const/4 v4, 0x0
move-object/from16 v0, p0
iget-object v5, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v7, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->right:I
add-int/2addr v5, v7
aput v5, v3, v4
const/4 v4, 0x1
move-object/from16 v0, p0
iget-object v5, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v7, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->bottom:I
add-int/2addr v5, v7
aput v5, v3, v4
:goto_10f
const/4 v4, 0x1
aget v3, v3, v4
move v8, v3
goto/16 :goto_87
:cond_115
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v7, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->right:I
add-int v14, v4, v7
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v7, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->bottom:I
add-int v15, v4, v7
move-object/from16 v0, p0
iget v4, v0, Lit/sephiroth/android/library/widget/HListView;->au:I
if-lez v4, :cond_194
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->at:Landroid/graphics/drawable/Drawable;
if-eqz v4, :cond_194
move-object/from16 v0, p0
iget v4, v0, Lit/sephiroth/android/library/widget/HListView;->au:I
move v10, v4
:goto_142
const/4 v8, 0x0
const/4 v7, 0x0
const/4 v4, -0x1
if-ne v3, v4, :cond_197
invoke-interface {v13}, Landroid/widget/ListAdapter;->getCount()I
move-result v3
add-int/lit8 v3, v3, -0x1
move v4, v3
:goto_14e
move-object/from16 v0, p0
iget-object v13, v0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/p;
move-object/from16 v0, p0
iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView;->P:[Z
move-object/from16 v16, v0
:goto_158
if-gt v9, v4, :cond_19b
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v9, v1}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;
move-result-object v17
move-object/from16 v0, p0
move-object/from16 v1, v17
move/from16 v2, p2
invoke-direct {v0, v1, v9, v2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;II)V
invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Lit/sephiroth/android/library/widget/i;
iget v3, v3, Lit/sephiroth/android/library/widget/i;->a:I
if-ltz v3, :cond_199
const/4 v3, 0x1
:goto_176
if-eqz v3, :cond_17e
const/4 v3, -0x1
move-object/from16 v0, v17
invoke-virtual {v13, v0, v3}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V
:cond_17e
invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
add-int/2addr v3, v10
invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I
move-result v8
invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I
move-result v3
add-int/lit8 v7, v9, 0x1
move v9, v7
move v7, v3
goto :goto_158
:cond_194
const/4 v4, 0x0
move v10, v4
goto :goto_142
:cond_197
move v4, v3
goto :goto_14e
:cond_199
const/4 v3, 0x0
goto :goto_176
:cond_19b
add-int v4, v14, v8
add-int/2addr v7, v15
const/4 v3, 0x2
new-array v3, v3, [I
const/4 v8, 0x0
invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I
move-result v4
aput v4, v3, v8
const/4 v4, 0x1
invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I
move-result v5
aput v5, v3, v4
goto/16 :goto_10f
:cond_1b1
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v7, 0xb
if-lt v3, v7, :cond_22b
const/high16 v3, -0x100
and-int/2addr v3, v4
or-int/2addr v3, v5
move v8, v3
goto/16 :goto_87
:cond_1be
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
add-int v5, v3, v4
move-object/from16 v0, p0
iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->au:I
if-lez v3, :cond_21c
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->at:Landroid/graphics/drawable/Drawable;
if-eqz v3, :cond_21c
move-object/from16 v0, p0
iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->au:I
move v4, v3
:goto_1dd
invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I
move-result v3
add-int/lit8 v9, v3, -0x1
move-object/from16 v0, p0
iget-object v10, v0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/p;
move-object/from16 v0, p0
iget-object v11, v0, Lit/sephiroth/android/library/widget/HListView;->P:[Z
const/4 v3, 0x0
move v7, v3
move v3, v5
:goto_1ee
if-gt v7, v9, :cond_b6
move-object/from16 v0, p0
invoke-virtual {v0, v7, v11}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;
move-result-object v12
move-object/from16 v0, p0
move/from16 v1, p2
invoke-direct {v0, v12, v7, v1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;II)V
if-lez v7, :cond_226
add-int/2addr v3, v4
move v5, v3
:goto_201
invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Lit/sephiroth/android/library/widget/i;
iget v3, v3, Lit/sephiroth/android/library/widget/i;->a:I
if-ltz v3, :cond_21f
const/4 v3, 0x1
:goto_20c
if-eqz v3, :cond_212
const/4 v3, -0x1
invoke-virtual {v10, v12, v3}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V
:cond_212
invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
add-int/2addr v5, v3
if-lt v5, v6, :cond_221
move v3, v6
goto/16 :goto_b6
:cond_21c
const/4 v3, 0x0
move v4, v3
goto :goto_1dd
:cond_21f
const/4 v3, 0x0
goto :goto_20c
:cond_221
add-int/lit8 v3, v7, 0x1
move v7, v3
move v3, v5
goto :goto_1ee
:cond_226
move v5, v3
goto :goto_201
:cond_228
move v3, v6
goto/16 :goto_b6
:cond_22b
move v8, v5
goto/16 :goto_87
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
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/am;
if-nez v2, :cond_33
new-instance v2, Lit/sephiroth/android/library/widget/am;
invoke-direct {v2, p0, v4}, Lit/sephiroth/android/library/widget/am;-><init>(Lit/sephiroth/android/library/widget/HListView;B)V
iput-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/am;
:cond_33
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/am;
iput v1, v2, Lit/sephiroth/android/library/widget/am;->a:I
iput v0, v2, Lit/sephiroth/android/library/widget/am;->b:I
invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->post(Ljava/lang/Runnable;)Z
:cond_3c
invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->onSizeChanged(IIII)V
return-void
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
invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->o(I)V
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
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
.registers 2
check-cast p1, Landroid/widget/ListAdapter;
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 9
const/4 v6, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v0, :cond_11
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/c;
if-eqz v0, :cond_11
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/c;
invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_11
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->c()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/p;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/p;->a()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gtz v0, :cond_29
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_79
:cond_29
new-instance v0, Lit/sephiroth/android/library/widget/an;
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;
invoke-direct {v0, v2, v3, p1}, Lit/sephiroth/android/library/widget/an;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
:goto_34
const/4 v0, -0x1
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->aq:I
const-wide/high16 v2, -0x8000
iput-wide v2, p0, Lit/sephiroth/android/library/widget/HListView;->ar:J
invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v0, :cond_b5
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
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->l()V
new-instance v0, Lit/sephiroth/android/library/widget/c;
invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/c;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/c;
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->i:Lit/sephiroth/android/library/widget/c;
invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->p:Lit/sephiroth/android/library/widget/p;
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I
move-result v3
if-gtz v3, :cond_7c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can\'t have a viewTypeCount < 1"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_79
iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
goto :goto_34
:cond_7c
new-array v4, v3, [Ljava/util/ArrayList;
move v0, v1
:goto_7f
if-ge v0, v3, :cond_8b
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
aput-object v5, v4, v0
add-int/lit8 v0, v0, 0x1
goto :goto_7f
:cond_8b
iput v3, v2, Lit/sephiroth/android/library/widget/p;->e:I
aget-object v0, v4, v1
iput-object v0, v2, Lit/sephiroth/android/library/widget/p;->f:Ljava/util/ArrayList;
iput-object v4, v2, Lit/sephiroth/android/library/widget/p;->d:[Ljava/util/ArrayList;
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->K:Z
if-eqz v0, :cond_b0
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
add-int/lit8 v0, v0, -0x1
invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I
move-result v0
:goto_9f
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V
iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->an:I
if-nez v0, :cond_ac
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->m()V
:cond_ac
:goto_ac
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V
return-void
:cond_b0
invoke-virtual {p0, v1, v6}, Lit/sephiroth/android/library/widget/HListView;->a(IZ)I
move-result v0
goto :goto_9f
:cond_b5
iput-boolean v6, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->l()V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->m()V
goto :goto_ac
.end method
.method public setCacheColorHint(I)V
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
invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setCacheColorHint(I)V
return-void
:cond_1f
const/4 v0, 0x0
goto :goto_7
.end method
.method public setDivider(Landroid/graphics/drawable/Drawable;)V
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_1e
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
:goto_9
iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->at:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_14
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_15
:cond_14
const/4 v0, 0x1
:cond_15
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aB:Z
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
return-void
:cond_1e
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
goto :goto_9
.end method
.method public setDividerWidth(I)V
.registers 2
iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->au:I
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
return-void
.end method
.method public setFooterDividersEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->aD:Z
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
return-void
.end method
.method public setHeaderDividersEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->aC:Z
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
return-void
.end method
.method public setItemsCanFocus(Z)V
.registers 3
iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z
if-nez p1, :cond_9
const/high16 v0, 0x6
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setDescendantFocusability(I)V
:cond_9
return-void
.end method
.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
.registers 2
iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->ax:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
return-void
.end method
.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
.registers 3
iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->aw:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I
move-result v0
if-gez v0, :cond_b
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V
:cond_b
return-void
.end method
.method public setSelection(I)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->setSelectionFromLeft(II)V
return-void
.end method
.method public setSelectionAfterHeaderView()V
.registers 3
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_c
const/4 v0, 0x0
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->aj:I
:goto_b
return-void
:cond_c
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Landroid/widget/ListAdapter;
if-eqz v1, :cond_14
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setSelection(I)V
goto :goto_b
:cond_14
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->aj:I
const/4 v0, 0x2
iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->h:I
goto :goto_b
.end method
.method public setSelectionFromLeft(II)V
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
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V
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
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/m;
if-eqz v0, :cond_38
iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/m;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V
:cond_38
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V
goto :goto_4
:cond_3c
iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->M:I
goto :goto_15
.end method
.method public setSelectionInt(I)V
.registers 6
const/4 v0, 0x1
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V
const/4 v1, 0x0
iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->al:I
if-ltz v2, :cond_23
add-int/lit8 v3, v2, -0x1
if-ne p1, v3, :cond_1f
:cond_d
:goto_d
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/m;
if-eqz v1, :cond_16
iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->I:Lit/sephiroth/android/library/widget/m;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/m;->a()V
:cond_16
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->d()V
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