.class public final Lcom/google/zxing/client/result/URIParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "URIParsedResult.java"
.field private static final USER_IN_HOST:Ljava/util/regex/Pattern;
.field private final title:Ljava/lang/String;
.field private final uri:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, ":/*([^/@]+)@[^/]+"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/URIParsedResult;->USER_IN_HOST:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;
invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V
invoke-static {p1}, Lcom/google/zxing/client/result/URIParsedResult;->massageURI(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;
iput-object p2, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;
return-void
.end method
.method private static isColonFollowedByPortNumber(Ljava/lang/String;I)Z
.registers 5
add-int/lit8 v1, p1, 0x1
const/16 v2, 0x2f
invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I
move-result v0
if-gez v0, :cond_e
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
:cond_e
sub-int v2, v0, v1
invoke-static {p0, v1, v2}, Lcom/google/zxing/client/result/ResultParser;->isSubstringOfDigits(Ljava/lang/CharSequence;II)Z
move-result v2
return v2
.end method
.method private static massageURI(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object p0
const/16 v1, 0x3a
invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-gez v0, :cond_21
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "http://"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:cond_20
:goto_20
return-object p0
:cond_21
invoke-static {p0, v0}, Lcom/google/zxing/client/result/URIParsedResult;->isColonFollowedByPortNumber(Ljava/lang/String;I)Z
move-result v1
if-eqz v1, :cond_20
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "http://"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_20
.end method
.method public getDisplayResult()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x1e
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v1, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/URIParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/URIParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;
return-object v0
.end method
.method public getURI()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;
return-object v0
.end method
.method public isPossiblyMaliciousURI()Z
.registers 3
sget-object v0, Lcom/google/zxing/client/result/URIParsedResult;->USER_IN_HOST:Ljava/util/regex/Pattern;
iget-object v1, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v0
return v0
.end method