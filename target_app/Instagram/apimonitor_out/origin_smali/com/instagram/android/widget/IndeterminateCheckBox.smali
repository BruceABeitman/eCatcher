.class public Lcom/instagram/android/widget/IndeterminateCheckBox;
.super Landroid/widget/ViewSwitcher;
.source "IndeterminateCheckBox.java"


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/widget/IndeterminateCheckBox;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v4, -0x2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    sget v1, Lcom/facebook/av;->indeterminate_check_box:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/instagram/ui/widget/spinner/RefreshSpinner;

    invoke-direct {v0, p1}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;->setDark(Z)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->addView(Landroid/view/View;II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setDisplayedChild(I)V

    new-instance v0, Lcom/instagram/android/widget/i;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/i;-><init>(Lcom/instagram/android/widget/IndeterminateCheckBox;)V

    iput-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public setChecked(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setDisplayedChild(I)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
