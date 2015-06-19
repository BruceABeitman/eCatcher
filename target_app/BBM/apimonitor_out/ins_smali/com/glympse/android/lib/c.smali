.class  Lcom/glympse/android/lib/c;
.super Lcom/glympse/android/lib/j;
.source "AccountLogin.java"
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private gF:Lcom/glympse/android/lib/GAccountListener;
.field private gH:Ljava/lang/String;
.field private gK:Ljava/lang/String;
.field private gL:Ljava/lang/String;
.field private gM:Lcom/glympse/android/lib/GConfigPrivate;
.field private gN:Ljava/lang/String;
.field private gO:Ljava/lang/String;
.field private gP:Lcom/glympse/android/lib/d;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/lib/GAccountListener;)V
.registers 6
invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/c;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/c;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iput-object p4, p0, Lcom/glympse/android/lib/c;->gF:Lcom/glympse/android/lib/GAccountListener;
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getApiKey()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/c;->gH:Ljava/lang/String;
iput-object p2, p0, Lcom/glympse/android/lib/c;->gK:Ljava/lang/String;
iput-object p3, p0, Lcom/glympse/android/lib/c;->gL:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/c;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getViewerToken()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/c;->gN:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/c;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getDeviceId()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/c;->gO:Ljava/lang/String;
new-instance v0, Lcom/glympse/android/lib/d;
invoke-direct {v0}, Lcom/glympse/android/lib/d;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v0, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iput-object v0, p0, Lcom/glympse/android/lib/c;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public cancel()V
.registers 2
new-instance v0, Lcom/glympse/android/lib/d;
invoke-direct {v0}, Lcom/glympse/android/lib/d;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v0, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iput-object v0, p0, Lcom/glympse/android/lib/c;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public process()Z
.registers 9
const-wide/16 v6, 0x0
const/4 v0, 0x0
const/4 v1, 0x1
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v2, v2, Lcom/glympse/android/lib/d;->hf:Ljava/lang/String;
const-string v3, "ok"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_8c
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v2, v2, Lcom/glympse/android/lib/d;->gQ:Ljava/lang/String;
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_8c
iget-object v2, p0, Lcom/glympse/android/lib/c;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v2
iget-object v4, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-wide v4, v4, Lcom/glympse/android/lib/d;->gR:J
add-long/2addr v2, v4
const-wide/32 v4, 0xea60
sub-long/2addr v2, v4
iget-object v4, p0, Lcom/glympse/android/lib/c;->gF:Lcom/glympse/android/lib/GAccountListener;
iget-object v5, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v5, v5, Lcom/glympse/android/lib/d;->gQ:Ljava/lang/String;
invoke-interface {v4, v5, v2, v3}, Lcom/glympse/android/lib/GAccountListener;->loggedIn(Ljava/lang/String;J)V
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-wide v2, v2, Lcom/glympse/android/lib/d;->gS:J
cmp-long v2, v6, v2
if-eqz v2, :cond_45
iget-object v0, p0, Lcom/glympse/android/lib/c;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-wide v2, v2, Lcom/glympse/android/lib/d;->gS:J
long-to-int v2, v2
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GConfigPrivate;->setMaximumTicketDuration(I)V
move v0, v1
:cond_45
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-wide v2, v2, Lcom/glympse/android/lib/d;->gT:J
cmp-long v2, v6, v2
if-eqz v2, :cond_58
iget-object v0, p0, Lcom/glympse/android/lib/c;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-wide v2, v2, Lcom/glympse/android/lib/d;->gT:J
long-to-int v2, v2
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GConfigPrivate;->setPostRatePeriod(I)V
move v0, v1
:cond_58
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-wide v2, v2, Lcom/glympse/android/lib/d;->gU:J
cmp-long v2, v6, v2
if-eqz v2, :cond_6b
iget-object v0, p0, Lcom/glympse/android/lib/c;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-wide v2, v2, Lcom/glympse/android/lib/d;->gU:J
long-to-int v2, v2
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GConfigPrivate;->setMaximumNicknameLength(I)V
move v0, v1
:cond_6b
iget-object v2, p0, Lcom/glympse/android/lib/c;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GConfigPrivate;->getAccountCreationTime()J
move-result-wide v2
iget-object v4, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-wide v4, v4, Lcom/glympse/android/lib/d;->gV:J
cmp-long v2, v2, v4
if-eqz v2, :cond_83
iget-object v0, p0, Lcom/glympse/android/lib/c;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-wide v2, v2, Lcom/glympse/android/lib/d;->gV:J
invoke-interface {v0, v2, v3}, Lcom/glympse/android/lib/GConfigPrivate;->setAccountCreationTime(J)V
move v0, v1
:cond_83
if-eqz v0, :cond_8a
iget-object v0, p0, Lcom/glympse/android/lib/c;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->save()V
:cond_8a
move v0, v1
:goto_8b
return v0
:cond_8c
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v2, v2, Lcom/glympse/android/lib/d;->hg:Ljava/lang/String;
const-string v3, "access_denied"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_ac
iget-object v2, p0, Lcom/glympse/android/lib/c;->gF:Lcom/glympse/android/lib/GAccountListener;
new-instance v3, Lcom/glympse/android/lib/hk;
const/4 v4, 0x3
iget-object v5, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v5, v5, Lcom/glympse/android/lib/d;->hg:Ljava/lang/String;
iget-object v6, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v6, v6, Lcom/glympse/android/lib/d;->hh:Ljava/lang/String;
invoke-direct {v3, v4, v5, v6}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v1, v3}, Lcom/glympse/android/lib/GAccountListener;->failedToLogin(ILcom/glympse/android/api/GServerError;)V
goto :goto_8b
:cond_ac
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v2, v2, Lcom/glympse/android/lib/d;->hg:Ljava/lang/String;
const-string v3, "id"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_d0
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v2, v2, Lcom/glympse/android/lib/d;->hg:Ljava/lang/String;
const-string v3, "password"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_d0
iget-object v2, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v2, v2, Lcom/glympse/android/lib/d;->hg:Ljava/lang/String;
const-string v3, "invalid_credentials"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_e6
:cond_d0
iget-object v1, p0, Lcom/glympse/android/lib/c;->gF:Lcom/glympse/android/lib/GAccountListener;
const/16 v2, 0x10
new-instance v3, Lcom/glympse/android/lib/hk;
const/4 v4, 0x2
iget-object v5, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v5, v5, Lcom/glympse/android/lib/d;->hg:Ljava/lang/String;
iget-object v6, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v6, v6, Lcom/glympse/android/lib/d;->hh:Ljava/lang/String;
invoke-direct {v3, v4, v5, v6}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v2, v3}, Lcom/glympse/android/lib/GAccountListener;->failedToLogin(ILcom/glympse/android/api/GServerError;)V
goto :goto_8b
:cond_e6
iget-object v2, p0, Lcom/glympse/android/lib/c;->gF:Lcom/glympse/android/lib/GAccountListener;
const/16 v3, 0x20
new-instance v4, Lcom/glympse/android/lib/hk;
iget-object v5, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v5, v5, Lcom/glympse/android/lib/d;->hg:Ljava/lang/String;
iget-object v6, p0, Lcom/glympse/android/lib/c;->gP:Lcom/glympse/android/lib/d;
iget-object v6, v6, Lcom/glympse/android/lib/d;->hh:Ljava/lang/String;
invoke-direct {v4, v1, v5, v6}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v3, v4}, Lcom/glympse/android/lib/GAccountListener;->failedToLogin(ILcom/glympse/android/api/GServerError;)V
goto :goto_8b
.end method
.method public url(Ljava/lang/StringBuilder;)Z
.registers 3
const-string v0, "account/login?api_key="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/c;->gH:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "&id="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/c;->gK:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "&password="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/c;->gL:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "&device="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/c;->gO:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/c;->gN:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_4e
const-string v0, "&viewer="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/c;->gN:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_4e
const/4 v0, 0x1
return v0
.end method
.method public userAgent()Z
.registers 2
const/4 v0, 0x1
return v0
.end method