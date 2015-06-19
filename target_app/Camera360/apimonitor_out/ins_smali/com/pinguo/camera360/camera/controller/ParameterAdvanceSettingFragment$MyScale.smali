.class  Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;
.super Ljava/lang/Object;
.source "ParameterAdvanceSettingFragment.java"
.implements Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;
.field private mDrawable:Landroid/graphics/drawable/Drawable;
.field  mText:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "def text"
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;->mText:Ljava/lang/String;
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;->mText:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;->mDrawable:Landroid/graphics/drawable/Drawable;
if-eqz p2, :cond_1a
invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_1a
return-void
.end method
.method public getDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;->mDrawable:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;->mText:Ljava/lang/String;
return-object v0
.end method