.class  Lcom/glympse/android/lib/bo;
.super Ljava/lang/Object;
.source "FavoritesManager.java"
.implements Lcom/glympse/android/lib/GFavoritesManager;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private hE:Lcom/glympse/android/lib/CommonSink;
.field private iC:Lcom/glympse/android/hal/GContextHolder;
.field private iD:Ljava/lang/String;
.field private jO:Lcom/glympse/android/lib/hw;
.field private kL:Lcom/glympse/android/api/GTicket;
.field private kM:Lcom/glympse/android/hal/GVector;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/lib/hw;
invoke-direct {v0}, Lcom/glympse/android/lib/hw;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bo;->jO:Lcom/glympse/android/lib/hw;
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "FavoritesManager"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/bo;->hE:Lcom/glympse/android/lib/CommonSink;
return-void
.end method
.method private bd()V
.registers 7
const/4 v1, 0x0
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
iget-object v0, p0, Lcom/glympse/android/lib/bo;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_11
:cond_10
return-void
:cond_11
const-string v2, "dr"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-eqz v2, :cond_27
new-instance v3, Lcom/glympse/android/lib/hz;
invoke-direct {v3, v1}, Lcom/glympse/android/lib/hz;-><init>(Z)V
invoke-interface {v3, v2}, Lcom/glympse/android/lib/GTicketPrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V
iput-object v3, p0, Lcom/glympse/android/lib/bo;->kL:Lcom/glympse/android/api/GTicket;
:cond_27
iget-object v2, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2}, Lcom/glympse/android/hal/GVector;->removeAllElements()V
const-string v2, "favs"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-eqz v2, :cond_10
invoke-interface {v2}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v3
move v0, v1
:goto_3d
if-ge v0, v3, :cond_10
invoke-interface {v2, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
new-instance v5, Lcom/glympse/android/lib/hz;
invoke-direct {v5, v1}, Lcom/glympse/android/lib/hz;-><init>(Z)V
invoke-interface {v5, v4}, Lcom/glympse/android/lib/GTicketPrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V
iget-object v4, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v4, v5}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_3d
.end method
.method public addFavorite(Lcom/glympse/android/api/GTicket;)V
.registers 6
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_a
invoke-direct {p0}, Lcom/glympse/android/lib/bo;->bd()V
:cond_a
check-cast p1, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->clone()Lcom/glympse/android/api/GTicket;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getName()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setName(Ljava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/glympse/android/hal/GVector;->insertElementAt(Ljava/lang/Object;I)V
iget-object v1, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v1, :cond_2
iget-object v1, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const v2, 0x10005
const/4 v3, 0x1
invoke-virtual {p0, v1, v2, v3, v0}, Lcom/glympse/android/lib/bo;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_2
.end method
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/bo;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public associateContext(JLjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/bo;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V
return-void
.end method
.method public clearContext(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/bo;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V
return-void
.end method
.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/bo;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/bo;->hE:Lcom/glympse/android/lib/CommonSink;
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
.method public findMatch(Lcom/glympse/android/api/GTicket;)Lcom/glympse/android/api/GTicket;
.registers 7
const/4 v1, 0x0
if-nez p1, :cond_5
move-object v0, v1
:goto_4
:cond_4
return-object v0
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_c
invoke-direct {p0}, Lcom/glympse/android/lib/bo;->bd()V
:cond_c
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v3
const/4 v0, 0x0
move v2, v0
:goto_14
if-ge v2, v3, :cond_28
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-interface {v0, p1}, Lcom/glympse/android/api/GTicket;->isEqual(Lcom/glympse/android/core/GCommon;)Z
move-result v4
if-nez v4, :cond_4
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_14
:cond_28
move-object v0, v1
goto :goto_4
.end method
.method public getContext(J)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/bo;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContextKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bo;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getDraft()Lcom/glympse/android/api/GTicket;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/glympse/android/lib/bo;->bd()V
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kL:Lcom/glympse/android/api/GTicket;
return-object v0
.end method
.method public getFavorites()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/glympse/android/lib/bo;->bd()V
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bo;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public hasContext(J)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/bo;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z
move-result v0
return v0
.end method
.method public hasFavorite(Lcom/glympse/android/api/GTicket;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/bo;->findMatch(Lcom/glympse/android/api/GTicket;)Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
.registers 8
iput-object p1, p0, Lcom/glympse/android/lib/bo;->iC:Lcom/glympse/android/hal/GContextHolder;
iput-object p2, p0, Lcom/glympse/android/lib/bo;->iD:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/bo;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/bo;->iC:Lcom/glympse/android/hal/GContextHolder;
iget-object v2, p0, Lcom/glympse/android/lib/bo;->iD:Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "favorites_v2"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public moveFavorite(II)V
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/glympse/android/lib/bo;->bd()V
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v0
const/4 v1, 0x2
if-lt v0, v1, :cond_16
if-ge p1, v0, :cond_16
if-ge p2, v0, :cond_16
if-ne p1, p2, :cond_17
:cond_16
:goto_16
return-void
:cond_17
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
iget-object v1, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1, p1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
iget-object v1, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1, v0, p2}, Lcom/glympse/android/hal/GVector;->insertElementAt(Ljava/lang/Object;I)V
iget-object v0, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const v1, 0x10005
const/4 v2, 0x4
const/4 v3, 0x0
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/bo;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_16
.end method
.method public removeFavorite(I)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/glympse/android/lib/bo;->bd()V
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v0
if-lt p1, v0, :cond_10
:goto_f
:cond_f
return-void
:cond_10
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
iget-object v1, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1, p1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
iget-object v1, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v1, :cond_f
iget-object v1, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const v2, 0x10005
const/4 v3, 0x2
invoke-virtual {p0, v1, v2, v3, v0}, Lcom/glympse/android/lib/bo;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_f
.end method
.method public removeFavorite(Lcom/glympse/android/api/GTicket;)V
.registers 9
const/4 v3, 0x0
if-nez p1, :cond_4
:cond_3
return-void
:cond_4
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_b
invoke-direct {p0}, Lcom/glympse/android/lib/bo;->bd()V
:cond_b
new-instance v4, Lcom/glympse/android/hal/GVector;
invoke-direct {v4}, Lcom/glympse/android/hal/GVector;-><init>()V
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
move v1, v3
:goto_17
if-ge v1, v2, :cond_3a
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-interface {v0, p1}, Lcom/glympse/android/api/GTicket;->isEqual(Lcom/glympse/android/core/GCommon;)Z
move-result v5
if-eqz v5, :cond_33
iget-object v5, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v5, v1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
add-int/lit8 v1, v1, -0x1
add-int/lit8 v2, v2, -0x1
invoke-virtual {v4, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
:cond_33
move v0, v1
move v1, v2
add-int/lit8 v0, v0, 0x1
move v2, v1
move v1, v0
goto :goto_17
:cond_3a
iget-object v0, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_3
invoke-virtual {v4}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
move v1, v3
:goto_43
if-ge v1, v2, :cond_3
invoke-virtual {v4, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
iget-object v3, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const v5, 0x10005
const/4 v6, 0x2
invoke-virtual {p0, v3, v5, v6, v0}, Lcom/glympse/android/lib/bo;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_43
.end method
.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/bo;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public save()V
.registers 9
const/4 v7, 0x2
const/4 v2, 0x0
new-instance v3, Lcom/glympse/android/lib/Primitive;
invoke-direct {v3, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kL:Lcom/glympse/android/api/GTicket;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kL:Lcom/glympse/android/api/GTicket;
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GTicketPrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V
const-string v0, "dr"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kL:Lcom/glympse/android/api/GTicket;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GPlacePrivate;
if-eqz v0, :cond_43
invoke-interface {v0}, Lcom/glympse/android/lib/GPlacePrivate;->getImage()Lcom/glympse/android/api/GImage;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GImagePrivate;
if-eqz v0, :cond_43
iget-object v1, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v1, :cond_43
iget-object v1, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getImageCache()Lcom/glympse/android/lib/GImageCache;
move-result-object v1
invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->getUrl()Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v0, v4}, Lcom/glympse/android/lib/GImageCache;->cache(Lcom/glympse/android/api/GImage;Ljava/lang/String;)Z
:cond_43
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v4
new-instance v5, Lcom/glympse/android/lib/Primitive;
const/4 v0, 0x1
invoke-direct {v5, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
move v1, v2
:goto_50
if-ge v1, v4, :cond_69
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
new-instance v6, Lcom/glympse/android/lib/Primitive;
invoke-direct {v6, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface {v0, v6, v2}, Lcom/glympse/android/lib/GTicketPrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V
invoke-interface {v5, v6}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_50
:cond_69
const-string v0, "favs"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v0, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
iget-object v0, p0, Lcom/glympse/android/lib/bo;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0, v3}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public setActive(Z)V
.registers 3
if-nez p1, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_9
invoke-virtual {p0}, Lcom/glympse/android/lib/bo;->save()V
:cond_9
return-void
.end method
.method public setDraft(Lcom/glympse/android/api/GTicket;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/glympse/android/lib/bo;->bd()V
:cond_7
iput-object p1, p0, Lcom/glympse/android/lib/bo;->kL:Lcom/glympse/android/api/GTicket;
return-void
.end method
.method public start(Lcom/glympse/android/api/GGlympse;)V
.registers 2
check-cast p1, Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p1, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method
.method public stop()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bo;->kM:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_7
invoke-virtual {p0}, Lcom/glympse/android/lib/bo;->save()V
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/bo;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/bo;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method