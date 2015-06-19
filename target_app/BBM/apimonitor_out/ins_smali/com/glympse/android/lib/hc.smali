.class  Lcom/glympse/android/lib/hc;
.super Lcom/glympse/android/lib/j;
.source "RegisterDevice.java"
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private jx:Lcom/glympse/android/lib/l;
.field private rB:Ljava/lang/String;
.field private rC:Z
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/hc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p2, p0, Lcom/glympse/android/lib/hc;->rB:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/hc;->rB:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1e
const/4 v0, 0x1
:goto_10
iput-boolean v0, p0, Lcom/glympse/android/lib/hc;->rC:Z
new-instance v0, Lcom/glympse/android/lib/l;
invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/hc;->jx:Lcom/glympse/android/lib/l;
iget-object v0, p0, Lcom/glympse/android/lib/hc;->jx:Lcom/glympse/android/lib/l;
iput-object v0, p0, Lcom/glympse/android/lib/hc;->hc:Lcom/glympse/android/lib/k;
return-void
:cond_1e
const/4 v0, 0x0
goto :goto_10
.end method
.method public cancel()V
.registers 2
new-instance v0, Lcom/glympse/android/lib/l;
invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/hc;->jx:Lcom/glympse/android/lib/l;
iget-object v0, p0, Lcom/glympse/android/lib/hc;->jx:Lcom/glympse/android/lib/l;
iput-object v0, p0, Lcom/glympse/android/lib/hc;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public process()Z
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/hc;->jx:Lcom/glympse/android/lib/l;
iget-object v0, v0, Lcom/glympse/android/lib/l;->hf:Ljava/lang/String;
const-string v1, "ok"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
iget-boolean v0, p0, Lcom/glympse/android/lib/hc;->rC:Z
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/glympse/android/lib/hc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/hc;->rB:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GConfigPrivate;->saveRegistrationToken(Ljava/lang/String;)V
:cond_1d
iget-boolean v0, p0, Lcom/glympse/android/lib/hc;->rC:Z
if-eqz v0, :cond_31
const/16 v0, 0x200
:goto_23
iget-object v1, p0, Lcom/glympse/android/lib/hc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v2, p0, Lcom/glympse/android/lib/hc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const v3, 0x10002
iget-object v4, p0, Lcom/glympse/android/lib/hc;->rB:Ljava/lang/String;
invoke-interface {v1, v2, v3, v0, v4}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
const/4 v0, 0x1
:goto_30
return v0
:cond_31
const/16 v0, 0x400
goto :goto_23
:cond_34
const/4 v0, 0x0
goto :goto_30
.end method
.method public url(Ljava/lang/StringBuilder;)Z
.registers 3
const-string v0, "users/self/"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-boolean v0, p0, Lcom/glympse/android/lib/hc;->rC:Z
if-eqz v0, :cond_2a
const-string v0, "register_device"
:goto_b
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "?provider="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getPushType()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-boolean v0, p0, Lcom/glympse/android/lib/hc;->rC:Z
if-eqz v0, :cond_28
const-string v0, "&auth_id="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/hc;->rB:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_28
const/4 v0, 0x1
return v0
:cond_2a
const-string v0, "unregister_device"
goto :goto_b
.end method