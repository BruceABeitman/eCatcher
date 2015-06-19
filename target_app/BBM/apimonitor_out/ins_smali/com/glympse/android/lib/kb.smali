.class  Lcom/glympse/android/lib/kb;
.super Lcom/glympse/android/lib/j;
.source "UserView.java"
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private oz:Lcom/glympse/android/lib/GUserPrivate;
.field private uF:Ljava/lang/String;
.field private uG:Lcom/glympse/android/lib/kc;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GUserPrivate;)V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/kb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p2, p0, Lcom/glympse/android/lib/kb;->oz:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {p2}, Lcom/glympse/android/lib/GUserPrivate;->getId()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/kb;->uF:Ljava/lang/String;
new-instance v0, Lcom/glympse/android/lib/kc;
invoke-direct {v0}, Lcom/glympse/android/lib/kc;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/kb;->uG:Lcom/glympse/android/lib/kc;
iget-object v0, p0, Lcom/glympse/android/lib/kb;->uG:Lcom/glympse/android/lib/kc;
iput-object v0, p0, Lcom/glympse/android/lib/kb;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public cancel()V
.registers 2
new-instance v0, Lcom/glympse/android/lib/kc;
invoke-direct {v0}, Lcom/glympse/android/lib/kc;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/kb;->uG:Lcom/glympse/android/lib/kc;
iget-object v0, p0, Lcom/glympse/android/lib/kb;->uG:Lcom/glympse/android/lib/kc;
iput-object v0, p0, Lcom/glympse/android/lib/kb;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public process()Z
.registers 8
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/kb;->uG:Lcom/glympse/android/lib/kc;
iget-object v0, v0, Lcom/glympse/android/lib/kc;->hf:Ljava/lang/String;
const-string v1, "ok"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7b
iget-object v0, p0, Lcom/glympse/android/lib/kb;->uG:Lcom/glympse/android/lib/kc;
iget-object v0, v0, Lcom/glympse/android/lib/kc;->nP:Ljava/lang/String;
iget-object v1, p0, Lcom/glympse/android/lib/kb;->oz:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GUserPrivate;->getNickname()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_9d
iget-object v0, p0, Lcom/glympse/android/lib/kb;->oz:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->isNicknameSynced()Z
move-result v0
if-eqz v0, :cond_9d
iget-object v0, p0, Lcom/glympse/android/lib/kb;->oz:Lcom/glympse/android/lib/GUserPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/kb;->uG:Lcom/glympse/android/lib/kc;
iget-object v1, v1, Lcom/glympse/android/lib/kc;->nP:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserPrivate;->setNicknameCore(Ljava/lang/String;)V
move v1, v2
move v4, v2
:goto_31
iget-object v0, p0, Lcom/glympse/android/lib/kb;->oz:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GImagePrivate;
iget-object v5, p0, Lcom/glympse/android/lib/kb;->uG:Lcom/glympse/android/lib/kc;
iget-object v5, v5, Lcom/glympse/android/lib/kc;->tz:Ljava/lang/String;
invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->getUrl()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_60
iget-object v5, p0, Lcom/glympse/android/lib/kb;->oz:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v5}, Lcom/glympse/android/lib/GUserPrivate;->isUploadingAvatar()Z
move-result v5
if-nez v5, :cond_60
iget-object v1, p0, Lcom/glympse/android/lib/kb;->uG:Lcom/glympse/android/lib/kc;
iget-object v1, v1, Lcom/glympse/android/lib/kc;->tz:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V
iget-object v1, p0, Lcom/glympse/android/lib/kb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v3, 0x7
invoke-interface {v0, v1, v3, v2, v0}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
move v1, v2
:cond_60
if-eqz v4, :cond_6c
iget-object v0, p0, Lcom/glympse/android/lib/kb;->oz:Lcom/glympse/android/lib/GUserPrivate;
iget-object v3, p0, Lcom/glympse/android/lib/kb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v4, 0x3
iget-object v5, p0, Lcom/glympse/android/lib/kb;->oz:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0, v3, v4, v2, v5}, Lcom/glympse/android/lib/GUserPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_6c
if-eqz v1, :cond_79
iget-object v0, p0, Lcom/glympse/android/lib/kb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->save()V
:cond_79
move v3, v2
:cond_7a
:goto_7a
return v3
:cond_7b
iget-object v0, p0, Lcom/glympse/android/lib/kb;->uG:Lcom/glympse/android/lib/kc;
iget-object v0, v0, Lcom/glympse/android/lib/kc;->hg:Ljava/lang/String;
const-string v1, "user"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7a
iget-object v0, p0, Lcom/glympse/android/lib/kb;->oz:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->isSelf()Z
move-result v0
if-nez v0, :cond_7a
iget-object v0, p0, Lcom/glympse/android/lib/kb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/kb;->oz:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->removeUser(Lcom/glympse/android/lib/GUserPrivate;)V
goto :goto_7a
:cond_9d
move v1, v3
move v4, v3
goto :goto_31
.end method
.method public url(Ljava/lang/StringBuilder;)Z
.registers 3
const-string v0, "users/"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/kb;->uF:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x0
return v0
.end method