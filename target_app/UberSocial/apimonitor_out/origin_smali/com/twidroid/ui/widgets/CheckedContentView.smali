.class public Lcom/twidroid/ui/widgets/CheckedContentView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final h:[I


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/twidroid/ui/widgets/CachedImageView;

.field private g:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/twidroid/ui/widgets/CheckedContentView;->h:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v3}, Lcom/twidroid/ui/widgets/CheckedContentView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/twidroid/q;->CheckedImageView:[I

    invoke-virtual {v0, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/CheckedContentView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/CheckedContentView;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030019

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_53

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_53

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twidroid/ui/widgets/CachedImageView;

    iput-object v1, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->f:Lcom/twidroid/ui/widgets/CachedImageView;

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->g:Landroid/widget/TextView;

    :cond_53
    iget-object v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->f:Lcom/twidroid/ui/widgets/CachedImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    :cond_d
    return v0
.end method

.method protected drawableStateChanged()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->invalidate()V

    :cond_10
    return-void
.end method

.method public getAvatarHolder()Lcom/twidroid/ui/widgets/CachedImageView;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->f:Lcom/twidroid/ui/widgets/CachedImageView;

    return-object v0
.end method

.method public getNameHolder()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->a:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/twidroid/ui/widgets/CheckedContentView;->h:[I

    invoke-static {v0, v1}, Lcom/twidroid/ui/widgets/CheckedContentView;->mergeDrawableStates([I[I)[I

    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v0, 0x0

    const/16 v3, 0x10

    sparse-switch v3, :sswitch_data_36

    :goto_11
    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->c:I

    sub-int v4, v3, v4

    iget v5, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->e:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->e:I

    sub-int/2addr v3, v5

    add-int/2addr v2, v0

    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_26
    return-void

    :sswitch_27
    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_11

    :sswitch_2d
    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_11

    nop

    :sswitch_data_36
    .sparse-switch
        0x10 -> :sswitch_2d
        0x50 -> :sswitch_27
    .end sparse-switch
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->b:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/CheckedContentView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    if-eqz p1, :cond_58

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_56

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v0, Lcom/twidroid/ui/widgets/CheckedContentView;->h:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/CheckedContentView;->setMinimumHeight(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->c:I

    iget v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->c:I

    iget v1, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->d:I

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->d:I

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/twidroid/ui/widgets/CheckedContentView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_50
    iput-object p1, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->requestLayout()V

    return-void

    :cond_56
    move v0, v1

    goto :goto_1c

    :cond_58
    iget v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->e:I

    iput v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->d:I

    goto :goto_50
.end method

.method public setChecked(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->a:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->a:Z

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->refreshDrawableState()V

    :cond_9
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->d:I

    iput v0, p0, Lcom/twidroid/ui/widgets/CheckedContentView;->e:I

    return-void
.end method

.method public toggle()V
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/CheckedContentView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/CheckedContentView;->setChecked(Z)V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
