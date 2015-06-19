.class public abstract Lcom/nineoldandroids/util/FloatProperty;
.super Lcom/nineoldandroids/util/Property;
.source "FloatProperty.java"
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const-class v0, Ljava/lang/Float;
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
return-void
.end method
.method public final set(Ljava/lang/Object;Ljava/lang/Float;)V
.registers 4
invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F
move-result v0
invoke-virtual {p0, p1, v0}, Lcom/nineoldandroids/util/FloatProperty;->setValue(Ljava/lang/Object;F)V
return-void
.end method
.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 3
check-cast p1, Ljava/lang/Object;
check-cast p2, Ljava/lang/Float;
invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V
return-void
.end method
.method public abstract setValue(Ljava/lang/Object;F)V
.end method