.class public Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
.implements Ljava/io/Serializable;
.field static final SPACES:[C = null
.field static final SYSTEM_LINE_SEPARATOR:Ljava/lang/String; = null
.field public static instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter; = null
.field private static final serialVersionUID:J = 0x1L
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
const/4 v0, 0x0
:try_start_8
const-string v1, "line.separator"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
:try_end_d
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_20
move-result-object v0
:goto_e
if-nez v0, :cond_12
const-string v0, "\n"
:cond_12
sput-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYSTEM_LINE_SEPARATOR:Ljava/lang/String;
const/16 v0, 0x40
new-array v0, v0, [C
sput-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C
const/16 v1, 0x20
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V
return-void
:catch_20
move-exception v1
goto :goto_e
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public isInline()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
.registers 7
const/16 v3, 0x40
const/4 v2, 0x0
sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYSTEM_LINE_SEPARATOR:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V
if-lez p2, :cond_1d
add-int v0, p2, p2
:goto_c
if-le v0, v3, :cond_18
sget-object v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C
invoke-virtual {p1, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw([CII)V
sget-object v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C
array-length v1, v1
sub-int/2addr v0, v1
goto :goto_c
:cond_18
sget-object v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C
invoke-virtual {p1, v1, v2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw([CII)V
:cond_1d
return-void
.end method