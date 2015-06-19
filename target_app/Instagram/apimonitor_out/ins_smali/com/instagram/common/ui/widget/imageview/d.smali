.class final Lcom/instagram/common/ui/widget/imageview/d;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "IgColorDrawable.java"
.field  a:I
.field  b:I
.field  c:I
.method constructor <init>(Lcom/instagram/common/ui/widget/imageview/d;)V
.registers 3
invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
if-eqz p1, :cond_d
iget v0, p1, Lcom/instagram/common/ui/widget/imageview/d;->a:I
iput v0, p0, Lcom/instagram/common/ui/widget/imageview/d;->a:I
iget v0, p1, Lcom/instagram/common/ui/widget/imageview/d;->b:I
iput v0, p0, Lcom/instagram/common/ui/widget/imageview/d;->b:I
:cond_d
return-void
.end method
.method public final getChangingConfigurations()I
.registers 2
iget v0, p0, Lcom/instagram/common/ui/widget/imageview/d;->c:I
return v0
.end method
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
.registers 3
new-instance v0, Lcom/instagram/common/ui/widget/imageview/c;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/common/ui/widget/imageview/c;-><init>(Lcom/instagram/common/ui/widget/imageview/d;B)V
return-object v0
.end method
.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.registers 4
new-instance v0, Lcom/instagram/common/ui/widget/imageview/c;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/common/ui/widget/imageview/c;-><init>(Lcom/instagram/common/ui/widget/imageview/d;B)V
return-object v0
.end method