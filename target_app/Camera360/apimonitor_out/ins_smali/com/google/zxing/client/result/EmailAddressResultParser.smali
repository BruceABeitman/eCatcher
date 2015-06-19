.class public final Lcom/google/zxing/client/result/EmailAddressResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "EmailAddressResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V
return-void
.end method
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
.registers 12
const/4 v6, 0x0
invoke-static {p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v7, "mailto:"
invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_17
const-string/jumbo v7, "MAILTO:"
invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_5c
:cond_17
const/4 v6, 0x7
invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
const/16 v6, 0x3f
invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I
move-result v3
if-ltz v3, :cond_29
const/4 v6, 0x0
invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
:cond_29
invoke-static {v1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v4}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;
move-result-object v2
const/4 v5, 0x0
const/4 v0, 0x0
if-eqz v2, :cond_56
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-eqz v6, :cond_44
const-string/jumbo v6, "to"
invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:cond_44
const-string/jumbo v6, "subject"
invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
const-string/jumbo v6, "body"
invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:cond_56
new-instance v6, Lcom/google/zxing/client/result/EmailAddressParsedResult;
invoke-direct {v6, v1, v5, v0, v4}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:goto_5b
:cond_5b
return-object v6
:cond_5c
invoke-static {v4}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_5b
move-object v1, v4
new-instance v7, Lcom/google/zxing/client/result/EmailAddressParsedResult;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v9, "mailto:"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v1, v6, v6, v8}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object v6, v7
goto :goto_5b
.end method
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
move-result-object v0
return-object v0
.end method