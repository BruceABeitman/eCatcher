.class public Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;
.super Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
.source "DefaultPrettyPrinter.java"
.field public static final instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;
invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;-><init>()V
return-void
.end method
.method public isInline()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
.registers 4
const/16 v0, 0x20
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
return-void
.end method