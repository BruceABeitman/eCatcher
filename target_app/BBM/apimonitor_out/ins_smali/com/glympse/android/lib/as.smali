.class  Lcom/glympse/android/lib/as;
.super Ljava/lang/Object;
.source "DataEvent.java"
.implements Lcom/glympse/android/api/GDataEvent;
.field private jy:Lcom/glympse/android/api/GTicket;
.field private jz:Lcom/glympse/android/hal/GVector;
.method public constructor <init>(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/hal/GVector;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/as;->jy:Lcom/glympse/android/api/GTicket;
iput-object p2, p0, Lcom/glympse/android/lib/as;->jz:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method public getProperties()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/as;->jz:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getTicket()Lcom/glympse/android/api/GTicket;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/as;->jy:Lcom/glympse/android/api/GTicket;
return-object v0
.end method