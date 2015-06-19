.class public Lcom/instagram/ui/menu/CheckRadioButton;
.super Landroid/widget/RadioButton;
.source "CheckRadioButton.java"
.field private a:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/instagram/ui/menu/CheckRadioButton;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0}, Lcom/instagram/ui/menu/CheckRadioButton;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/instagram/ui/menu/CheckRadioButton;->a()V
return-void
.end method
.method private a()V
.registers 4
invoke-virtual {p0}, Lcom/instagram/ui/menu/CheckRadioButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/au;->check:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/instagram/ui/menu/CheckRadioButton;->a:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/instagram/ui/menu/CheckRadioButton;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/ui/menu/CheckRadioButton;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/as;->accent_blue_medium:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method
.method public setChecked(Z)V
.registers 4
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V
if-eqz p1, :cond_c
iget-object v0, p0, Lcom/instagram/ui/menu/CheckRadioButton;->a:Landroid/graphics/drawable/Drawable;
:goto_8
invoke-virtual {p0, v1, v1, v0, v1}, Lcom/instagram/ui/menu/CheckRadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
return-void
:cond_c
move-object v0, v1
goto :goto_8
.end method