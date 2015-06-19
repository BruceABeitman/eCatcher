.class public Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"
.implements Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
.implements Ljava/io/Serializable;
.field public static final instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public isInline()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
.registers 3
return-void
.end method