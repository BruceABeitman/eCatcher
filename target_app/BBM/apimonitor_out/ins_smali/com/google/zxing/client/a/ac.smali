.class public final Lcom/google/zxing/client/a/ac;
.super Lcom/google/zxing/client/a/q;
.source "URIParsedResult.java"
.field private static final b:Ljava/util/regex/Pattern;
.field public final a:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string v0, ":/*([^/@]+)@[^/]+"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/a/ac;->b:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
sget-object v0, Lcom/google/zxing/client/a/r;->d:Lcom/google/zxing/client/a/r;
invoke-direct {p0, v0}, Lcom/google/zxing/client/a/q;-><init>(Lcom/google/zxing/client/a/r;)V
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const/16 v1, 0x3a
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-gez v1, :cond_25
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "http://"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_20
:goto_20
iput-object v0, p0, Lcom/google/zxing/client/a/ac;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/google/zxing/client/a/ac;->c:Ljava/lang/String;
return-void
:cond_25
invoke-static {v0, v1}, Lcom/google/zxing/client/a/ac;->a(Ljava/lang/String;I)Z
move-result v1
if-eqz v1, :cond_20
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "http://"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_20
.end method
.method private static a(Ljava/lang/String;I)Z
.registers 7
const/4 v0, 0x0
const/16 v1, 0x2f
add-int/lit8 v2, p1, 0x1
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I
move-result v1
if-gez v1, :cond_2e
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
move v2, v1
:goto_10
add-int/lit8 v1, p1, 0x1
if-gt v2, v1, :cond_15
:cond_14
:goto_14
return v0
:cond_15
add-int/lit8 v1, p1, 0x1
:goto_17
if-ge v1, v2, :cond_2c
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x30
if-lt v3, v4, :cond_14
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x39
if-gt v3, v4, :cond_14
add-int/lit8 v1, v1, 0x1
goto :goto_17
:cond_2c
const/4 v0, 0x1
goto :goto_14
:cond_2e
move v2, v1
goto :goto_10
.end method
.method public final a()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x1e
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v1, p0, Lcom/google/zxing/client/a/ac;->c:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/a/ac;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/a/ac;->a:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/a/ac;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method