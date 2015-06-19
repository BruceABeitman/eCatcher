.class public Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$FixedSpaceIndenter;
.super Ljava/lang/Object;
.implements Lorg/codehaus/jackson/impl/Indenter;
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
.method public writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V
.registers 4
const/16 v0, 0x20
invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V
return-void
.end method