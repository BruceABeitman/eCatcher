.class  Lcom/glympse/android/lib/if;
.super Lcom/glympse/android/lib/j;
.source "TicketDelete.java"
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private jx:Lcom/glympse/android/lib/l;
.field private oh:Lcom/glympse/android/lib/GTicketPrivate;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;)V
.registers 5
invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/if;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
check-cast p2, Lcom/glympse/android/lib/GTicketPrivate;
iput-object p2, p0, Lcom/glympse/android/lib/if;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v0, p0, Lcom/glympse/android/lib/if;->oh:Lcom/glympse/android/lib/GTicketPrivate;
const/16 v1, 0x80
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setState(I)Z
new-instance v0, Lcom/glympse/android/lib/l;
invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/if;->jx:Lcom/glympse/android/lib/l;
iget-object v0, p0, Lcom/glympse/android/lib/if;->jx:Lcom/glympse/android/lib/l;
iput-object v0, p0, Lcom/glympse/android/lib/if;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public cancel()V
.registers 2
new-instance v0, Lcom/glympse/android/lib/l;
invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/if;->jx:Lcom/glympse/android/lib/l;
iget-object v0, p0, Lcom/glympse/android/lib/if;->jx:Lcom/glympse/android/lib/l;
iput-object v0, p0, Lcom/glympse/android/lib/if;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public process()Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/if;->oh:Lcom/glympse/android/lib/GTicketPrivate;
const/16 v1, 0x100
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setState(I)Z
iget-object v0, p0, Lcom/glympse/android/lib/if;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/if;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/if;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
:cond_1c
const/4 v0, 0x1
return v0
.end method
.method public url(Ljava/lang/StringBuilder;)Z
.registers 3
const-string v0, "tickets/"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/if;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "/delete"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x0
return v0
.end method