.class public final Lcom/google/zxing/client/a/ae;
.super Lcom/google/zxing/client/a/u;
.source "URLTOResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
.registers 6
const/4 v0, 0x0
const/4 v3, 0x6
invoke-static {p1}, Lcom/google/zxing/client/a/ae;->b(Lcom/google/zxing/m;)Ljava/lang/String;
move-result-object v1
const-string v2, "urlto:"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_17
const-string v2, "URLTO:"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_17
:cond_16
:goto_16
return-object v0
:cond_17
const/16 v2, 0x3a
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I
move-result v2
if-ltz v2, :cond_16
if-gt v2, v3, :cond_2e
:goto_21
add-int/lit8 v2, v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
new-instance v1, Lcom/google/zxing/client/a/ac;
invoke-direct {v1, v2, v0}, Lcom/google/zxing/client/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
goto :goto_16
:cond_2e
invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_21
.end method