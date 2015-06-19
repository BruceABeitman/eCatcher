.class public Lco/vine/android/drawable/ColoredOvalDrawable$ColoredOvalShape;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "ColoredOvalDrawable.java"
.field final synthetic this$0:Lco/vine/android/drawable/ColoredOvalDrawable;
.method public constructor <init>(Lco/vine/android/drawable/ColoredOvalDrawable;)V
.registers 2
iput-object p1, p0, Lco/vine/android/drawable/ColoredOvalDrawable$ColoredOvalShape;->this$0:Lco/vine/android/drawable/ColoredOvalDrawable;
invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V
return-void
.end method
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.registers 4
iget-object v0, p0, Lco/vine/android/drawable/ColoredOvalDrawable$ColoredOvalShape;->this$0:Lco/vine/android/drawable/ColoredOvalDrawable;
iget v0, v0, Lco/vine/android/drawable/ColoredOvalDrawable;->mColor:I
invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V
invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
return-void
.end method