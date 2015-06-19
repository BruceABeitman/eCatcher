.class public Lcom/glympse/android/hal/GLinkedList;
.super Ljava/util/LinkedList;
.source "GLinkedList.java"
.implements Lcom/glympse/android/core/GList;
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/glympse/android/hal/GLinkedList;)V
.registers 2
invoke-direct {p0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
return-void
.end method
.method public clone()Lcom/glympse/android/core/GList;
.registers 2
new-instance v0, Lcom/glympse/android/hal/GLinkedList;
invoke-direct {v0, p0}, Lcom/glympse/android/hal/GLinkedList;-><init>(Lcom/glympse/android/hal/GLinkedList;)V
return-object v0
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/hal/GLinkedList;->clone()Lcom/glympse/android/core/GList;
move-result-object v0
return-object v0
.end method
.method public elements()Ljava/util/Enumeration;
.registers 3
new-instance v0, Lcom/glympse/android/hal/z;
invoke-super {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/hal/z;-><init>(Ljava/util/Iterator;)V
return-object v0
.end method
.method public elementsReversed()Ljava/util/Enumeration;
.registers 3
new-instance v0, Lcom/glympse/android/hal/aa;
invoke-virtual {p0}, Lcom/glympse/android/hal/GLinkedList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-super {p0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/hal/aa;-><init>(Ljava/util/ListIterator;)V
return-object v0
.end method
.method public iterator()Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/glympse/android/hal/y;
invoke-super {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/hal/y;-><init>(Ljava/util/Iterator;)V
return-object v0
.end method
.method public length()I
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/hal/GLinkedList;->size()I
move-result v0
return v0
.end method