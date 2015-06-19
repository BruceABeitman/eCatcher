.class public final Lcom/google/zxing/client/result/SMSMMSResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMSMMSResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V
return-void
.end method
.method private static addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V
.registers 7
const/16 v3, 0x3b
invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-gez v1, :cond_10
invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
const/4 v3, 0x0
invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:goto_f
return-void
:cond_10
const/4 v3, 0x0
invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
add-int/lit8 v3, v1, 0x1
invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "via="
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_30
const/4 v3, 0x4
invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
:goto_2c
invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_30
const/4 v2, 0x0
goto :goto_2c
.end method
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
move-result-object v0
return-object v0
.end method
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
.registers 17
invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/SMSMMSResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
move-result-object v8
const-string/jumbo v12, "sms:"
invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-nez v12, :cond_2a
const-string/jumbo v12, "SMS:"
invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-nez v12, :cond_2a
const-string/jumbo v12, "mms:"
invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-nez v12, :cond_2a
const-string/jumbo v12, "MMS:"
invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v12
if-nez v12, :cond_2a
const/4 v12, 0x0
:goto_29
return-object v12
:cond_2a
invoke-static {v8}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;
move-result-object v3
const/4 v10, 0x0
const/4 v0, 0x0
const/4 v7, 0x0
if-eqz v3, :cond_4c
invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z
move-result v12
if-nez v12, :cond_4c
const-string/jumbo v12, "subject"
invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
const-string/jumbo v12, "body"
invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const/4 v7, 0x1
:cond_4c
const/16 v12, 0x3f
const/4 v13, 0x4
invoke-virtual {v8, v12, v13}, Ljava/lang/String;->indexOf(II)I
move-result v6
if-ltz v6, :cond_57
if-nez v7, :cond_7e
:cond_57
const/4 v12, 0x4
invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v9
:goto_5c
const/4 v2, -0x1
new-instance v5, Ljava/util/ArrayList;
const/4 v12, 0x1
invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V
new-instance v11, Ljava/util/ArrayList;
const/4 v12, 0x1
invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V
:goto_69
const/16 v12, 0x2c
add-int/lit8 v13, v2, 0x1
invoke-virtual {v9, v12, v13}, Ljava/lang/String;->indexOf(II)I
move-result v1
if-le v1, v2, :cond_84
add-int/lit8 v12, v2, 0x1
invoke-virtual {v9, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-static {v5, v11, v4}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V
move v2, v1
goto :goto_69
:cond_7e
const/4 v12, 0x4
invoke-virtual {v8, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
goto :goto_5c
:cond_84
add-int/lit8 v12, v2, 0x1
invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v12
invoke-static {v5, v11, v12}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V
new-instance v14, Lcom/google/zxing/client/result/SMSParsedResult;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v12
new-array v12, v12, [Ljava/lang/String;
invoke-interface {v5, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v12
check-cast v12, [Ljava/lang/String;
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v13
new-array v13, v13, [Ljava/lang/String;
invoke-interface {v11, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v13
check-cast v13, [Ljava/lang/String;
invoke-direct {v14, v12, v13, v10, v0}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object v12, v14
goto/16 :goto_29
.end method