.class public final Lcom/google/zxing/client/a/j;
.super Lcom/google/zxing/client/a/a;
.source "EmailDoCoMoResultParser.java"
.field private static final b:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 1
const-string v0, "[a-zA-Z0-9@.!#$%&\'*+\\-/=?^_`{|}~]+"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/a/j;->b:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/a/a;-><init>()V
return-void
.end method
.method static a(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_18
sget-object v0, Lcom/google/zxing/client/a/j;->b:Ljava/util/regex/Pattern;
invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v0
if-eqz v0, :cond_18
const/16 v0, 0x40
invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
.registers 8
const/4 v0, 0x0
const/4 v4, 0x0
invoke-static {p1}, Lcom/google/zxing/client/a/j;->b(Lcom/google/zxing/m;)Ljava/lang/String;
move-result-object v1
const-string v2, "MATMSG:"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_f
:cond_e
:goto_e
return-object v0
:cond_f
const-string v2, "TO:"
invoke-static {v2, v1}, Lcom/google/zxing/client/a/j;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_e
aget-object v2, v2, v4
invoke-static {v2}, Lcom/google/zxing/client/a/j;->a(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_e
const-string v0, "SUB:"
invoke-static {v0, v1, v4}, Lcom/google/zxing/client/a/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v3
const-string v0, "BODY:"
invoke-static {v0, v1, v4}, Lcom/google/zxing/client/a/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v1
new-instance v0, Lcom/google/zxing/client/a/h;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "mailto:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/zxing/client/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method