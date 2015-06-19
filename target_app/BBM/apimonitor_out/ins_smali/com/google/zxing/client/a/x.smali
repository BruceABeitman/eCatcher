.class public final Lcom/google/zxing/client/a/x;
.super Lcom/google/zxing/client/a/u;
.source "SMSTOMMSTOResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
.registers 6
const/4 v0, 0x0
invoke-static {p1}, Lcom/google/zxing/client/a/x;->b(Lcom/google/zxing/m;)Ljava/lang/String;
move-result-object v1
const-string v2, "smsto:"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_26
const-string v2, "SMSTO:"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_26
const-string v2, "mmsto:"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_26
const-string v2, "MMSTO:"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_26
:goto_25
return-object v0
:cond_26
const/4 v2, 0x6
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x3a
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-ltz v2, :cond_3e
add-int/lit8 v0, v2, 0x1
invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
const/4 v3, 0x0
invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
:cond_3e
new-instance v2, Lcom/google/zxing/client/a/w;
invoke-direct {v2, v1, v0}, Lcom/google/zxing/client/a/w;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v2
goto :goto_25
.end method