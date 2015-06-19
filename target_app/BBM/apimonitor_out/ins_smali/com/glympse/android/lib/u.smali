.class  Lcom/glympse/android/lib/u;
.super Ljava/lang/Object;
.source "ArrayAdapter.java"
.implements Ljava/util/Iterator;
.field private hG:Lcom/glympse/android/lib/bp;
.field final synthetic hI:Lcom/glympse/android/lib/s;
.field private hJ:Ljava/util/Iterator;
.method public constructor <init>(Lcom/glympse/android/lib/s;Ljava/util/Iterator;Lcom/glympse/android/lib/bp;)V
.registers 4
iput-object p1, p0, Lcom/glympse/android/lib/u;->hI:Lcom/glympse/android/lib/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/glympse/android/lib/u;->hJ:Ljava/util/Iterator;
iput-object p3, p0, Lcom/glympse/android/lib/u;->hG:Lcom/glympse/android/lib/bp;
return-void
.end method
.method public hasNext()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/u;->hJ:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
return v0
.end method
.method public next()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/u;->hG:Lcom/glympse/android/lib/bp;
iget-object v1, p0, Lcom/glympse/android/lib/u;->hJ:Ljava/util/Iterator;
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/bp;->c(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public remove()V
.registers 1
return-void
.end method