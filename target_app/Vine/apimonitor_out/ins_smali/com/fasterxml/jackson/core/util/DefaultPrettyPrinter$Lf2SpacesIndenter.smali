.class public Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
.super Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
.source "DefaultPrettyPrinter.java"
.field static final SPACES:[C = null
.field static final SPACE_COUNT:I = 0x40
.field private static final SYS_LF:Ljava/lang/String;
.field public static final instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
.field protected final _lf:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const/4 v0, 0x0
:try_start_1
const-string v1, "line.separator"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
:try_end_6
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_22
move-result-object v0
:goto_7
if-nez v0, :cond_b
const-string v0, "\n"
:cond_b
sput-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYS_LF:Ljava/lang/String;
const/16 v0, 0x40
new-array v0, v0, [C
sput-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C
sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C
const/16 v1, 0x20
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V
new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
return-void
:catch_22
move-exception v1
goto :goto_7
.end method
.method public constructor <init>()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYS_LF:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->_lf:Ljava/lang/String;
return-void
.end method
.method public isInline()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public withLinefeed(Ljava/lang/String;)Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->_lf:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;-><init>(Ljava/lang/String;)V
goto :goto_8
.end method
.method public writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
.registers 7
const/16 v3, 0x40
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->_lf:Ljava/lang/String;
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