.class  Lcom/glympse/android/lib/dd;
.super Lcom/glympse/android/lib/j;
.source "GroupLeave.java"
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private jx:Lcom/glympse/android/lib/l;
.field private ms:Lcom/glympse/android/lib/GGroupPrivate;
.field private mu:Ljava/lang/String;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;)V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/dd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p2, p0, Lcom/glympse/android/lib/dd;->ms:Lcom/glympse/android/lib/GGroupPrivate;
invoke-interface {p2}, Lcom/glympse/android/lib/GGroupPrivate;->getId()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/dd;->mu:Ljava/lang/String;
new-instance v0, Lcom/glympse/android/lib/l;
invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dd;->jx:Lcom/glympse/android/lib/l;
iget-object v0, p0, Lcom/glympse/android/lib/dd;->jx:Lcom/glympse/android/lib/l;
iput-object v0, p0, Lcom/glympse/android/lib/dd;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public cancel()V
.registers 2
new-instance v0, Lcom/glympse/android/lib/l;
invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dd;->jx:Lcom/glympse/android/lib/l;
iget-object v0, p0, Lcom/glympse/android/lib/dd;->jx:Lcom/glympse/android/lib/l;
iput-object v0, p0, Lcom/glympse/android/lib/dd;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public process()Z
.registers 6
const/4 v2, 0x6
iget-object v0, p0, Lcom/glympse/android/lib/dd;->jx:Lcom/glympse/android/lib/l;
iget-object v0, v0, Lcom/glympse/android/lib/l;->hf:Ljava/lang/String;
const-string v1, "ok"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/glympse/android/lib/dd;->ms:Lcom/glympse/android/lib/GGroupPrivate;
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/dd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGroupManagerPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/dd;->ms:Lcom/glympse/android/lib/GGroupPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupManagerPrivate;->removeGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
:goto_1f
const/4 v0, 0x1
:goto_20
return v0
:cond_21
iget-object v0, p0, Lcom/glympse/android/lib/dd;->jx:Lcom/glympse/android/lib/l;
iget-object v0, v0, Lcom/glympse/android/lib/l;->hg:Ljava/lang/String;
const-string v1, "group"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/glympse/android/lib/dd;->ms:Lcom/glympse/android/lib/GGroupPrivate;
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/dd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGroupManagerPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/dd;->ms:Lcom/glympse/android/lib/GGroupPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupManagerPrivate;->removeGroup(Lcom/glympse/android/lib/GGroupPrivate;)V
goto :goto_1f
:cond_40
iget-object v0, p0, Lcom/glympse/android/lib/dd;->ms:Lcom/glympse/android/lib/GGroupPrivate;
const/16 v1, 0x9
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/dd;->ms:Lcom/glympse/android/lib/GGroupPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/dd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/16 v2, 0xa
const/high16 v3, 0x4
iget-object v4, p0, Lcom/glympse/android/lib/dd;->ms:Lcom/glympse/android/lib/GGroupPrivate;
invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/GGroupPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
const/4 v0, 0x0
goto :goto_20
.end method
.method public url(Ljava/lang/StringBuilder;)Z
.registers 3
const-string v0, "groups/"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/dd;->mu:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "/leave"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x0
return v0
.end method