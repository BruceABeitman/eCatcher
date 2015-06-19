.class  Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;
.super Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;
.source "LinkedBlockingDeque.java"
.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
.registers 2
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;->this$0:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
return-void
.end method
.method  firstNode()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;->this$0:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
iget-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
return-object v0
.end method
.method  nextNode(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.registers 3
iget-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
return-object v0
.end method