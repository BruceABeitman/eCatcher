.class  Lcom/glympse/android/lib/ek;
.super Lcom/glympse/android/lib/j;
.source "InviteCreate.java"
.field protected _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field protected iy:Lcom/glympse/android/api/GEventSink;
.field private kQ:Ljava/lang/String;
.field private nV:Z
.field private nW:Z
.field protected oa:Ljava/lang/String;
.field protected od:I
.field protected oe:I
.field protected of:I
.field protected og:I
.field protected oh:Lcom/glympse/android/lib/GTicketPrivate;
.field protected oi:Lcom/glympse/android/lib/GInvitePrivate;
.field protected oj:I
.field protected ok:Ljava/lang/String;
.field protected ol:Ljava/lang/String;
.field protected om:Ljava/lang/String;
.field private on:Ljava/lang/String;
.field private oo:Z
.field private op:Ljava/lang/String;
.field private oq:Ljava/lang/String;
.field private or:Ljava/lang/String;
.field private os:Ljava/lang/String;
.field private ot:Ljava/lang/String;
.field private ou:Ljava/lang/String;
.field private ov:Lcom/glympse/android/lib/el;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V
new-instance v0, Lcom/glympse/android/lib/el;
invoke-direct {v0}, Lcom/glympse/android/lib/el;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iput-object v0, p0, Lcom/glympse/android/lib/ek;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public a(Ljava/lang/StringBuilder;)V
.registers 2
return-void
.end method
.method public b(Ljava/lang/StringBuilder;)V
.registers 2
return-void
.end method
.method public cancel()V
.registers 2
new-instance v0, Lcom/glympse/android/lib/el;
invoke-direct {v0}, Lcom/glympse/android/lib/el;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iput-object v0, p0, Lcom/glympse/android/lib/ek;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public cc()V
.registers 1
return-void
.end method
.method public cd()V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getType()I
move-result v0
iput v0, p0, Lcom/glympse/android/lib/ek;->oj:I
iget v0, p0, Lcom/glympse/android/lib/ek;->oj:I
invoke-static {v0}, Lcom/glympse/android/lib/ej;->l(I)Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/ek;->oo:Z
iget v0, p0, Lcom/glympse/android/lib/ek;->oj:I
packed-switch v0, :pswitch_data_17a
:pswitch_1c
:goto_1c
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getSubtype()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ek;->ok:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ek;->on:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getAddress()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ek;->ol:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getCode()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ek;->om:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getBrand()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ek;->kQ:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->isVisible()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/ek;->nV:Z
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->isCreateOnly()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/ek;->nW:Z
iget-boolean v0, p0, Lcom/glympse/android/lib/ek;->nW:Z
if-eqz v0, :cond_5a
iput-boolean v2, p0, Lcom/glympse/android/lib/ek;->oo:Z
:cond_5a
return-void
:pswitch_5b
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->canDeviceSendSms()I
move-result v0
iget-object v3, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v3}, Lcom/glympse/android/lib/GGlympsePrivate;->getSmsSendMode()I
move-result v3
packed-switch v3, :pswitch_data_18e
goto :goto_1c
:pswitch_6b
if-eq v1, v0, :cond_71
move v0, v1
:goto_6e
iput-boolean v0, p0, Lcom/glympse/android/lib/ek;->oo:Z
goto :goto_1c
:cond_71
move v0, v2
goto :goto_6e
:pswitch_73
const/4 v3, 0x3
if-ne v3, v0, :cond_79
:goto_76
iput-boolean v1, p0, Lcom/glympse/android/lib/ek;->oo:Z
goto :goto_1c
:cond_79
move v1, v2
goto :goto_76
:pswitch_7b
iput-boolean v1, p0, Lcom/glympse/android/lib/ek;->oo:Z
goto :goto_1c
:pswitch_7e
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GLinkedAccountsManager;->getAccounts()Lcom/glympse/android/core/GArray;
move-result-object v3
invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
if-lez v3, :cond_a8
invoke-static {}, Lcom/glympse/android/api/GC;->LINKED_ACCOUNT_TYPE_TWITTER()Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/glympse/android/api/GC;->LINKED_ACCOUNT_PROPERTY_INVITE_CLIENT_SEND()Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v3, v4}, Lcom/glympse/android/api/GLinkedAccountsManager;->getAccountProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_a2
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getBool()Z
move-result v0
if-nez v0, :cond_a6
:cond_a2
:goto_a2
iput-boolean v1, p0, Lcom/glympse/android/lib/ek;->oo:Z
goto/16 :goto_1c
:cond_a6
move v1, v2
goto :goto_a2
:cond_a8
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getSocialManager()Lcom/glympse/android/api/GSocialManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GSocialManagerPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GSocialManagerPrivate;->getTwitterConsumerKey()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/glympse/android/lib/ek;->oq:Ljava/lang/String;
invoke-interface {v0}, Lcom/glympse/android/lib/GSocialManagerPrivate;->getTwitterConsumerSecret()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/glympse/android/lib/ek;->or:Ljava/lang/String;
invoke-interface {v0}, Lcom/glympse/android/lib/GSocialManagerPrivate;->getTwitterOauthToken()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/glympse/android/lib/ek;->os:Ljava/lang/String;
invoke-interface {v0}, Lcom/glympse/android/lib/GSocialManagerPrivate;->getTwitterOauthTokenSecret()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ek;->ot:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oq:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_ec
iget-object v0, p0, Lcom/glympse/android/lib/ek;->or:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_ec
iget-object v0, p0, Lcom/glympse/android/lib/ek;->os:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_ec
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ot:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_ec
:goto_e8
iput-boolean v1, p0, Lcom/glympse/android/lib/ek;->oo:Z
goto/16 :goto_1c
:cond_ec
move v1, v2
goto :goto_e8
:pswitch_ee
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GLinkedAccountsManager;->getAccounts()Lcom/glympse/android/core/GArray;
move-result-object v3
invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
if-lez v3, :cond_118
invoke-static {}, Lcom/glympse/android/api/GC;->LINKED_ACCOUNT_TYPE_FACEBOOK()Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/glympse/android/api/GC;->LINKED_ACCOUNT_PROPERTY_INVITE_CLIENT_SEND()Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v3, v4}, Lcom/glympse/android/api/GLinkedAccountsManager;->getAccountProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_112
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getBool()Z
move-result v0
if-nez v0, :cond_116
:cond_112
:goto_112
iput-boolean v1, p0, Lcom/glympse/android/lib/ek;->oo:Z
goto/16 :goto_1c
:cond_116
move v1, v2
goto :goto_112
:cond_118
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getSocialManager()Lcom/glympse/android/api/GSocialManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GSocialManagerPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GSocialManagerPrivate;->getFacebookToken()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ek;->op:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->op:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_132
:goto_12e
iput-boolean v1, p0, Lcom/glympse/android/lib/ek;->oo:Z
goto/16 :goto_1c
:cond_132
move v1, v2
goto :goto_12e
:pswitch_134
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GLinkedAccountsManager;->getAccounts()Lcom/glympse/android/core/GArray;
move-result-object v3
invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
if-lez v3, :cond_15e
invoke-static {}, Lcom/glympse/android/api/GC;->LINKED_ACCOUNT_TYPE_EVERNOTE()Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/glympse/android/api/GC;->LINKED_ACCOUNT_PROPERTY_INVITE_CLIENT_SEND()Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v3, v4}, Lcom/glympse/android/api/GLinkedAccountsManager;->getAccountProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_158
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getBool()Z
move-result v0
if-nez v0, :cond_15c
:cond_158
:goto_158
iput-boolean v1, p0, Lcom/glympse/android/lib/ek;->oo:Z
goto/16 :goto_1c
:cond_15c
move v1, v2
goto :goto_158
:cond_15e
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getSocialManager()Lcom/glympse/android/api/GSocialManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GSocialManagerPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GSocialManagerPrivate;->getEvernoteToken()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ek;->ou:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ou:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_178
:goto_174
iput-boolean v1, p0, Lcom/glympse/android/lib/ek;->oo:Z
goto/16 :goto_1c
:cond_178
move v1, v2
goto :goto_174
:pswitch_data_18e
.packed-switch 0x1
:pswitch_6b
:pswitch_73
:pswitch_7b
.end packed-switch
:pswitch_data_17a
.packed-switch 0x3
:pswitch_5b
:pswitch_7e
:pswitch_ee
:pswitch_1c
:pswitch_1c
:pswitch_1c
:pswitch_1c
:pswitch_134
.end packed-switch
.end method
.method public g(Z)V
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const/4 v0, 0x2
iget-object v1, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GInvitePrivate;->getState()I
move-result v1
if-ne v0, v1, :cond_8
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GInvitePrivate;->completeClientSideSend(Z)Z
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
if-eqz v0, :cond_8
iget-object v1, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
iget-object v2, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget v3, p0, Lcom/glympse/android/lib/ek;->od:I
if-eqz p1, :cond_2b
iget v0, p0, Lcom/glympse/android/lib/ek;->of:I
:goto_25
iget-object v4, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
invoke-interface {v1, v2, v3, v0, v4}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_8
:cond_2b
iget v0, p0, Lcom/glympse/android/lib/ek;->og:I
goto :goto_25
.end method
.method public process()Z
.registers 8
const/4 v1, 0x7
const/4 v6, 0x3
const/4 v3, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v0, v0, Lcom/glympse/android/lib/el;->hf:Ljava/lang/String;
const-string v4, "ok"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_154
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v0, v0, Lcom/glympse/android/lib/el;->mi:Ljava/lang/String;
if-eqz v0, :cond_154
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v0, v0, Lcom/glympse/android/lib/el;->kq:Ljava/lang/String;
if-eqz v0, :cond_154
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v1, v1, Lcom/glympse/android/lib/el;->mi:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setCode(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v1, v1, Lcom/glympse/android/lib/el;->kq:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v1, v1, Lcom/glympse/android/lib/el;->oa:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setText(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-wide v4, v1, Lcom/glympse/android/lib/el;->nX:J
invoke-interface {v0, v4, v5}, Lcom/glympse/android/lib/GInvitePrivate;->setCreatedTime(J)V
iget-boolean v0, p0, Lcom/glympse/android/lib/ek;->oo:Z
if-eqz v0, :cond_62
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget v1, v1, Lcom/glympse/android/lib/el;->cb:I
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget v3, p0, Lcom/glympse/android/lib/ek;->od:I
iget v4, p0, Lcom/glympse/android/lib/ek;->of:I
iget-object v5, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
invoke-interface {v0, v1, v3, v4, v5}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:goto_5e
:cond_5e
invoke-virtual {p0}, Lcom/glympse/android/lib/ek;->cc()V
:goto_61
return v2
:cond_62
iget-boolean v0, p0, Lcom/glympse/android/lib/ek;->nW:Z
if-eqz v0, :cond_7d
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, v6}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget v3, p0, Lcom/glympse/android/lib/ek;->od:I
iget v4, p0, Lcom/glympse/android/lib/ek;->oe:I
iget-object v5, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
invoke-interface {v0, v1, v3, v4, v5}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_5e
:cond_7d
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, v6}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V
iget v0, p0, Lcom/glympse/android/lib/ek;->oj:I
packed-switch v0, :pswitch_data_1b0
:pswitch_87
goto :goto_5e
:pswitch_88
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->canDeviceSendSms()I
move-result v0
if-ne v2, v0, :cond_cf
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->initiateClientSideSend()Z
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getSmsProvider()Lcom/glympse/android/hal/GSmsProvider;
move-result-object v1
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getAddress()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getText()Ljava/lang/String;
move-result-object v5
new-instance v6, Lcom/glympse/android/lib/em;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/ek;
invoke-direct {v6, v0}, Lcom/glympse/android/lib/em;-><init>(Lcom/glympse/android/lib/ek;)V
invoke-interface {v1, v4, v5, v6}, Lcom/glympse/android/hal/GSmsProvider;->sendSms(Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/hal/GSmsListener;)Z
move-result v0
if-nez v0, :cond_5e
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GInvitePrivate;->completeClientSideSend(Z)Z
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget v3, p0, Lcom/glympse/android/lib/ek;->od:I
iget v4, p0, Lcom/glympse/android/lib/ek;->og:I
iget-object v5, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
invoke-interface {v0, v1, v3, v4, v5}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_5e
:cond_cf
const/4 v1, 0x2
if-ne v1, v0, :cond_5e
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget v3, p0, Lcom/glympse/android/lib/ek;->od:I
iget v4, p0, Lcom/glympse/android/lib/ek;->oe:I
iget-object v5, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
invoke-interface {v0, v1, v3, v4, v5}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto/16 :goto_5e
:pswitch_e5
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createClipboard(Landroid/content/Context;)Lcom/glympse/android/hal/GClipboard;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GInvitePrivate;->getUrl()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GClipboard;->copy(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GInvitePrivate;->completeClientSideSend(Z)Z
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget v3, p0, Lcom/glympse/android/lib/ek;->od:I
iget v4, p0, Lcom/glympse/android/lib/ek;->of:I
iget-object v5, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
invoke-interface {v0, v1, v3, v4, v5}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto/16 :goto_5e
:pswitch_114
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget v3, p0, Lcom/glympse/android/lib/ek;->od:I
iget v4, p0, Lcom/glympse/android/lib/ek;->oe:I
iget-object v5, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
invoke-interface {v0, v1, v3, v4, v5}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto/16 :goto_5e
:pswitch_127
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getApplicationsManager()Lcom/glympse/android/api/GApplicationsManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GApplicationsManagerPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v3, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, v1, v3}, Lcom/glympse/android/lib/GApplicationsManagerPrivate;->send(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)Z
move-result v1
if-eqz v1, :cond_151
iget v0, p0, Lcom/glympse/android/lib/ek;->of:I
:goto_13b
iget-object v3, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v3, v1}, Lcom/glympse/android/lib/GInvitePrivate;->completeClientSideSend(Z)Z
iget-object v1, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
if-eqz v1, :cond_5e
iget-object v1, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
iget-object v3, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget v4, p0, Lcom/glympse/android/lib/ek;->od:I
iget-object v5, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
invoke-interface {v1, v3, v4, v0, v5}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto/16 :goto_5e
:cond_151
iget v0, p0, Lcom/glympse/android/lib/ek;->og:I
goto :goto_13b
:cond_154
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v0, v0, Lcom/glympse/android/lib/el;->hg:Ljava/lang/String;
const-string v4, "invalid_linked_account_token"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_196
const/16 v0, 0x8
iget-object v2, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/api/GLinkedAccountsManager;->refresh()Z
:goto_16b
iget-object v2, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v2, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V
iget-object v1, p0, Lcom/glympse/android/lib/ek;->oi:Lcom/glympse/android/lib/GInvitePrivate;
new-instance v2, Lcom/glympse/android/lib/hk;
iget-object v4, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v4, v4, Lcom/glympse/android/lib/el;->hg:Ljava/lang/String;
iget-object v5, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v5, v5, Lcom/glympse/android/lib/el;->hh:Ljava/lang/String;
invoke-direct {v2, v0, v4, v5}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GInvitePrivate;->setError(Lcom/glympse/android/api/GServerError;)V
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
if-eqz v0, :cond_193
iget-object v0, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget v2, p0, Lcom/glympse/android/lib/ek;->od:I
iget v4, p0, Lcom/glympse/android/lib/ek;->og:I
iget-object v5, p0, Lcom/glympse/android/lib/ek;->iy:Lcom/glympse/android/api/GEventSink;
invoke-interface {v0, v1, v2, v4, v5}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_193
move v2, v3
goto/16 :goto_61
:cond_196
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ov:Lcom/glympse/android/lib/el;
iget-object v0, v0, Lcom/glympse/android/lib/el;->hg:Ljava/lang/String;
const-string v4, "account_not_linked"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1ad
iget-object v0, p0, Lcom/glympse/android/lib/ek;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GLinkedAccountsManager;->refresh()Z
move v0, v1
goto :goto_16b
:cond_1ad
move v0, v2
goto :goto_16b
nop
:pswitch_data_1b0
.packed-switch 0x3
:pswitch_88
:pswitch_114
:pswitch_114
:pswitch_114
:pswitch_87
:pswitch_114
:pswitch_e5
:pswitch_114
:pswitch_127
.end packed-switch
.end method
.method public url(Ljava/lang/StringBuilder;)Z
.registers 4
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/ek;->a(Ljava/lang/StringBuilder;)V
const-string v0, "?locale="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getLanguage()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "&region="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getRegion()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "&type="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v0, p0, Lcom/glympse/android/lib/ek;->oj:I
invoke-static {v0}, Lcom/glympse/android/lib/ej;->n(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-boolean v0, p0, Lcom/glympse/android/lib/ek;->oo:Z
if-eqz v0, :cond_136
iget v0, p0, Lcom/glympse/android/lib/ek;->oj:I
sparse-switch v0, :sswitch_data_13e
:goto_32
:cond_32
const-string v0, "&send=server"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_37
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ok:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_4d
const-string v0, "&subtype="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ok:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_4d
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ol:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_63
const-string v0, "&address="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ol:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_63
iget-object v0, p0, Lcom/glympse/android/lib/ek;->om:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_79
const-string v0, "&bot="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->om:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_79
iget-object v0, p0, Lcom/glympse/android/lib/ek;->on:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_8f
const-string v0, "&name="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->on:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_8f
iget-boolean v0, p0, Lcom/glympse/android/lib/ek;->nV:Z
if-eqz v0, :cond_98
const-string v0, "&visible=all"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_98
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oa:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_ae
const-string v0, "&text="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->oa:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_ae
iget-object v0, p0, Lcom/glympse/android/lib/ek;->kQ:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_c4
const-string v0, "&brand="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->kQ:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_c4
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/ek;->b(Ljava/lang/StringBuilder;)V
const/4 v0, 0x1
return v0
:sswitch_c9
iget-object v0, p0, Lcom/glympse/android/lib/ek;->os:Ljava/lang/String;
if-eqz v0, :cond_32
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x400
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "consumer_key="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->oq:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "&consumer_secret="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->or:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "&oauth_token="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->os:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "&oauth_token_secret="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/ek;->ot:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "&data="
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_32
:sswitch_10e
iget-object v0, p0, Lcom/glympse/android/lib/ek;->op:Ljava/lang/String;
if-eqz v0, :cond_32
const-string v0, "&data="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->op:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_32
:sswitch_122
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ou:Ljava/lang/String;
if-eqz v0, :cond_32
const-string v0, "&data="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ek;->ou:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_32
:cond_136
const-string v0, "&send=client"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_37
nop
:sswitch_data_13e
.sparse-switch
0x4 -> :sswitch_c9
0x5 -> :sswitch_10e
0xa -> :sswitch_122
.end sparse-switch
.end method