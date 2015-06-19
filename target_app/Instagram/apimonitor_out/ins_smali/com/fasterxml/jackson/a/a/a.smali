.class public abstract Lcom/fasterxml/jackson/a/a/a;
.super Lcom/fasterxml/jackson/a/h;
.source "GeneratorBase.java"
.field protected a:Lcom/fasterxml/jackson/a/s;
.field protected b:I
.field protected c:Z
.field protected d:Lcom/fasterxml/jackson/a/d/e;
.field protected e:Z
.method protected constructor <init>(ILcom/fasterxml/jackson/a/s;)V
.registers 4
invoke-direct {p0}, Lcom/fasterxml/jackson/a/h;-><init>()V
iput p1, p0, Lcom/fasterxml/jackson/a/a/a;->b:I
invoke-static {}, Lcom/fasterxml/jackson/a/d/e;->a()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->d:Lcom/fasterxml/jackson/a/d/e;
iput-object p2, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;
sget-object v0, Lcom/fasterxml/jackson/a/i;->e:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/a/a;->c:Z
return-void
.end method
.method private a(Ljava/lang/Object;)V
.registers 5
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeNull()V
:goto_5
return-void
:cond_6
instance-of v0, p1, Ljava/lang/String;
if-eqz v0, :cond_10
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->writeString(Ljava/lang/String;)V
goto :goto_5
:cond_10
instance-of v0, p1, Ljava/lang/Number;
if-eqz v0, :cond_91
move-object v0, p1
check-cast v0, Ljava/lang/Number;
instance-of v1, v0, Ljava/lang/Integer;
if-eqz v1, :cond_23
invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(I)V
goto :goto_5
:cond_23
instance-of v1, v0, Ljava/lang/Long;
if-eqz v1, :cond_2f
invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(J)V
goto :goto_5
:cond_2f
instance-of v1, v0, Ljava/lang/Double;
if-eqz v1, :cond_3b
invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(D)V
goto :goto_5
:cond_3b
instance-of v1, v0, Ljava/lang/Float;
if-eqz v1, :cond_47
invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(F)V
goto :goto_5
:cond_47
instance-of v1, v0, Ljava/lang/Short;
if-eqz v1, :cond_53
invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(S)V
goto :goto_5
:cond_53
instance-of v1, v0, Ljava/lang/Byte;
if-eqz v1, :cond_60
invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B
move-result v0
int-to-short v0, v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(S)V
goto :goto_5
:cond_60
instance-of v1, v0, Ljava/math/BigInteger;
if-eqz v1, :cond_6a
check-cast v0, Ljava/math/BigInteger;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(Ljava/math/BigInteger;)V
goto :goto_5
:cond_6a
instance-of v1, v0, Ljava/math/BigDecimal;
if-eqz v1, :cond_74
check-cast v0, Ljava/math/BigDecimal;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(Ljava/math/BigDecimal;)V
goto :goto_5
:cond_74
instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;
if-eqz v1, :cond_82
check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(I)V
goto :goto_5
:cond_82
instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;
if-eqz v1, :cond_bc
check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(J)V
goto/16 :goto_5
:cond_91
instance-of v0, p1, [B
if-eqz v0, :cond_9e
check-cast p1, [B
check-cast p1, [B
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->writeBinary([B)V
goto/16 :goto_5
:cond_9e
instance-of v0, p1, Ljava/lang/Boolean;
if-eqz v0, :cond_ad
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeBoolean(Z)V
goto/16 :goto_5
:cond_ad
instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicBoolean;
if-eqz v0, :cond_bc
check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeBoolean(Z)V
goto/16 :goto_5
:cond_bc
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected static b(Ljava/lang/String;)V
.registers 2
new-instance v0, Lcom/fasterxml/jackson/a/g;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/a/g;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected static c()V
.registers 0
invoke-static {}, Lcom/fasterxml/jackson/a/g/p;->a()V
return-void
.end method
.method public final a()Lcom/fasterxml/jackson/a/d/e;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->d:Lcom/fasterxml/jackson/a/d/e;
return-object v0
.end method
.method protected abstract a(Ljava/lang/String;)V
.end method
.method protected abstract b()V
.end method
.method public close()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/a/a;->e:Z
return-void
.end method
.method public final copyCurrentEvent(Lcom/fasterxml/jackson/a/l;)V
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
if-nez v0, :cond_b
const-string v1, "No current event to copy"
invoke-static {v1}, Lcom/fasterxml/jackson/a/a/a;->b(Ljava/lang/String;)V
:cond_b
sget-object v1, Lcom/fasterxml/jackson/a/a/b;->b:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_b4
invoke-static {}, Lcom/fasterxml/jackson/a/a/a;->c()V
:goto_19
return-void
:pswitch_1a
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeStartObject()V
goto :goto_19
:pswitch_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeEndObject()V
goto :goto_19
:pswitch_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeStartArray()V
goto :goto_19
:pswitch_26
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeEndArray()V
goto :goto_19
:pswitch_2a
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeFieldName(Ljava/lang/String;)V
goto :goto_19
:pswitch_32
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->hasTextCharacters()Z
move-result v0
if-eqz v0, :cond_48
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextCharacters()[C
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextOffset()I
move-result v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextLength()I
move-result v2
invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/a/a/a;->writeString([CII)V
goto :goto_19
:cond_48
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeString(Ljava/lang/String;)V
goto :goto_19
:pswitch_50
sget-object v0, Lcom/fasterxml/jackson/a/a/b;->a:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getNumberType$72641f5()I
move-result v1
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_d0
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getLongValue()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(J)V
goto :goto_19
:pswitch_65
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(I)V
goto :goto_19
:pswitch_6d
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getBigIntegerValue()Ljava/math/BigInteger;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(Ljava/math/BigInteger;)V
goto :goto_19
:pswitch_75
sget-object v0, Lcom/fasterxml/jackson/a/a/b;->a:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getNumberType$72641f5()I
move-result v1
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_d8
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getDoubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(D)V
goto :goto_19
:pswitch_8a
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(Ljava/math/BigDecimal;)V
goto :goto_19
:pswitch_92
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeNumber(F)V
goto :goto_19
:pswitch_9a
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeBoolean(Z)V
goto/16 :goto_19
:pswitch_a0
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeBoolean(Z)V
goto/16 :goto_19
:pswitch_a6
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeNull()V
goto/16 :goto_19
:pswitch_ab
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeObject(Ljava/lang/Object;)V
goto/16 :goto_19
:pswitch_data_d8
.packed-switch 0x3
:pswitch_8a
:pswitch_92
.end packed-switch
:pswitch_data_d0
.packed-switch 0x1
:pswitch_65
:pswitch_6d
.end packed-switch
:pswitch_data_b4
.packed-switch 0x1
:pswitch_1a
:pswitch_1e
:pswitch_22
:pswitch_26
:pswitch_2a
:pswitch_32
:pswitch_50
:pswitch_75
:pswitch_9a
:pswitch_a0
:pswitch_a6
:pswitch_ab
.end packed-switch
.end method
.method public final copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_13
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
:cond_13
sget-object v1, Lcom/fasterxml/jackson/a/a/b;->b:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_48
:pswitch_1e
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->copyCurrentEvent(Lcom/fasterxml/jackson/a/l;)V
:goto_21
return-void
:pswitch_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeStartArray()V
:goto_25
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_31
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
goto :goto_25
:cond_31
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeEndArray()V
goto :goto_21
:pswitch_35
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeStartObject()V
:goto_38
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_44
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
goto :goto_38
:cond_44
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeEndObject()V
goto :goto_21
:pswitch_data_48
.packed-switch 0x1
:pswitch_35
:pswitch_1e
:pswitch_22
.end packed-switch
.end method
.method protected final d()V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Operation not supported by generator of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public disable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
.registers 5
const/4 v2, 0x0
iget v0, p0, Lcom/fasterxml/jackson/a/a/a;->b:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/a/a/a;->b:I
sget-object v0, Lcom/fasterxml/jackson/a/i;->e:Lcom/fasterxml/jackson/a/i;
if-ne p1, v0, :cond_13
iput-boolean v2, p0, Lcom/fasterxml/jackson/a/a/a;->c:Z
:cond_12
:goto_12
return-object p0
:cond_13
sget-object v0, Lcom/fasterxml/jackson/a/i;->g:Lcom/fasterxml/jackson/a/i;
if-ne p1, v0, :cond_12
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/a/a/a;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/a/h;
goto :goto_12
.end method
.method public enable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/a/a/a;->b:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I
move-result v1
or-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/a/a/a;->b:I
sget-object v0, Lcom/fasterxml/jackson/a/i;->e:Lcom/fasterxml/jackson/a/i;
if-ne p1, v0, :cond_11
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/a/a;->c:Z
:goto_10
:cond_10
return-object p0
:cond_11
sget-object v0, Lcom/fasterxml/jackson/a/i;->g:Lcom/fasterxml/jackson/a/i;
if-ne p1, v0, :cond_10
const/16 v0, 0x7f
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/a/h;
goto :goto_10
.end method
.method public final getCodec()Lcom/fasterxml/jackson/a/s;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;
return-object v0
.end method
.method public synthetic getOutputContext()Lcom/fasterxml/jackson/a/q;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->a()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
return-object v0
.end method
.method public isClosed()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a/a;->e:Z
return v0
.end method
.method public final isEnabled(Lcom/fasterxml/jackson/a/i;)Z
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/a/a/a;->b:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I
move-result v1
and-int/2addr v0, v1
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public setCodec(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/h;
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;
return-object p0
.end method
.method public useDefaultPrettyPrinter()Lcom/fasterxml/jackson/a/h;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->getPrettyPrinter()Lcom/fasterxml/jackson/a/t;
move-result-object v0
if-eqz v0, :cond_7
:goto_6
return-object p0
:cond_7
new-instance v0, Lcom/fasterxml/jackson/a/g/e;
invoke-direct {v0}, Lcom/fasterxml/jackson/a/g/e;-><init>()V
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->setPrettyPrinter(Lcom/fasterxml/jackson/a/t;)Lcom/fasterxml/jackson/a/h;
move-result-object p0
goto :goto_6
.end method
.method public version()Lcom/fasterxml/jackson/a/w;
.registers 2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/lang/Class;)Lcom/fasterxml/jackson/a/w;
move-result-object v0
return-object v0
.end method
.method public writeBinary(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;I)I
.registers 5
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->d()V
const/4 v0, 0x0
return v0
.end method
.method public writeFieldName(Lcom/fasterxml/jackson/a/u;)V
.registers 3
invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeFieldName(Ljava/lang/String;)V
return-void
.end method
.method public writeObject(Ljava/lang/Object;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeNull()V
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;
invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V
goto :goto_5
:cond_10
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->a(Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeRawValue(Ljava/lang/String;)V
.registers 3
const-string v0, "write raw value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->a(Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/a;->writeRaw(Ljava/lang/String;)V
return-void
.end method
.method public writeRawValue(Ljava/lang/String;II)V
.registers 5
const-string v0, "write raw value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->a(Ljava/lang/String;)V
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/a/a;->writeRaw(Ljava/lang/String;II)V
return-void
.end method
.method public writeRawValue([CII)V
.registers 5
const-string v0, "write raw value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->a(Ljava/lang/String;)V
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/a/a;->writeRaw([CII)V
return-void
.end method
.method public writeString(Lcom/fasterxml/jackson/a/u;)V
.registers 3
invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/a;->writeString(Ljava/lang/String;)V
return-void
.end method
.method public writeTree(Lcom/fasterxml/jackson/a/v;)V
.registers 4
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/a;->writeNull()V
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;
if-nez v0, :cond_12
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/a;->a:Lcom/fasterxml/jackson/a/s;
invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V
goto :goto_5
.end method