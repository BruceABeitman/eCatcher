.class public Lcom/glympse/android/lib/UrlGenerator;
.super Ljava/lang/Object;
.source "UrlGenerator.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/api/GTicket;)J
.registers 8
const-wide/16 v0, 0x0
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getExpireTime()J
move-result-wide v2
invoke-interface {p0}, Lcom/glympse/android/api/GGlympse;->getTime()J
move-result-wide v4
sub-long/2addr v2, v4
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
return-wide v0
.end method
.method private static a(Lcom/glympse/android/api/GInvite;Z)Lcom/glympse/android/core/GPrimitive;
.registers 8
const/4 v0, 0x0
const/4 v1, 0x2
invoke-static {v1}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getType()I
move-result v2
invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getName()Ljava/lang/String;
move-result-object v3
invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;
move-result-object v4
packed-switch v2, :pswitch_data_fa
:cond_15
:goto_15
return-object v0
:pswitch_16
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_15
const-string v0, "address"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_34
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:pswitch_34
:goto_34
:cond_34
const-string v0, "type"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v2}, Lcom/glympse/android/lib/ej;->n(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v0, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getBrand()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_54
const-string v2, "brand"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_54
if-eqz p1, :cond_69
invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getUrl()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_69
const-string v2, "url"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_69
move-object v0, v1
goto :goto_15
:pswitch_6b
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_15
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->isVisible()Z
move-result v0
if-eqz v0, :cond_a3
const-string v0, "#"
:goto_7e
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v4, "address"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v4, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_34
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_34
:cond_a3
const-string v0, "!"
goto :goto_7e
:pswitch_a6
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_b5
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_b5
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_34
const-string v0, "address"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_34
:pswitch_c6
invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getSubtype()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_d9
const-string v5, "subtype"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v1, v5, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_d9
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_e8
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_e8
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_34
const-string v0, "address"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_34
nop
:pswitch_data_fa
.packed-switch 0x1
:pswitch_16
:pswitch_16
:pswitch_16
:pswitch_34
:pswitch_34
:pswitch_a6
:pswitch_6b
:pswitch_16
:pswitch_34
:pswitch_34
:pswitch_c6
.end packed-switch
.end method
.method private static a(Lcom/glympse/android/api/GTicket;Z)Ljava/lang/String;
.registers 7
invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
if-nez v3, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
const/4 v0, 0x1
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
const/4 v0, 0x0
move v1, v0
:goto_13
if-ge v1, v3, :cond_28
invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-static {v0, p1}, Lcom/glympse/android/lib/UrlGenerator;->a(Lcom/glympse/android/api/GInvite;Z)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_24
invoke-interface {v4, v0}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_24
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_13
:cond_28
invoke-static {v4}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
goto :goto_b
.end method
.method private static b(Lcom/glympse/android/api/GPlace;)Ljava/lang/String;
.registers 5
const/4 v0, 0x2
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p0}, Lcom/glympse/android/api/GPlace;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_18
const-string v2, "name"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_18
const-string v1, "latitude"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p0}, Lcom/glympse/android/api/GPlace;->getLatitude()D
move-result-wide v2
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V
const-string v1, "longitude"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p0}, Lcom/glympse/android/api/GPlace;->getLongitude()D
move-result-wide v2
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V
invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static generateReturnUri(Lcom/glympse/android/api/GGlympse;Ljava/lang/String;Lcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 12
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_8
if-nez p2, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
new-instance v1, Ljava/lang/StringBuilder;
const/16 v0, 0x800
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
invoke-static {p1, v0}, Lcom/glympse/android/lib/UrlGenerator;->hasQueryStartBefore(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_2d
const/16 v3, 0x26
:goto_20
const/4 v2, 0x1
move-object v0, p0
move-object v4, p2
move-object v5, p3
move-object v6, p4
invoke-static/range {v0 .. v6}, Lcom/glympse/android/lib/UrlGenerator;->generateReturnUri(Lcom/glympse/android/api/GGlympse;Ljava/lang/StringBuilder;ZCLcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_9
:cond_2d
const/16 v3, 0x3f
goto :goto_20
.end method
.method public static generateReturnUri(Lcom/glympse/android/api/GGlympse;ZCLcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 13
new-instance v1, Ljava/lang/StringBuilder;
const/16 v0, 0x800
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
move-object v0, p0
move v2, p1
move v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-static/range {v0 .. v6}, Lcom/glympse/android/lib/UrlGenerator;->generateReturnUri(Lcom/glympse/android/api/GGlympse;Ljava/lang/StringBuilder;ZCLcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static generateReturnUri(Lcom/glympse/android/api/GGlympse;Ljava/lang/StringBuilder;ZCLcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
if-eqz p2, :cond_5
invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_5
const-string v0, "gly_duration="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getDuration()I
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v0, "&gly_remaining="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0, p4}, Lcom/glympse/android/lib/UrlGenerator;->a(Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/api/GTicket;)J
move-result-wide v0
invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const/4 v0, 0x1
invoke-static {p4, v0}, Lcom/glympse/android/lib/UrlGenerator;->a(Lcom/glympse/android/api/GTicket;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_34
const-string v1, "&gly_recipients="
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_34
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_4a
const-string v1, "&gly_message="
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_4a
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v0
if-eqz v0, :cond_66
invoke-interface {v0}, Lcom/glympse/android/api/GPlace;->hasLocation()Z
move-result v1
if-eqz v1, :cond_66
const-string v1, "&gly_destination="
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/glympse/android/lib/UrlGenerator;->b(Lcom/glympse/android/api/GPlace;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_66
invoke-static {p5}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_78
const-string v0, "&gly_event="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p5}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_78
invoke-static {p6}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_8a
const-string v0, "&gly_context="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p6}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_8a
return-void
.end method
.method public static generateUri(Lcom/glympse/android/api/GTicket;Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string v0, "glympse3:?"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, p1}, Lcom/glympse/android/lib/UrlGenerator;->generateUri(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static generateUri(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x400
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_10
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_10
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_22
const-string v1, "src="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_22
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/glympse/android/lib/UrlGenerator;->a(Lcom/glympse/android/api/GTicket;Z)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_39
const-string v2, "&recipients="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_39
invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getDuration()I
move-result v1
if-lez v1, :cond_47
const-string v2, "&duration="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_47
invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_5d
const-string v2, "&message="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_5d
invoke-interface {p0}, Lcom/glympse/android/api/GTicket;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v1
if-eqz v1, :cond_79
invoke-interface {v1}, Lcom/glympse/android/api/GPlace;->hasLocation()Z
move-result v2
if-eqz v2, :cond_79
const-string v2, "&destination="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v1}, Lcom/glympse/android/lib/UrlGenerator;->b(Lcom/glympse/android/api/GPlace;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_79
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static hasQueryStartBefore(Ljava/lang/String;I)Z
.registers 5
const/4 v0, 0x1
const/4 v2, -0x1
const/16 v1, 0x3f
invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-eq v2, v1, :cond_d
if-ge v1, p1, :cond_d
:cond_c
:goto_c
return v0
:cond_d
const/16 v1, 0x23
invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-eq v2, v1, :cond_17
if-lt v1, p1, :cond_c
:cond_17
const/4 v0, 0x0
goto :goto_c
.end method