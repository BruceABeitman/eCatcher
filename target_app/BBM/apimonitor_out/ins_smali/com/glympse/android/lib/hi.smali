.class  Lcom/glympse/android/lib/hi;
.super Ljava/lang/Object;
.source "SendWizardListener.java"
.implements Lcom/glympse/android/hal/GUiControlListener;
.field private cI:Lcom/glympse/android/api/GGlympse;
.field private jy:Lcom/glympse/android/api/GTicket;
.field private nT:Lcom/glympse/android/lite/GTicketLite;
.method public constructor <init>(Lcom/glympse/android/lite/GTicketLite;Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/api/GTicket;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/hi;->nT:Lcom/glympse/android/lite/GTicketLite;
iput-object p2, p0, Lcom/glympse/android/lib/hi;->cI:Lcom/glympse/android/api/GGlympse;
iput-object p3, p0, Lcom/glympse/android/lib/hi;->jy:Lcom/glympse/android/api/GTicket;
return-void
.end method
.method public static a(Lcom/glympse/android/lite/GTicketLite;Lcom/glympse/android/api/GGlympse;)V
.registers 5
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
const-wide v0, 0x1000000001001L
invoke-interface {p1, v0, v1}, Lcom/glympse/android/api/GGlympse;->getContext(J)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lite/GGlympseLite;
if-eqz v0, :cond_2
const/16 v1, 0x400
const/4 v2, 0x0
invoke-interface {v0, v0, v1, p0, v2}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
goto :goto_2
.end method
.method public onCancelled()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/hi;->nT:Lcom/glympse/android/lite/GTicketLite;
iget-object v1, p0, Lcom/glympse/android/lib/hi;->cI:Lcom/glympse/android/api/GGlympse;
invoke-static {v0, v1}, Lcom/glympse/android/lib/hi;->a(Lcom/glympse/android/lite/GTicketLite;Lcom/glympse/android/api/GGlympse;)V
iput-object v2, p0, Lcom/glympse/android/lib/hi;->nT:Lcom/glympse/android/lite/GTicketLite;
iput-object v2, p0, Lcom/glympse/android/lib/hi;->cI:Lcom/glympse/android/api/GGlympse;
return-void
.end method
.method public onCompleted()V
.registers 6
const-wide v3, 0x1000000001001L
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/hi;->jy:Lcom/glympse/android/api/GTicket;
iget-object v1, p0, Lcom/glympse/android/lib/hi;->nT:Lcom/glympse/android/lite/GTicketLite;
invoke-interface {v0, v3, v4, v1}, Lcom/glympse/android/api/GTicket;->associateContext(JLjava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/hi;->cI:Lcom/glympse/android/api/GGlympse;
iget-object v1, p0, Lcom/glympse/android/lib/hi;->jy:Lcom/glympse/android/api/GTicket;
invoke-interface {v0, v1}, Lcom/glympse/android/api/GGlympse;->sendTicket(Lcom/glympse/android/api/GTicket;)Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/hi;->jy:Lcom/glympse/android/api/GTicket;
invoke-interface {v0, v3, v4}, Lcom/glympse/android/api/GTicket;->clearContext(J)V
:cond_1c
iput-object v2, p0, Lcom/glympse/android/lib/hi;->nT:Lcom/glympse/android/lite/GTicketLite;
iput-object v2, p0, Lcom/glympse/android/lib/hi;->cI:Lcom/glympse/android/api/GGlympse;
return-void
.end method