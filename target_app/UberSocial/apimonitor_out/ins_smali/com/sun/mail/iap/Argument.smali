.class public Lcom/sun/mail/iap/Argument;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected items:Ljava/util/Vector;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Vector;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V
iput-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
return-void
.end method
.method private astring([BLcom/sun/mail/iap/Protocol;)V
.registers 15
const/4 v2, 0x1
const/16 v11, 0x5c
const/4 v3, 0x0
const/16 v10, 0x22
invoke-virtual {p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
check-cast v0, Ljava/io/DataOutputStream;
array-length v6, p1
const/16 v1, 0x400
if-le v6, v1, :cond_15
invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V
:cond_14
:goto_14
return-void
:cond_15
if-nez v6, :cond_2c
move v1, v2
:goto_18
move v5, v3
move v4, v1
move v1, v3
:goto_1b
if-lt v5, v6, :cond_2e
if-eqz v4, :cond_22
invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->write(I)V
:cond_22
if-eqz v1, :cond_7a
:goto_24
if-lt v3, v6, :cond_6b
:goto_26
if-eqz v4, :cond_14
invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->write(I)V
goto :goto_14
:cond_2c
move v1, v3
goto :goto_18
:cond_2e
aget-byte v7, p1, v5
if-eqz v7, :cond_40
const/16 v8, 0xd
if-eq v7, v8, :cond_40
const/16 v8, 0xa
if-eq v7, v8, :cond_40
and-int/lit16 v8, v7, 0xff
const/16 v9, 0x7f
if-le v8, v9, :cond_44
:cond_40
invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V
goto :goto_14
:cond_44
const/16 v8, 0x2a
if-eq v7, v8, :cond_62
const/16 v8, 0x25
if-eq v7, v8, :cond_62
const/16 v8, 0x28
if-eq v7, v8, :cond_62
const/16 v8, 0x29
if-eq v7, v8, :cond_62
const/16 v8, 0x7b
if-eq v7, v8, :cond_62
if-eq v7, v10, :cond_62
if-eq v7, v11, :cond_62
and-int/lit16 v8, v7, 0xff
const/16 v9, 0x20
if-gt v8, v9, :cond_68
:cond_62
if-eq v7, v10, :cond_66
if-ne v7, v11, :cond_7e
:cond_66
move v1, v2
move v4, v2
:cond_68
:goto_68
add-int/lit8 v5, v5, 0x1
goto :goto_1b
:cond_6b
aget-byte v1, p1, v3
if-eq v1, v10, :cond_71
if-ne v1, v11, :cond_74
:cond_71
invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->write(I)V
:cond_74
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
add-int/lit8 v3, v3, 0x1
goto :goto_24
:cond_7a
invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V
goto :goto_26
:cond_7e
move v4, v2
goto :goto_68
.end method
.method private literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V
.registers 4
invoke-interface {p1}, Lcom/sun/mail/iap/Literal;->size()I
move-result v0
invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
move-result-object v0
invoke-interface {p1, v0}, Lcom/sun/mail/iap/Literal;->writeTo(Ljava/io/OutputStream;)V
return-void
.end method
.method private literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V
.registers 4
invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v0
invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
return-void
.end method
.method private literal([BLcom/sun/mail/iap/Protocol;)V
.registers 4
array-length v0, p1
invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
return-void
.end method
.method private startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
.registers 6
invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
check-cast v0, Ljava/io/DataOutputStream;
invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->supportsNonSyncLiterals()Z
move-result v1
const/16 v2, 0x7b
invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
if-eqz v1, :cond_2d
const-string v2, "+}\r\n"
invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
:goto_1d
invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
if-nez v1, :cond_2c
:cond_22
invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;
move-result-object v1
invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isContinuation()Z
move-result v2
if-eqz v2, :cond_33
:cond_2c
return-object v0
:cond_2d
const-string v2, "}\r\n"
invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
goto :goto_1d
:cond_33
invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isTagged()Z
move-result v2
if-eqz v2, :cond_22
new-instance v0, Lcom/sun/mail/iap/LiteralException;
invoke-direct {v0, v1}, Lcom/sun/mail/iap/LiteralException;-><init>(Lcom/sun/mail/iap/Response;)V
throw v0
.end method
.method public append(Lcom/sun/mail/iap/Argument;)V
.registers 5
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v1
iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v2
add-int/2addr v1, v2
invoke-virtual {v0, v1}, Ljava/util/Vector;->ensureCapacity(I)V
const/4 v0, 0x0
:goto_13
iget-object v1, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v1
if-lt v0, v1, :cond_1c
return-void
:cond_1c
iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_13
.end method
.method public write(Lcom/sun/mail/iap/Protocol;)V
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
move v2, v0
:goto_c
invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
check-cast v0, Ljava/io/DataOutputStream;
move v3, v1
:goto_13
if-lt v3, v2, :cond_18
return-void
:cond_16
move v2, v1
goto :goto_c
:cond_18
if-lez v3, :cond_1f
const/16 v1, 0x20
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
:cond_1f
iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v1
instance-of v4, v1, Lcom/sun/mail/iap/Atom;
if-eqz v4, :cond_34
check-cast v1, Lcom/sun/mail/iap/Atom;
iget-object v1, v1, Lcom/sun/mail/iap/Atom;->string:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
:goto_30
:cond_30
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_13
:cond_34
instance-of v4, v1, Ljava/lang/Number;
if-eqz v4, :cond_42
check-cast v1, Ljava/lang/Number;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
goto :goto_30
:cond_42
instance-of v4, v1, Lcom/sun/mail/iap/AString;
if-eqz v4, :cond_4e
check-cast v1, Lcom/sun/mail/iap/AString;
iget-object v1, v1, Lcom/sun/mail/iap/AString;->bytes:[B
invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->astring([BLcom/sun/mail/iap/Protocol;)V
goto :goto_30
:cond_4e
instance-of v4, v1, [B
if-eqz v4, :cond_58
check-cast v1, [B
invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V
goto :goto_30
:cond_58
instance-of v4, v1, Ljava/io/ByteArrayOutputStream;
if-eqz v4, :cond_62
check-cast v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V
goto :goto_30
:cond_62
instance-of v4, v1, Lcom/sun/mail/iap/Literal;
if-eqz v4, :cond_6c
check-cast v1, Lcom/sun/mail/iap/Literal;
invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V
goto :goto_30
:cond_6c
instance-of v4, v1, Lcom/sun/mail/iap/Argument;
if-eqz v4, :cond_30
const/16 v4, 0x28
invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write(I)V
check-cast v1, Lcom/sun/mail/iap/Argument;
invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V
const/16 v1, 0x29
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
goto :goto_30
.end method
.method public writeArgument(Lcom/sun/mail/iap/Argument;)V
.registers 3
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public writeAtom(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
new-instance v1, Lcom/sun/mail/iap/Atom;
invoke-direct {v1, p1}, Lcom/sun/mail/iap/Atom;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public writeBytes(Lcom/sun/mail/iap/Literal;)V
.registers 3
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public writeBytes(Ljava/io/ByteArrayOutputStream;)V
.registers 3
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public writeBytes([B)V
.registers 3
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(I)V
.registers 4
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
new-instance v1, Ljava/lang/Integer;
invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(J)V
.registers 5
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
new-instance v1, Ljava/lang/Long;
invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public writeString(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
new-instance v1, Lcom/sun/mail/iap/AString;
invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B
move-result-object v2
invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
if-nez p2, :cond_6
invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;
new-instance v1, Lcom/sun/mail/iap/AString;
invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v2
invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_5
.end method