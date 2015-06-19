.class public Lcom/glympse/android/hal/GVector;
.super Ljava/util/Vector;
.source "GVector.java"
.implements Lcom/glympse/android/core/GArray;
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/util/Vector;-><init>()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0, p1}, Ljava/util/Vector;-><init>(I)V
return-void
.end method
.method public constructor <init>(Lcom/glympse/android/hal/GVector;)V
.registers 2
invoke-direct {p0, p1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V
return-void
.end method
.method public at(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public clone()Lcom/glympse/android/core/GArray;
.registers 2
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0, p0}, Lcom/glympse/android/hal/GVector;-><init>(Lcom/glympse/android/hal/GVector;)V
return-object v0
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/hal/GVector;->clone()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public iterator()Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/glympse/android/hal/ab;
invoke-super {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/hal/ab;-><init>(Ljava/util/Iterator;)V
return-object v0
.end method
.method public length()I
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
return v0
.end method
.method public removeRange(II)V
.registers 3
invoke-super {p0, p1, p2}, Ljava/util/Vector;->removeRange(II)V
return-void
.end method
.method public sort(Ljava/util/Comparator;)V
.registers 2
invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
return-void
.end method