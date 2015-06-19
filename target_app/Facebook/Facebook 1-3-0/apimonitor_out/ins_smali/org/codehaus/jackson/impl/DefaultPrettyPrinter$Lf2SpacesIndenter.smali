.class public Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;
.super Ljava/lang/Object;
.implements Lorg/codehaus/jackson/impl/Indenter;
.field static final SPACES:[C = null
.field static final SPACE_COUNT:I = 0x40
.field static final SYSTEM_LINE_SEPARATOR:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const/4 v0, 0x0
:try_start_1
const-string v1, "line.separator"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
:try_end_6
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_1b
move-result-object v0
:goto_7
if-nez v0, :cond_b
const-string v0, "\n"
:cond_b
sput-object v0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYSTEM_LINE_SEPARATOR:Ljava/lang/String;
const/16 v0, 0x40
new-array v0, v0, [C
sput-object v0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C
sget-object v0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C
const/16 v1, 0x20
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V
return-void
:catch_1b
move-exception v1
goto :goto_7
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
.method public writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V
.registers 7
const/16 v3, 0x40
const/4 v2, 0x0
sget-object v0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYSTEM_LINE_SEPARATOR:Ljava/lang/String;
invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V
add-int v0, p2, p2
:goto_a
if-le v0, v3, :cond_16
sget-object v1, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C
invoke-virtual {p1, v1, v2, v3}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw([CII)V
sget-object v1, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C
array-length v1, v1
sub-int/2addr v0, v1
goto :goto_a
:cond_16
sget-object v1, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C
invoke-virtual {p1, v1, v2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw([CII)V
return-void
.end method