.class  Lcom/glympse/android/hal/z;
.super Ljava/lang/Object;
.source "GLinkedList.java"
.implements Ljava/util/Enumeration;
.field private aZ:Ljava/util/Iterator;
.method public constructor <init>(Ljava/util/Iterator;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/z;->aZ:Ljava/util/Iterator;
return-void
.end method
.method public hasMoreElements()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/z;->aZ:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
return v0
.end method
.method public nextElement()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/z;->aZ:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method