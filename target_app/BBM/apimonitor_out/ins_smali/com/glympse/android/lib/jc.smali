.class  Lcom/glympse/android/lib/jc;
.super Lcom/glympse/android/lib/j;
.source "UnlinkAccount.java"
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field protected jx:Lcom/glympse/android/lib/l;
.field private mA:Ljava/lang/String;
.field private pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/jc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p2, p0, Lcom/glympse/android/lib/jc;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;
invoke-interface {p2}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getType()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/jc;->mA:Ljava/lang/String;
new-instance v0, Lcom/glympse/android/lib/l;
invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/jc;->jx:Lcom/glympse/android/lib/l;
iget-object v0, p0, Lcom/glympse/android/lib/jc;->jx:Lcom/glympse/android/lib/l;
iput-object v0, p0, Lcom/glympse/android/lib/jc;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public cancel()V
.registers 2
new-instance v0, Lcom/glympse/android/lib/l;
invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/jc;->jx:Lcom/glympse/android/lib/l;
iget-object v0, p0, Lcom/glympse/android/lib/jc;->jx:Lcom/glympse/android/lib/l;
iput-object v0, p0, Lcom/glympse/android/lib/jc;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public process()Z
.registers 7
const/4 v1, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/jc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;
new-instance v2, Lcom/glympse/android/lib/fl;
iget-object v3, p0, Lcom/glympse/android/lib/jc;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;
invoke-interface {v3}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getType()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lcom/glympse/android/lib/fl;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/glympse/android/lib/jc;->jx:Lcom/glympse/android/lib/l;
iget-object v3, v3, Lcom/glympse/android/lib/l;->hf:Ljava/lang/String;
const-string v4, "ok"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2b
const/4 v3, 0x5
invoke-interface {v2, v3}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setState(I)V
iget-object v3, p0, Lcom/glympse/android/lib/jc;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;
invoke-interface {v0, v3, v2}, Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;->unlinkComplete(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
move v0, v1
:goto_2a
return v0
:cond_2b
const/4 v3, 0x6
invoke-interface {v2, v3}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setState(I)V
iget-object v3, p0, Lcom/glympse/android/lib/jc;->jx:Lcom/glympse/android/lib/l;
iget-object v3, v3, Lcom/glympse/android/lib/l;->hg:Ljava/lang/String;
const-string v4, "invalid_argument"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_53
new-instance v1, Lcom/glympse/android/lib/hk;
const/4 v3, 0x2
iget-object v4, p0, Lcom/glympse/android/lib/jc;->jx:Lcom/glympse/android/lib/l;
iget-object v4, v4, Lcom/glympse/android/lib/l;->hg:Ljava/lang/String;
iget-object v5, p0, Lcom/glympse/android/lib/jc;->jx:Lcom/glympse/android/lib/l;
iget-object v5, v5, Lcom/glympse/android/lib/l;->hh:Ljava/lang/String;
invoke-direct {v1, v3, v4, v5}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setError(Lcom/glympse/android/api/GServerError;)V
:goto_4c
iget-object v1, p0, Lcom/glympse/android/lib/jc;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;->linkFailed(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
const/4 v0, 0x0
goto :goto_2a
:cond_53
new-instance v3, Lcom/glympse/android/lib/hk;
iget-object v4, p0, Lcom/glympse/android/lib/jc;->jx:Lcom/glympse/android/lib/l;
iget-object v4, v4, Lcom/glympse/android/lib/l;->hg:Ljava/lang/String;
iget-object v5, p0, Lcom/glympse/android/lib/jc;->jx:Lcom/glympse/android/lib/l;
iget-object v5, v5, Lcom/glympse/android/lib/l;->hh:Ljava/lang/String;
invoke-direct {v3, v1, v4, v5}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v3}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setError(Lcom/glympse/android/api/GServerError;)V
goto :goto_4c
.end method
.method public url(Ljava/lang/StringBuilder;)Z
.registers 3
const-string v0, "users/self/linked_accounts/"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/jc;->mA:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "/unlink"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x0
return v0
.end method