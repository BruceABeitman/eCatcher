.class public final Lcom/instagram/ui/menu/c;
.super Landroid/widget/FrameLayout;
.source "CheckableButton.java"
.implements Landroid/widget/Checkable;
.field  a:Landroid/widget/TextView;
.field  b:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/instagram/ui/menu/c;->a()V
return-void
.end method
.method private a()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/ui/menu/c;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_check_item:I
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
sget v0, Lcom/facebook/av;->row_simple_text_textview:I
invoke-virtual {p0, v0}, Lcom/instagram/ui/menu/c;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/ui/menu/c;->a:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_check_imageview:I
invoke-virtual {p0, v0}, Lcom/instagram/ui/menu/c;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/ui/menu/c;->b:Landroid/view/View;
return-void
.end method
.method public final isChecked()Z
.registers 2
iget-object v0, p0, Lcom/instagram/ui/menu/c;->b:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final setChecked(Z)V
.registers 6
const/4 v3, 0x0
if-eqz p1, :cond_37
sget v0, Lcom/facebook/as;->accent_blue_medium:I
iget-object v1, p0, Lcom/instagram/ui/menu/c;->b:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
:goto_a
iget-object v1, p0, Lcom/instagram/ui/menu/c;->a:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
move-result-object v1
aget-object v1, v1, v3
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v1
iget-object v2, p0, Lcom/instagram/ui/menu/c;->a:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-static {v2}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
iget-object v1, p0, Lcom/instagram/ui/menu/c;->a:Landroid/widget/TextView;
iget-object v2, p0, Lcom/instagram/ui/menu/c;->a:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
return-void
:cond_37
sget v0, Lcom/facebook/as;->grey_medium:I
iget-object v1, p0, Lcom/instagram/ui/menu/c;->b:Landroid/view/View;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_a
.end method
.method public final toggle()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/ui/menu/c;->isChecked()Z
move-result v0
if-nez v0, :cond_b
const/4 v0, 0x1
:goto_7
invoke-virtual {p0, v0}, Lcom/instagram/ui/menu/c;->setChecked(Z)V
return-void
:cond_b
const/4 v0, 0x0
goto :goto_7
.end method