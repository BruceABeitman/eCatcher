.class  Lcom/nineoldandroids/animation/PreHoneycombCompat$13;
.super Lcom/nineoldandroids/util/FloatProperty;
.source "PreHoneycombCompat.java"
.method constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public get(Landroid/view/View;)Ljava/lang/Float;
.registers 3
invoke-static {p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
move-result-object v0
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getX()F
move-result v0
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Landroid/view/View;
invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$13;->get(Landroid/view/View;)Ljava/lang/Float;
move-result-object v0
return-object v0
.end method
.method public setValue(Landroid/view/View;F)V
.registers 4
invoke-static {p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setX(F)V
return-void
.end method
.method public bridge synthetic setValue(Ljava/lang/Object;F)V
.registers 3
check-cast p1, Landroid/view/View;
invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/PreHoneycombCompat$13;->setValue(Landroid/view/View;F)V
return-void
.end method