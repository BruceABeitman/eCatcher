.class  Lcom/glympse/android/lib/hv;
.super Ljava/lang/Object;
.source "SocialManager.java"
.implements Lcom/glympse/android/lib/GSocialManagerPrivate;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private iL:Lcom/glympse/android/core/GPrimitive;
.field private jO:Lcom/glympse/android/lib/hw;
.field private sA:Lcom/glympse/android/core/GPrimitive;
.field private sy:Lcom/glympse/android/core/GPrimitive;
.field private sz:Lcom/glympse/android/core/GPrimitive;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/lib/hw;
invoke-direct {v0}, Lcom/glympse/android/lib/hw;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
return-void
.end method
.method private cJ()V
.registers 5
const/4 v3, 0x2
iget-object v0, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_c
new-instance v0, Lcom/glympse/android/lib/Primitive;
invoke-direct {v0, v3}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
:cond_c
iget-object v0, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
const-string v1, "facebook"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
iget-object v0, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
const-string v1, "twitter"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
iget-object v0, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
const-string v1, "evernote"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_4e
new-instance v0, Lcom/glympse/android/lib/Primitive;
invoke-direct {v0, v3}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
iget-object v0, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
const-string v1, "facebook"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_4e
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_66
new-instance v0, Lcom/glympse/android/lib/Primitive;
invoke-direct {v0, v3}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
iget-object v0, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
const-string v1, "twitter"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_66
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_7e
new-instance v0, Lcom/glympse/android/lib/Primitive;
invoke-direct {v0, v3}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
iget-object v0, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
const-string v1, "evernote"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_7e
return-void
.end method
.method public clearEvernoteToken()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
const-string v1, "token"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
goto :goto_4
.end method
.method public clearFacebookToken()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
const-string v1, "token"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public clearTwitterCredentials()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ck"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "cs"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ot"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ots"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public getAuthenticated(I)I
.registers 3
sparse-switch p1, :sswitch_data_1a
const/4 v0, 0x0
:goto_4
return v0
:sswitch_5
invoke-virtual {p0}, Lcom/glympse/android/lib/hv;->hasFacebookToken()Z
move-result v0
:goto_9
if-eqz v0, :cond_17
const/4 v0, 0x1
goto :goto_4
:sswitch_d
invoke-virtual {p0}, Lcom/glympse/android/lib/hv;->hasTwitterCredentials()Z
move-result v0
goto :goto_9
:sswitch_12
invoke-virtual {p0}, Lcom/glympse/android/lib/hv;->hasEvernoteToken()Z
move-result v0
goto :goto_9
:cond_17
const/4 v0, 0x2
goto :goto_4
nop
:sswitch_data_1a
.sparse-switch
0x4 -> :sswitch_d
0x5 -> :sswitch_5
0xa -> :sswitch_12
.end sparse-switch
.end method
.method public getEvernoteToken()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
const-string v1, "token"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public getFacebookToken()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
const-string v1, "token"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public getTwitterConsumerKey()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ck"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public getTwitterConsumerSecret()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "cs"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public getTwitterOauthToken()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ot"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public getTwitterOauthTokenSecret()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ots"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public hasEvernoteToken()Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
const-string v1, "token"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public hasFacebookToken()Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
const-string v1, "token"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public hasTwitterCredentials()Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ck"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "cs"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ot"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ots"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3e
const/4 v0, 0x1
:goto_3d
return v0
:cond_3e
const/4 v0, 0x0
goto :goto_3d
.end method
.method public registerEvernoteToken(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
if-eqz v0, :cond_a
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sA:Lcom/glympse/android/core/GPrimitive;
const-string v1, "token"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
goto :goto_a
.end method
.method public registerFacebookToken(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
if-eqz v0, :cond_a
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
const-string v1, "token"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
goto :goto_a
.end method
.method public registerTwitterCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
if-eqz v0, :cond_1c
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1c
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1c
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1c
invoke-static {p4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1d
:cond_1c
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ck"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "cs"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ot"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
const-string v1, "ots"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
goto :goto_1c
.end method
.method public setActive(Z)V
.registers 4
if-nez p1, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
:cond_9
return-void
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 6
iput-object p1, p0, Lcom/glympse/android/lib/hv;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/hv;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v2, 0x0
const-string v3, "social_v2"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
invoke-direct {p0}, Lcom/glympse/android/lib/hv;->cJ()V
return-void
.end method
.method public stop()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
iget-object v0, p0, Lcom/glympse/android/lib/hv;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V
iput-object v2, p0, Lcom/glympse/android/lib/hv;->sy:Lcom/glympse/android/core/GPrimitive;
iput-object v2, p0, Lcom/glympse/android/lib/hv;->sz:Lcom/glympse/android/core/GPrimitive;
iput-object v2, p0, Lcom/glympse/android/lib/hv;->iL:Lcom/glympse/android/core/GPrimitive;
iput-object v2, p0, Lcom/glympse/android/lib/hv;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method