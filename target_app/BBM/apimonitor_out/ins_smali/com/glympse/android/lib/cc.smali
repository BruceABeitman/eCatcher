.class  Lcom/glympse/android/lib/cc;
.super Ljava/lang/Object;
.source "GlympseLite.java"
.implements Lcom/glympse/android/lib/bp;
.field final synthetic lO:Lcom/glympse/android/lib/cb;
.method private constructor <init>(Lcom/glympse/android/lib/cb;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/cc;->lO:Lcom/glympse/android/lib/cb;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/lib/cb;Lcom/glympse/android/lib/cb$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/lib/cc;-><init>(Lcom/glympse/android/lib/cb;)V
return-void
.end method
.method public a(Lcom/glympse/android/api/GTicket;)Lcom/glympse/android/lite/GTicketLite;
.registers 4
const-wide v0, 0x1000000001001L
invoke-interface {p1, v0, v1}, Lcom/glympse/android/api/GTicket;->getContext(J)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lite/GTicketLite;
return-object v0
.end method
.method public synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/glympse/android/api/GTicket;
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/cc;->a(Lcom/glympse/android/api/GTicket;)Lcom/glympse/android/lite/GTicketLite;
move-result-object v0
return-object v0
.end method