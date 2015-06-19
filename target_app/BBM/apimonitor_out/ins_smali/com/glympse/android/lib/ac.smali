.class  Lcom/glympse/android/lib/ac;
.super Ljava/lang/Object;
.source "CalendarEvent.java"
.implements Lcom/glympse/android/lib/GCalendarEvent;
.field private ik:Ljava/lang/String;
.field private il:Z
.field private im:J
.field private in:Ljava/lang/String;
.field private io:Lcom/glympse/android/api/GInvite;
.field private ip:Lcom/glympse/android/core/GArray;
.method public constructor <init>(Ljava/lang/String;ZJLjava/lang/String;Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GArray;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ac;->ik:Ljava/lang/String;
iput-boolean p2, p0, Lcom/glympse/android/lib/ac;->il:Z
iput-wide p3, p0, Lcom/glympse/android/lib/ac;->im:J
iput-object p5, p0, Lcom/glympse/android/lib/ac;->in:Ljava/lang/String;
iput-object p6, p0, Lcom/glympse/android/lib/ac;->io:Lcom/glympse/android/api/GInvite;
iput-object p7, p0, Lcom/glympse/android/lib/ac;->ip:Lcom/glympse/android/core/GArray;
return-void
.end method
.method public getAttendees()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ac;->ip:Lcom/glympse/android/core/GArray;
return-object v0
.end method
.method public getLocation()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ac;->in:Ljava/lang/String;
return-object v0
.end method
.method public getOrganizer()Lcom/glympse/android/api/GInvite;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ac;->io:Lcom/glympse/android/api/GInvite;
return-object v0
.end method
.method public getStartTime()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/ac;->im:J
return-wide v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ac;->ik:Ljava/lang/String;
return-object v0
.end method
.method public isAllDay()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/ac;->il:Z
return v0
.end method
.method public toTicket()Lcom/glympse/android/api/GTicket;
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/lib/ac;->ik:Ljava/lang/String;
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/glympse/android/api/GlympseFactory;->createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;
move-result-object v2
iget-object v1, p0, Lcom/glympse/android/lib/ac;->io:Lcom/glympse/android/api/GInvite;
invoke-interface {v2, v1}, Lcom/glympse/android/api/GTicket;->addInvite(Lcom/glympse/android/api/GInvite;)Z
iget-object v1, p0, Lcom/glympse/android/lib/ac;->ip:Lcom/glympse/android/core/GArray;
invoke-interface {v1}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
move v1, v0
:goto_14
if-ge v1, v3, :cond_25
iget-object v0, p0, Lcom/glympse/android/lib/ac;->ip:Lcom/glympse/android/core/GArray;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v2, v0}, Lcom/glympse/android/api/GTicket;->addInvite(Lcom/glympse/android/api/GInvite;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:cond_25
return-object v2
.end method