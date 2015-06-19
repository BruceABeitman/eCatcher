.class public Lcom/instagram/camera/ui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"
.field private a:I
.field private b:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const v0, 0x106000d
invoke-virtual {p0, v0}, Lcom/instagram/camera/ui/RotateLayout;->setBackgroundResource(I)V
return-void
.end method
.method private a(II)V
.registers 6
const/4 v2, 0x0
iget v0, p0, Lcom/instagram/camera/ui/RotateLayout;->a:I
sparse-switch v0, :sswitch_data_40
:goto_6
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
iget v1, p0, Lcom/instagram/camera/ui/RotateLayout;->a:I
neg-int v1, v1
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V
return-void
:sswitch_10
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V
goto :goto_6
:sswitch_1b
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
int-to-float v1, p2
invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V
goto :goto_6
:sswitch_27
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
int-to-float v1, p1
invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
int-to-float v1, p2
invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V
goto :goto_6
:sswitch_34
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
int-to-float v1, p1
invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V
goto :goto_6
:sswitch_data_40
.sparse-switch
0x0 -> :sswitch_10
0x5a -> :sswitch_1b
0xb4 -> :sswitch_27
0x10e -> :sswitch_34
.end sparse-switch
.end method
.method protected onFinishInflate()V
.registers 4
const/4 v2, 0x0
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_18
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V
:cond_18
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 10
const/4 v3, 0x0
sub-int v0, p4, p2
sub-int v1, p5, p3
iget v2, p0, Lcom/instagram/camera/ui/RotateLayout;->a:I
sparse-switch v2, :sswitch_data_18
:goto_a
return-void
:sswitch_b
iget-object v2, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V
goto :goto_a
:sswitch_11
iget-object v2, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V
goto :goto_a
nop
:sswitch_data_18
.sparse-switch
0x0 -> :sswitch_b
0x5a -> :sswitch_11
0xb4 -> :sswitch_b
0x10e -> :sswitch_11
.end sparse-switch
.end method
.method protected onMeasure(II)V
.registers 7
const/4 v0, 0x0
iget v1, p0, Lcom/instagram/camera/ui/RotateLayout;->a:I
sparse-switch v1, :sswitch_data_38
move v1, v0
:goto_7
invoke-virtual {p0, v1, v0}, Lcom/instagram/camera/ui/RotateLayout;->setMeasuredDimension(II)V
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xb
if-lt v2, v3, :cond_13
invoke-direct {p0, v1, v0}, Lcom/instagram/camera/ui/RotateLayout;->a(II)V
:cond_13
return-void
:sswitch_14
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {p0, v0, p1, p2}, Lcom/instagram/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
goto :goto_7
:sswitch_26
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {p0, v0, p2, p1}, Lcom/instagram/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->b:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
goto :goto_7
:sswitch_data_38
.sparse-switch
0x0 -> :sswitch_14
0x5a -> :sswitch_26
0xb4 -> :sswitch_14
0x10e -> :sswitch_26
.end sparse-switch
.end method
.method public setOrientation(I)V
.registers 3
rem-int/lit16 p1, p1, 0x168
iget v0, p0, Lcom/instagram/camera/ui/RotateLayout;->a:I
if-ne v0, p1, :cond_7
:goto_6
return-void
:cond_7
iput p1, p0, Lcom/instagram/camera/ui/RotateLayout;->a:I
invoke-virtual {p0}, Lcom/instagram/camera/ui/RotateLayout;->requestLayout()V
goto :goto_6
.end method