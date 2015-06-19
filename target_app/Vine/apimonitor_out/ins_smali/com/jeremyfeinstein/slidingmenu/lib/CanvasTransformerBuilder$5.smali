.class  Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;
.super Ljava/lang/Object;
.source "CanvasTransformerBuilder.java"
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;
.field final synthetic this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder;
.field final synthetic val$closedX:I
.field final synthetic val$closedY:I
.field final synthetic val$interp:Landroid/view/animation/Interpolator;
.field final synthetic val$openedX:I
.field final synthetic val$openedY:I
.method constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder;Landroid/view/animation/Interpolator;IIII)V
.registers 7
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder;
iput-object p2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$interp:Landroid/view/animation/Interpolator;
iput p3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$openedX:I
iput p4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$closedX:I
iput p5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$openedY:I
iput p6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$closedY:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public transformCanvas(Landroid/graphics/Canvas;F)V
.registers 7
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;
invoke-static {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder;->access$000(Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;
move-result-object v1
invoke-interface {v1, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$interp:Landroid/view/animation/Interpolator;
invoke-interface {v1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v0
iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$openedX:I
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$closedX:I
sub-int/2addr v1, v2
int-to-float v1, v1
mul-float/2addr v1, v0
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$closedX:I
int-to-float v2, v2
add-float/2addr v1, v2
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$openedY:I
iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$closedY:I
sub-int/2addr v2, v3
int-to-float v2, v2
mul-float/2addr v2, v0
iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CanvasTransformerBuilder$5;->val$closedY:I
int-to-float v3, v3
add-float/2addr v2, v3
invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
return-void
.end method