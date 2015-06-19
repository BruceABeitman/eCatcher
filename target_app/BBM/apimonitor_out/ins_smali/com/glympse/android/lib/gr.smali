.class  Lcom/glympse/android/lib/gr;
.super Ljava/lang/Object;
.source "PersonList.java"
.implements Lcom/glympse/android/lib/GPersonListPrivate;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private _jobQueue:Lcom/glympse/android/lib/GJobQueue;
.field private hE:Lcom/glympse/android/lib/CommonSink;
.field private nU:I
.field private pl:Lcom/glympse/android/hal/GVector;
.field private qZ:Ljava/lang/String;
.field private ra:Lcom/glympse/android/hal/GVector;
.field private rb:I
.field private rc:Lcom/glympse/android/lib/GJob;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GJobQueue;Ljava/lang/String;I)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/gr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p2, p0, Lcom/glympse/android/lib/gr;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iput-object p3, p0, Lcom/glympse/android/lib/gr;->qZ:Ljava/lang/String;
iput p4, p0, Lcom/glympse/android/lib/gr;->nU:I
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/gr;->ra:Lcom/glympse/android/hal/GVector;
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/lib/gr;->rb:I
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "PersonList"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/gr;->hE:Lcom/glympse/android/lib/CommonSink;
return-void
.end method
.method public abort()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gr;->rc:Lcom/glympse/android/lib/GJob;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/gr;->rc:Lcom/glympse/android/lib/GJob;
invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->abort()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/gr;->rc:Lcom/glympse/android/lib/GJob;
:cond_c
return-void
.end method
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/gr;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public associateContext(JLjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/gr;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V
return-void
.end method
.method public clearContext(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/gr;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V
return-void
.end method
.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/gr;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/gr;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/api/GEventSink;
move-object v2, p1
move v3, p2
move v4, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
.method public getContext(J)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/gr;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContextKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gr;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gr;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public getPeople()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gr;->ra:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getPercentage()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/gr;->rb:I
return v0
.end method
.method public hasContext(J)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/gr;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z
move-result v0
return v0
.end method
.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/gr;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public search(Lcom/glympse/android/hal/GVector;)V
.registers 8
iget-object v0, p0, Lcom/glympse/android/lib/gr;->rc:Lcom/glympse/android/lib/GJob;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/gr;->rc:Lcom/glympse/android/lib/GJob;
invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->abort()V
:cond_9
iput-object p1, p0, Lcom/glympse/android/lib/gr;->pl:Lcom/glympse/android/hal/GVector;
new-instance v0, Lcom/glympse/android/lib/gs;
iget-object v1, p0, Lcom/glympse/android/lib/gr;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/glympse/android/lib/GPersonListPrivate;
iget-object v3, p0, Lcom/glympse/android/lib/gr;->pl:Lcom/glympse/android/hal/GVector;
iget-object v4, p0, Lcom/glympse/android/lib/gr;->qZ:Ljava/lang/String;
iget v5, p0, Lcom/glympse/android/lib/gr;->nU:I
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/gs;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GPersonListPrivate;Lcom/glympse/android/hal/GVector;Ljava/lang/String;I)V
iput-object v0, p0, Lcom/glympse/android/lib/gr;->rc:Lcom/glympse/android/lib/GJob;
iget-object v0, p0, Lcom/glympse/android/lib/gr;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iget-object v1, p0, Lcom/glympse/android/lib/gr;->rc:Lcom/glympse/android/lib/GJob;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
return-void
.end method
.method public setPeopleFound(Lcom/glympse/android/hal/GVector;I)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/lib/gr;->ra:Lcom/glympse/android/hal/GVector;
iput p2, p0, Lcom/glympse/android/lib/gr;->rb:I
return-void
.end method