.class public Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final locale:Ljava/util/Locale;
.field private final pattern:Ljava/lang/String;
.field private final shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
.field private final timezone:Ljava/util/TimeZone;
.method public constructor <init>()V
.registers 5
const-string v0, ""
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
const-string v2, ""
const-string v3, ""
invoke-direct {p0, v0, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonFormat;)V
.registers 6
invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->pattern()Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->shape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
move-result-object v1
invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->locale()Ljava/lang/String;
move-result-object v2
invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->timezone()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v0, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
const/4 v0, 0x0
if-eqz p3, :cond_11
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_11
const-string v1, "##default"
invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_26
:cond_11
move-object v1, v0
:goto_12
if-eqz p4, :cond_22
invoke-virtual {p4}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_22
const-string v2, "##default"
invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2c
:goto_22
:cond_22
invoke-direct {p0, p1, p2, v1, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;)V
return-void
:cond_26
new-instance v1, Ljava/util/Locale;
invoke-direct {v1, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V
goto :goto_12
:cond_2c
invoke-static {p4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v0
goto :goto_22
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;
iput-object p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iput-object p3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;
iput-object p4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezone:Ljava/util/TimeZone;
return-void
.end method
.method public getLocale()Ljava/util/Locale;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;
return-object v0
.end method
.method public getPattern()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;
return-object v0
.end method
.method public getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
return-object v0
.end method
.method public getTimeZone()Ljava/util/TimeZone;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezone:Ljava/util/TimeZone;
return-object v0
.end method