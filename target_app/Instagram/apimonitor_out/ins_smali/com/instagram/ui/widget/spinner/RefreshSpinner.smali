.class public Lcom/instagram/ui/widget/spinner/RefreshSpinner;
.super Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;
.source "RefreshSpinner.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;->a(Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0, p2}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;->a(Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0, p2}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;->a(Landroid/util/AttributeSet;)V
return-void
.end method
.method private a(Landroid/util/AttributeSet;)V
.registers 5
sget v0, Lcom/facebook/au;->nav_spinner:I
invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;->setImageResource(I)V
if-eqz p1, :cond_1e
invoke-virtual {p0}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;->getContext()Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/facebook/bb;->RefreshSpinner:[I
invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
sget v1, Lcom/facebook/bb;->RefreshSpinner_dark:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
invoke-virtual {p0, v1}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;->setDark(Z)V
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
:cond_1e
return-void
.end method
.method public setDark(Z)V
.registers 5
invoke-virtual {p0}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz p1, :cond_1c
invoke-virtual {p0}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v2, Lcom/facebook/as;->grey_medium:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;
move-result-object v0
:goto_18
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
:cond_1c
const/4 v0, 0x0
goto :goto_18
.end method