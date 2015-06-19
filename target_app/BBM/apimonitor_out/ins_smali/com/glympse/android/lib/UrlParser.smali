.class public Lcom/glympse/android/lib/UrlParser;
.super Lcom/glympse/android/lib/UrlParserDepr;
.source "UrlParser.java"
.field private gN:Ljava/lang/String;
.field private hi:Ljava/lang/String;
.field private ht:Ljava/lang/String;
.field private rr:Lcom/glympse/android/hal/GVector;
.field private sI:Ljava/lang/String;
.field private sc:Ljava/lang/String;
.field private tG:Lcom/glympse/android/hal/GVector;
.field private tH:Lcom/glympse/android/hal/GVector;
.field private tI:Ljava/lang/String;
.field private tJ:Ljava/lang/String;
.field private tK:Lcom/glympse/android/api/GPlace;
.field private tL:J
.field private tM:Ljava/lang/String;
.field private tN:Ljava/lang/String;
.field private tO:Ljava/lang/String;
.field private tP:Ljava/lang/String;
.field private tQ:Ljava/lang/String;
.field private tR:Ljava/lang/String;
.field private tS:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/UrlParserDepr;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/glympse/android/lib/UrlParser;->sL:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/UrlParser;->tL:J
return-void
.end method
.method private G(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_12
const-string v0, "www."
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v0
if-nez v0, :cond_13
const/4 v0, 0x4
invoke-static {p1, v0}, Lcom/glympse/android/hal/Helpers;->substr(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/UrlParser;->hi:Ljava/lang/String;
:cond_12
:goto_12
return-void
:cond_13
iput-object p1, p0, Lcom/glympse/android/lib/UrlParser;->hi:Ljava/lang/String;
goto :goto_12
.end method
.method private H(Ljava/lang/String;)V
.registers 11
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_7
:cond_6
return-void
:cond_7
invoke-static {p1}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
if-eqz v3, :cond_6
invoke-interface {v3}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v4
const/4 v0, 0x1
invoke-interface {v3}, Lcom/glympse/android/core/GPrimitive;->type()I
move-result v1
if-ne v0, v1, :cond_6
if-eqz v4, :cond_6
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0, v4}, Lcom/glympse/android/hal/GVector;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/UrlParser;->rr:Lcom/glympse/android/hal/GVector;
const/4 v0, 0x0
move v2, v0
:goto_23
if-ge v2, v4, :cond_6
invoke-interface {v3, v2}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const/4 v1, 0x2
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->type()I
move-result v5
if-ne v1, v5, :cond_96
const-string v1, "type"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_96
invoke-static {v1}, Lcom/glympse/android/lib/ej;->t(Ljava/lang/String;)I
move-result v1
const-string v5, "subtype"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v0, v5}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v6, "name"
invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-interface {v0, v6}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v7, "address"
invoke-static {v7}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-interface {v0, v7}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string v8, "brand"
invoke-static {v8}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-interface {v0, v8}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-static {v1, v5, v6, v7}, Lcom/glympse/android/api/GlympseFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v1
if-eqz v1, :cond_96
const-string v5, "create_only"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v0, v5}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_8e
const-string v5, "create_only"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v0, v5}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z
move-result v5
move-object v0, v1
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, v5}, Lcom/glympse/android/lib/GInvitePrivate;->setCreateOnly(Z)V
:cond_8e
invoke-interface {v1, v8}, Lcom/glympse/android/api/GInvite;->setBrand(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->rr:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
:cond_96
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_23
.end method
.method private I(Ljava/lang/String;)V
.registers 8
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-static {p1}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_6
const/4 v1, 0x2
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->type()I
move-result v2
if-ne v1, v2, :cond_6
const-string v1, "latitude"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D
move-result-wide v1
const-string v3, "longitude"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D
move-result-wide v3
const-string v5, "name"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v0, v5}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v2, v3, v4, v0}, Lcom/glympse/android/api/GlympseFactory;->createPlace(DDLjava/lang/String;)Lcom/glympse/android/api/GPlace;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tK:Lcom/glympse/android/api/GPlace;
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tK:Lcom/glympse/android/api/GPlace;
invoke-interface {v0}, Lcom/glympse/android/api/GPlace;->hasLocation()Z
move-result v0
if-nez v0, :cond_6
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tK:Lcom/glympse/android/api/GPlace;
goto :goto_6
.end method
.method private J(Ljava/lang/String;)V
.registers 6
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_7
:cond_6
return-void
:cond_7
invoke-static {p1}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-eqz v1, :cond_6
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v2
const/4 v0, 0x1
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->type()I
move-result v3
if-ne v0, v3, :cond_6
const/4 v0, 0x0
:goto_19
if-ge v0, v2, :cond_6
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/glympse/android/lib/UrlParser;->parseParameter(Ljava/lang/String;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_19
.end method
.method private K(Ljava/lang/String;)V
.registers 6
const/4 v0, 0x1
invoke-static {p1, v0}, Lcom/glympse/android/lib/ej;->f(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_8
:goto_7
:cond_7
return-void
:cond_8
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tH:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_19
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tH:Lcom/glympse/android/hal/GVector;
:cond_13
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_7
:cond_19
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_21
if-ge v1, v3, :cond_13
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tH:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_7
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_21
.end method
.method public static cleanupBaseUrl(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/4 v4, -0x1
const/4 v2, 0x0
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
move-object v1, v2
:goto_9
:cond_9
return-object v1
:cond_a
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_16
move-object v1, v2
goto :goto_9
:cond_16
const/16 v1, 0x2f
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-nez v1, :cond_20
move-object v1, v2
goto :goto_9
:cond_20
if-eq v4, v1, :cond_63
const/4 v3, 0x0
invoke-static {v0, v3, v1}, Lcom/glympse/android/hal/Helpers;->substrlen(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_28
invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
check-cast v0, [C
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v5
add-int/lit8 v3, v5, -0x1
:goto_34
if-ltz v3, :cond_61
const/16 v6, 0x2e
aget-char v7, v0, v3
if-ne v6, v7, :cond_46
move v0, v3
:goto_3d
if-eq v4, v0, :cond_44
sub-int v0, v5, v0
const/4 v3, 0x2
if-gt v0, v3, :cond_49
:cond_44
move-object v1, v2
goto :goto_9
:cond_46
add-int/lit8 v3, v3, -0x1
goto :goto_34
:cond_49
const-string v0, "api."
invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_9
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "api."
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_9
:cond_61
move v0, v4
goto :goto_3d
:cond_63
move-object v1, v0
goto :goto_28
.end method
.method public static prepareAuthUrlServer(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static prepareBaseUrlConfig(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/v2/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->filenameEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static prepareBaseUrlServer(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->BASE_URL_SUFFIX()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getInitialAvatar()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tJ:Ljava/lang/String;
return-object v0
.end method
.method public getInitialNickname()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tI:Ljava/lang/String;
return-object v0
.end method
.method public getInviteCodes()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tG:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getLogLevel()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tR:Ljava/lang/String;
return-object v0
.end method
.method public getPublicGroups()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tH:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getScreen()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tS:Ljava/lang/String;
return-object v0
.end method
.method public getServer()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->hi:Ljava/lang/String;
return-object v0
.end method
.method public getSource()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->sI:Ljava/lang/String;
return-object v0
.end method
.method public getTicket()Lcom/glympse/android/api/GTicket;
.registers 8
const/4 v6, -0x1
const/4 v2, 0x0
const/4 v5, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->rr:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->rr:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
if-lez v3, :cond_22
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
if-nez v0, :cond_22
invoke-static {v2, v5, v5}, Lcom/glympse/android/api/GlympseFactory;->createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
:cond_22
move v1, v2
:goto_23
if-ge v1, v3, :cond_36
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->rr:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
iget-object v4, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v4, v0}, Lcom/glympse/android/lib/GTicketPrivate;->addInvite(Lcom/glympse/android/api/GInvite;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_23
:cond_36
iput-object v5, p0, Lcom/glympse/android/lib/UrlParser;->rr:Lcom/glympse/android/hal/GVector;
:cond_38
iget v0, p0, Lcom/glympse/android/lib/UrlParser;->sL:I
if-ltz v0, :cond_51
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
if-nez v0, :cond_48
invoke-static {v2, v5, v5}, Lcom/glympse/android/api/GlympseFactory;->createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
:cond_48
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget v1, p0, Lcom/glympse/android/lib/UrlParser;->sL:I
invoke-interface {v0, v1, v5, v5}, Lcom/glympse/android/lib/GTicketPrivate;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z
iput v6, p0, Lcom/glympse/android/lib/UrlParser;->sL:I
:cond_51
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tK:Lcom/glympse/android/api/GPlace;
if-eqz v0, :cond_6a
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
if-nez v0, :cond_61
invoke-static {v2, v5, v5}, Lcom/glympse/android/api/GlympseFactory;->createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
:cond_61
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/UrlParser;->tK:Lcom/glympse/android/api/GPlace;
invoke-interface {v0, v6, v5, v1}, Lcom/glympse/android/lib/GTicketPrivate;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z
iput-object v5, p0, Lcom/glympse/android/lib/UrlParser;->tK:Lcom/glympse/android/api/GPlace;
:cond_6a
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tT:Ljava/lang/String;
if-eqz v0, :cond_83
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
if-nez v0, :cond_7a
invoke-static {v2, v5, v5}, Lcom/glympse/android/api/GlympseFactory;->createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
:cond_7a
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/UrlParser;->tT:Ljava/lang/String;
invoke-interface {v0, v6, v1, v5}, Lcom/glympse/android/lib/GTicketPrivate;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z
iput-object v5, p0, Lcom/glympse/android/lib/UrlParser;->tT:Ljava/lang/String;
:cond_83
invoke-virtual {p0}, Lcom/glympse/android/lib/UrlParser;->cQ()V
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
if-eqz v0, :cond_122
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->sI:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_126
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/UrlParser;->sI:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setSource(Ljava/lang/String;)V
:goto_99
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
const-wide v1, 0x1000000000003L
new-instance v3, Ljava/lang/Long;
iget-wide v4, p0, Lcom/glympse/android/lib/UrlParser;->tL:J
invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->associateContext(JLjava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tO:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_be
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
const-wide v1, 0x1000000000001L
iget-object v3, p0, Lcom/glympse/android/lib/UrlParser;->tO:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->associateContext(JLjava/lang/Object;)V
:cond_be
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tP:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_d2
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
const-wide v1, 0x1000000000002L
iget-object v3, p0, Lcom/glympse/android/lib/UrlParser;->tP:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->associateContext(JLjava/lang/Object;)V
:cond_d2
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tM:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_e6
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
const-wide v1, 0x1000000000004L
iget-object v3, p0, Lcom/glympse/android/lib/UrlParser;->tM:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->associateContext(JLjava/lang/Object;)V
:cond_e6
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tN:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_fa
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
const-wide v1, 0x1000000000005L
iget-object v3, p0, Lcom/glympse/android/lib/UrlParser;->tN:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->associateContext(JLjava/lang/Object;)V
:cond_fa
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->ht:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10e
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
const-wide v1, 0x1000000000006L
iget-object v3, p0, Lcom/glympse/android/lib/UrlParser;->ht:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->associateContext(JLjava/lang/Object;)V
:cond_10e
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->sc:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_122
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
const-wide v1, 0x1000000000007L
iget-object v3, p0, Lcom/glympse/android/lib/UrlParser;->sc:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->associateContext(JLjava/lang/Object;)V
:cond_122
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
goto/16 :goto_9
:cond_126
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tO:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_15f
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tO:Ljava/lang/String;
const/16 v1, 0x3a
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "url_"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
if-eq v6, v0, :cond_15c
iget-object v3, p0, Lcom/glympse/android/lib/UrlParser;->tO:Ljava/lang/String;
invoke-static {v3, v2, v0}, Lcom/glympse/android/hal/Helpers;->substrlen(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
:goto_14d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setSource(Ljava/lang/String;)V
goto/16 :goto_99
:cond_15c
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tO:Ljava/lang/String;
goto :goto_14d
:cond_15f
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-static {}, Lcom/glympse/android/lib/GCP;->SOURCE_URL()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setSource(Ljava/lang/String;)V
goto/16 :goto_99
.end method
.method public getViewer()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->gN:Ljava/lang/String;
return-object v0
.end method
.method public parseParameter(Ljava/lang/String;)Z
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
move v0, v1
:goto_9
return v0
:cond_a
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Lcom/glympse/android/lib/ej;->a(C)Z
move-result v0
if-eqz v0, :cond_19
invoke-direct {p0, p1}, Lcom/glympse/android/lib/UrlParser;->K(Ljava/lang/String;)V
move v0, v2
goto :goto_9
:cond_19
invoke-static {p1}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_3a
const/4 v0, 0x4
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "[UrlParser] Unknown value: ["
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "]"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
move v0, v1
goto :goto_9
:cond_3a
const/4 v0, 0x3
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "[UrlParser] Invite code found: "
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tG:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_58
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tG:Lcom/glympse/android/hal/GVector;
:cond_58
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tG:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v5
move v3, v1
:goto_5f
if-ge v3, v5, :cond_75
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tG:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v3}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_71
move v0, v1
goto :goto_9
:cond_71
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_5f
:cond_75
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tG:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v4}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
move v0, v2
goto :goto_9
.end method
.method public parseParameter(Ljava/lang/String;ILjava/lang/String;)Z
.registers 7
const/4 v0, 0x1
const-string v1, "initial_nickname"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_c
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->tI:Ljava/lang/String;
:cond_b
:goto_b
return v0
:cond_c
const-string v1, "initial_avatar"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_17
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->tJ:Ljava/lang/String;
goto :goto_b
:cond_17
const-string v1, "duration"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_27
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J
move-result-wide v1
long-to-int v1, v1
iput v1, p0, Lcom/glympse/android/lib/UrlParser;->sL:I
goto :goto_b
:cond_27
const-string v1, "recipients"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_33
invoke-direct {p0, p3}, Lcom/glympse/android/lib/UrlParser;->H(Ljava/lang/String;)V
goto :goto_b
:cond_33
const-string v1, "message"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3e
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->tT:Ljava/lang/String;
goto :goto_b
:cond_3e
const-string v1, "destination"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4a
invoke-direct {p0, p3}, Lcom/glympse/android/lib/UrlParser;->I(Ljava/lang/String;)V
goto :goto_b
:cond_4a
const-string v1, "source"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_5a
const-string v1, "src"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_5d
:cond_5a
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->sI:Ljava/lang/String;
goto :goto_b
:cond_5d
const-string v1, "flags"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_6c
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J
move-result-wide v1
iput-wide v1, p0, Lcom/glympse/android/lib/UrlParser;->tL:J
goto :goto_b
:cond_6c
const-string v1, "callback_package"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_77
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->tM:Ljava/lang/String;
goto :goto_b
:cond_77
const-string v1, "callback_action"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_82
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->tN:Ljava/lang/String;
goto :goto_b
:cond_82
const-string v1, "ret_url"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_8e
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->tO:Ljava/lang/String;
goto/16 :goto_b
:cond_8e
const-string v1, "ret_cancel_url"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_9a
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->tP:Ljava/lang/String;
goto/16 :goto_b
:cond_9a
const-string v1, "context"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a6
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->sc:Ljava/lang/String;
goto/16 :goto_b
:cond_a6
const-string v1, "launch_mode"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_b2
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->ht:Ljava/lang/String;
goto/16 :goto_b
:cond_b2
const-string v1, "group"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_bf
invoke-direct {p0, p3}, Lcom/glympse/android/lib/UrlParser;->K(Ljava/lang/String;)V
goto/16 :goto_b
:cond_bf
const-string v1, "server"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_cc
invoke-direct {p0, p3}, Lcom/glympse/android/lib/UrlParser;->G(Ljava/lang/String;)V
goto/16 :goto_b
:cond_cc
const-string v1, "codes"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_d9
invoke-direct {p0, p3}, Lcom/glympse/android/lib/UrlParser;->J(Ljava/lang/String;)V
goto/16 :goto_b
:cond_d9
const-string v1, "viewer"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_e5
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->gN:Ljava/lang/String;
goto/16 :goto_b
:cond_e5
const-string v1, "screen"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_f1
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->tS:Ljava/lang/String;
goto/16 :goto_b
:cond_f1
const-string v1, "log_level"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_fd
iput-object p3, p0, Lcom/glympse/android/lib/UrlParser;->tR:Ljava/lang/String;
goto/16 :goto_b
:cond_fd
invoke-virtual {p0, p1, p2, p3}, Lcom/glympse/android/lib/UrlParser;->a(Ljava/lang/String;ILjava/lang/String;)Z
move-result v1
if-nez v1, :cond_b
const/4 v0, 0x4
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "[UrlParser] Unknown name/value pair: ["
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]=["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
const/4 v0, 0x0
goto/16 :goto_b
.end method
.method public parseParameter(Ljava/lang/String;Ljava/lang/String;)Z
.registers 8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v2, v0, -0x1
invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
check-cast v0, [C
move v1, v2
:goto_d
if-ltz v1, :cond_1c
aget-char v3, v0, v1
const/16 v4, 0x30
if-lt v3, v4, :cond_1c
const/16 v4, 0x39
if-gt v3, v4, :cond_1c
add-int/lit8 v1, v1, -0x1
goto :goto_d
:cond_1c
if-ge v1, v2, :cond_35
const/4 v0, 0x0
add-int/lit8 v2, v1, 0x1
invoke-static {p1, v0, v2}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
add-int/lit8 v1, v1, 0x1
invoke-static {p1, v1}, Lcom/glympse/android/hal/Helpers;->substr(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J
move-result-wide v1
long-to-int v1, v1
invoke-virtual {p0, v0, v1, p2}, Lcom/glympse/android/lib/UrlParser;->parseParameter(Ljava/lang/String;ILjava/lang/String;)Z
move-result v0
:goto_34
return v0
:cond_35
const/4 v0, 0x1
invoke-virtual {p0, p1, v0, p2}, Lcom/glympse/android/lib/UrlParser;->parseParameter(Ljava/lang/String;ILjava/lang/String;)Z
move-result v0
goto :goto_34
.end method
.method public parseQueryString(Ljava/lang/String;)Z
.registers 10
const/4 v2, 0x0
const/16 v0, 0x3f
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_1a
invoke-static {p1, v2, v0}, Lcom/glympse/android/hal/Helpers;->substrlen(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/UrlParser;->tQ:Ljava/lang/String;
add-int/lit8 v0, v0, 0x1
invoke-static {p1, v0}, Lcom/glympse/android/hal/Helpers;->substr(Ljava/lang/String;I)Ljava/lang/String;
move-result-object p1
iget-object v0, p0, Lcom/glympse/android/lib/UrlParser;->tQ:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/UrlParser;->parseParameter(Ljava/lang/String;)Z
:cond_1a
const-string v0, "&"
invoke-static {p1, v0}, Lcom/glympse/android/hal/Helpers;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/hal/GVector;
move-result-object v4
invoke-virtual {v4}, Lcom/glympse/android/hal/GVector;->length()I
move-result v5
move v1, v2
move v3, v2
:goto_26
if-ge v1, v5, :cond_57
invoke-virtual {v4, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const/16 v6, 0x3d
invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I
move-result v6
if-gez v6, :cond_43
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlDecode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/UrlParser;->parseParameter(Ljava/lang/String;)Z
move-result v0
or-int/2addr v0, v3
:goto_3f
add-int/lit8 v1, v1, 0x1
move v3, v0
goto :goto_26
:cond_43
invoke-static {v0, v2, v6}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v7
add-int/lit8 v6, v6, 0x1
invoke-static {v0, v6}, Lcom/glympse/android/hal/Helpers;->substr(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlDecode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v7, v0}, Lcom/glympse/android/lib/UrlParser;->parseParameter(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
or-int/2addr v0, v3
goto :goto_3f
:cond_57
return v3
.end method
.method public parseUrls(Ljava/lang/String;Z)Z
.registers 14
const/4 v3, 0x0
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9
const/4 v3, 0x0
:cond_8
return v3
:cond_9
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-eq v1, v5, :cond_df
move-object v2, p1
:goto_18
new-instance v7, Lcom/glympse/android/hal/GVector;
const/4 v0, 0x6
invoke-direct {v7, v0}, Lcom/glympse/android/hal/GVector;-><init>(I)V
const-string v0, "glympse.com/"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
const-string v0, "glympse.me/"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
const-string v0, "glympse:"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
const-string v0, "glympse2:"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
const-string v0, "glympse3:"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
const-string v0, "glympse4:"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
invoke-virtual {v7}, Lcom/glympse/android/hal/GVector;->size()I
move-result v8
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
check-cast v0, [C
const/4 v6, 0x0
:goto_5f
if-ge v6, v5, :cond_8
const/4 v1, 0x0
move v4, v1
:goto_63
if-ge v4, v8, :cond_77
invoke-virtual {v7, v4}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v9
if-ltz v9, :cond_a3
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int v6, v9, v1
:cond_77
if-ge v4, v8, :cond_8
const/4 v1, 0x2
if-ge v4, v1, :cond_a7
const/4 v1, 0x1
:goto_7d
if-eqz v1, :cond_98
const/4 v4, -0x1
add-int/lit8 v1, v6, -0x2
:goto_82
if-ltz v1, :cond_dd
aget-char v9, v0, v1
const/16 v10, 0x2f
if-ne v10, v9, :cond_a9
:goto_8a
const/4 v4, -0x1
if-eq v4, v1, :cond_98
add-int/lit8 v1, v1, 0x1
add-int/lit8 v4, v6, -0x1
invoke-static {p1, v1, v4}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/glympse/android/lib/UrlParser;->G(Ljava/lang/String;)V
:cond_98
:goto_98
if-ge v6, v5, :cond_b0
aget-char v1, v0, v6
const/16 v4, 0x2f
if-ne v4, v1, :cond_b0
add-int/lit8 v6, v6, 0x1
goto :goto_98
:cond_a3
add-int/lit8 v1, v4, 0x1
move v4, v1
goto :goto_63
:cond_a7
const/4 v1, 0x0
goto :goto_7d
:cond_a9
const/16 v10, 0x20
if-le v9, v10, :cond_dd
add-int/lit8 v1, v1, -0x1
goto :goto_82
:cond_b0
if-eqz p2, :cond_be
move v1, v6
:goto_b3
if-ge v1, v5, :cond_cc
aget-char v4, v0, v1
const/16 v9, 0x20
if-le v4, v9, :cond_cc
add-int/lit8 v1, v1, 0x1
goto :goto_b3
:cond_be
move v1, v5
:goto_bf
if-le v1, v6, :cond_cc
add-int/lit8 v4, v1, -0x1
aget-char v4, v0, v4
const/16 v9, 0x20
if-gt v4, v9, :cond_cc
add-int/lit8 v1, v1, -0x1
goto :goto_bf
:cond_cc
move v4, v1
if-le v4, v6, :cond_db
invoke-static {p1, v6, v4}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/glympse/android/lib/UrlParser;->parseQueryString(Ljava/lang/String;)Z
move-result v1
or-int/2addr v1, v3
:goto_d8
move v6, v4
move v3, v1
goto :goto_5f
:cond_db
move v1, v3
goto :goto_d8
:cond_dd
move v1, v4
goto :goto_8a
:cond_df
move-object v2, v0
goto/16 :goto_18
.end method