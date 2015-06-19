.class public Landroid/support/v7/internal/view/menu/ActionMenuItemView;
.super Landroid/support/v7/internal/widget/CompatTextView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ad;
.implements Landroid/support/v7/internal/view/menu/h;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/r;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/support/v7/internal/view/menu/p;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/d;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e:Z

    sget-object v0, Landroid/support/v7/a/k;->d:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->g:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Landroid/support/v7/internal/view/menu/b;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/b;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->h:I

    return-void
.end method

.method private f()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_b
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/r;->k()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e:Z

    if-nez v3, :cond_1f

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->f:Z

    if-eqz v3, :cond_20

    :cond_1f
    move v2, v1

    :cond_20
    and-int/2addr v0, v2

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    :goto_25
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_29
    move v0, v2

    goto :goto_b

    :cond_2b
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method public final a()Landroid/support/v7/internal/view/menu/r;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    return-object v0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/p;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->d:Landroid/support/v7/internal/view/menu/p;

    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/r;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->f()V

    invoke-virtual {p1, p0}, Landroid/support/v7/internal/view/menu/r;->a(Landroid/support/v7/internal/view/menu/ad;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->f()V

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setId(I)V

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    :goto_2b
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    return-void

    :cond_36
    const/16 v0, 0x8

    goto :goto_2b
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final d()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final e()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->d:Landroid/support/v7/internal/view/menu/p;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->d:Landroid/support/v7/internal/view/menu/p;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/r;)Z

    :cond_b
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v2, 0x2

    new-array v2, v2, [I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v6

    aget v7, v2, v1

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v9}, Landroid/support/v7/internal/view/menu/r;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v4, v9, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v7, v3, :cond_53

    const/16 v3, 0x35

    aget v0, v2, v0

    sub-int v0, v8, v0

    div-int/lit8 v2, v5, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v4, v3, v0, v6}, Landroid/widget/Toast;->setGravity(III)V

    :goto_4e
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_8

    :cond_53
    const/16 v2, 0x51

    invoke-virtual {v4, v2, v0, v6}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_4e
.end method

.method protected onMeasure(II)V
    .registers 9

    const/high16 v5, 0x4000

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->h:I

    if-ltz v0, :cond_1d

    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->h:I

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v4

    invoke-super {p0, v0, v2, v3, v4}, Landroid/support/v7/internal/widget/CompatTextView;->setPadding(IIII)V

    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/CompatTextView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, -0x8000

    if-ne v2, v4, :cond_68

    iget v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->g:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_36
    if-eq v2, v5, :cond_45

    iget v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->g:I

    if-lez v2, :cond_45

    if-ge v3, v0, :cond_45

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/support/v7/internal/widget/CompatTextView;->onMeasure(II)V

    :cond_45
    if-nez v1, :cond_67

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/support/v7/internal/widget/CompatTextView;->setPadding(IIII)V

    :cond_67
    return-void

    :cond_68
    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->g:I

    goto :goto_36
.end method

.method public setPadding(IIII)V
    .registers 5

    iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->h:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/CompatTextView;->setPadding(IIII)V

    return-void
.end method
