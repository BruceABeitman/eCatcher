.class public Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;
.super Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.source "LIFOLinkedBlockingDeque.java"
.field private static final serialVersionUID:J = -0x391aa861e4d4f950L
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;-><init>()V
return-void
.end method
.method public offer(Ljava/lang/Object;)Z
.registers 3
invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public remove()Ljava/lang/Object;
.registers 2
invoke-super {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method