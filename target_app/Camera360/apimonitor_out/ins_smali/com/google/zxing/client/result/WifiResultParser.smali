.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V
return-void
.end method
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
move-result-object v0
return-object v0
.end method
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
.registers 11
const/4 v5, 0x0
const/16 v8, 0x3b
const/4 v7, 0x0
invoke-static {p1}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v6, "WIFI:"
invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_12
:cond_11
:goto_11
return-object v5
:cond_12
const-string/jumbo v6, "S:"
invoke-static {v6, v2, v8, v7}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_11
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-nez v6, :cond_11
const-string/jumbo v5, "P:"
invoke-static {v5, v2, v8, v7}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
move-result-object v1
const-string/jumbo v5, "T:"
invoke-static {v5, v2, v8, v7}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_34
const-string/jumbo v4, "nopass"
:cond_34
const-string/jumbo v5, "H:"
invoke-static {v5, v2, v8, v7}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
new-instance v5, Lcom/google/zxing/client/result/WifiParsedResult;
invoke-direct {v5, v4, v3, v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
goto :goto_11
.end method