.class public final Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "AddressBookDoCoMoResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V
return-void
.end method
.method private static parseName(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/16 v1, 0x2c
invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_2a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
add-int/lit8 v2, v0, 0x1
invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0x20
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:cond_2a
return-object p0
.end method
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
.registers 23
invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
move-result-object v20
const-string/jumbo v1, "MECARD:"
move-object/from16 v0, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_11
const/4 v1, 0x0
:goto_10
return-object v1
:cond_11
const-string/jumbo v1, "N:"
const/4 v2, 0x1
move-object/from16 v0, v20
invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
move-result-object v19
if-nez v19, :cond_1f
const/4 v1, 0x0
goto :goto_10
:cond_1f
const/4 v1, 0x0
aget-object v1, v19, v1
invoke-static {v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parseName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
const-string/jumbo v1, "SOUND:"
const/4 v2, 0x1
move-object/from16 v0, v20
invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v4
const-string/jumbo v1, "TEL:"
const/4 v2, 0x1
move-object/from16 v0, v20
invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
move-result-object v5
const-string/jumbo v1, "EMAIL:"
const/4 v2, 0x1
move-object/from16 v0, v20
invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
move-result-object v7
const-string/jumbo v1, "NOTE:"
const/4 v2, 0x0
move-object/from16 v0, v20
invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v10
const-string/jumbo v1, "ADR:"
const/4 v2, 0x1
move-object/from16 v0, v20
invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
move-result-object v11
const-string/jumbo v1, "BDAY:"
const/4 v2, 0x1
move-object/from16 v0, v20
invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v14
const/16 v1, 0x8
invoke-static {v14, v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->isStringOfDigits(Ljava/lang/CharSequence;I)Z
move-result v1
if-nez v1, :cond_6b
const/4 v14, 0x0
:cond_6b
const-string/jumbo v1, "URL:"
const/4 v2, 0x1
move-object/from16 v0, v20
invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
move-result-object v16
const-string/jumbo v1, "ORG:"
const/4 v2, 0x1
move-object/from16 v0, v20
invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v13
new-instance v1, Lcom/google/zxing/client/result/AddressBookParsedResult;
invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
const/4 v6, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v12, 0x0
const/4 v15, 0x0
const/16 v17, 0x0
invoke-direct/range {v1 .. v17}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
goto :goto_10
.end method
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
move-result-object v0
return-object v0
.end method