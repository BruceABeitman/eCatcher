.class  Lcom/glympse/android/lib/t;
.super Ljava/lang/Object;
.source "ArrayAdapter.java"
.implements Ljava/util/Enumeration;
.field private hG:Lcom/glympse/android/lib/bp;
.field private hH:Ljava/util/Enumeration;
.field final synthetic hI:Lcom/glympse/android/lib/s;
.method public constructor <init>(Lcom/glympse/android/lib/s;Ljava/util/Enumeration;Lcom/glympse/android/lib/bp;)V
.registers 4
iput-object p1, p0, Lcom/glympse/android/lib/t;->hI:Lcom/glympse/android/lib/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/glympse/android/lib/t;->hH:Ljava/util/Enumeration;
iput-object p3, p0, Lcom/glympse/android/lib/t;->hG:Lcom/glympse/android/lib/bp;
return-void
.end method
.method public hasMoreElements()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/t;->hH:Ljava/util/Enumeration;
invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
return v0
.end method
.method public nextElement()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/t;->hG:Lcom/glympse/android/lib/bp;
iget-object v1, p0, Lcom/glympse/android/lib/t;->hH:Ljava/util/Enumeration;
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/bp;->c(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method