.class  Lcom/nineoldandroids/animation/PreHoneycombCompat$12;
.super Lcom/nineoldandroids/util/IntProperty;
.source "PreHoneycombCompat.java"
.method constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/nineoldandroids/util/IntProperty;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public get(Landroid/view/View;)Ljava/lang/Integer;
.registers 3
invoke-static {p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
move-result-object v0
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getScrollY()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Landroid/view/View;
invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$12;->get(Landroid/view/View;)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public setValue(Landroid/view/View;I)V
.registers 4
invoke-static {p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setScrollY(I)V
return-void
.end method
.method public bridge synthetic setValue(Ljava/lang/Object;I)V
.registers 3
check-cast p1, Landroid/view/View;
invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/PreHoneycombCompat$12;->setValue(Landroid/view/View;I)V
return-void
.end method