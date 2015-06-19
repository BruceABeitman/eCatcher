.class public final Lcom/google/zxing/client/result/URIResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "URIResultParser.java"
.field private static final URL_WITHOUT_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;
.field private static final URL_WITH_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "[a-zA-Z0-9]{2,}:"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/URIResultParser;->URL_WITH_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;
const-string/jumbo v0, "([a-zA-Z0-9\\-]+\\.)+[a-zA-Z]{2,}(:\\d{1,5})?(/|\\?|$)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/URIResultParser;->URL_WITHOUT_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V
return-void
.end method
.method static isBasicallyValidURI(Ljava/lang/String;)Z
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
const-string/jumbo v3, " "
invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_d
move v1, v2
:cond_c
:goto_c
return v1
:cond_d
sget-object v3, Lcom/google/zxing/client/result/URIResultParser;->URL_WITH_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;
invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v3
if-eqz v3, :cond_1f
invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I
move-result v3
if-eqz v3, :cond_c
:cond_1f
sget-object v3, Lcom/google/zxing/client/result/URIResultParser;->URL_WITHOUT_PROTOCOL_PATTERN:Ljava/util/regex/Pattern;
invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v3
if-eqz v3, :cond_31
invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I
move-result v3
if-eqz v3, :cond_c
:cond_31
move v1, v2
goto :goto_c
.end method
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/URIResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
move-result-object v0
return-object v0
.end method
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
.registers 6
const/4 v2, 0x0
invoke-static {p1}, Lcom/google/zxing/client/result/URIResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "URL:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_17
const-string/jumbo v1, "URI:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_26
:cond_17
new-instance v1, Lcom/google/zxing/client/result/URIParsedResult;
const/4 v3, 0x4
invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3, v2}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:goto_25
return-object v1
:cond_26
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/zxing/client/result/URIResultParser;->isBasicallyValidURI(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_36
new-instance v1, Lcom/google/zxing/client/result/URIParsedResult;
invoke-direct {v1, v0, v2}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_25
:cond_36
move-object v1, v2
goto :goto_25
.end method