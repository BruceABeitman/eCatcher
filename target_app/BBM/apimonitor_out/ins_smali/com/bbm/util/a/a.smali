.class public final Lcom/bbm/util/a/a;
.super Ljava/lang/Object;
.source "ConversationHelper.java"
.implements Lcom/glympse/android/core/GCommon;
.field public a:Lcom/glympse/android/api/GGlympse;
.field public final b:Lcom/glympse/android/core/GStorageUnit;
.field public c:Lcom/glympse/android/core/GPrimitive;
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/util/a/a;->a:Lcom/glympse/android/api/GGlympse;
invoke-static {p1, p2}, Lcom/glympse/android/core/CoreFactory;->createStorage(Ljava/lang/Object;Ljava/lang/String;)Lcom/glympse/android/core/GStorageUnit;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/a/a;->b:Lcom/glympse/android/core/GStorageUnit;
iget-object v0, p0, Lcom/bbm/util/a/a;->b:Lcom/glympse/android/core/GStorageUnit;
invoke-interface {v0}, Lcom/glympse/android/core/GStorageUnit;->load()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;
iget-object v0, p0, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_1f
const/4 v0, 0x2
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;
:cond_1f
return-void
.end method
.method public static a(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
.registers 5
invoke-interface {p0}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v1
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_14
invoke-interface {p0, v0}, Lcom/glympse/android/core/GPrimitive;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_15
invoke-interface {p0, v0}, Lcom/glympse/android/core/GPrimitive;->remove(I)V
:cond_14
return-void
:cond_15
add-int/lit8 v0, v0, 0x1
goto :goto_5
.end method
.method public final a(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/bbm/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
const/4 v0, 0x1
goto :goto_7
.end method
.method public final b(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return-object v0
:cond_4
iget-object v1, p0, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v1, p1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-eqz v1, :cond_3
const-string v2, "outgoing"
invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-eqz v1, :cond_3
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public final c(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
.registers 4
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return-object v0
:cond_4
iget-object v1, p0, Lcom/bbm/util/a/a;->a:Lcom/glympse/android/api/GGlympse;
if-eqz v1, :cond_3
iget-object v1, p0, Lcom/bbm/util/a/a;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v1}, Lcom/glympse/android/api/GGlympse;->isStarted()Z
move-result v1
if-eqz v1, :cond_3
iget-object v1, p0, Lcom/bbm/util/a/a;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v1}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/api/GHistoryManager;->isSynced()Z
move-result v1
if-eqz v1, :cond_3
iget-object v0, p0, Lcom/bbm/util/a/a;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
invoke-interface {v0, p1}, Lcom/glympse/android/api/GHistoryManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
goto :goto_3
.end method