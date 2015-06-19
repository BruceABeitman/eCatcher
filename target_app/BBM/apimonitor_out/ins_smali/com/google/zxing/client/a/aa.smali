.class public final Lcom/google/zxing/client/a/aa;
.super Lcom/google/zxing/client/a/u;
.source "TelResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
.registers 6
const/4 v3, 0x4
invoke-static {p1}, Lcom/google/zxing/client/a/aa;->b(Lcom/google/zxing/m;)Ljava/lang/String;
move-result-object v1
const-string v0, "tel:"
invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_17
const-string v0, "TEL:"
invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_17
const/4 v0, 0x0
:goto_16
return-object v0
:cond_17
const-string v0, "TEL:"
invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_45
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "tel:"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_32
const/16 v2, 0x3f
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I
move-result v2
if-gez v2, :cond_47
invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
:goto_3e
new-instance v2, Lcom/google/zxing/client/a/z;
invoke-direct {v2, v1, v0}, Lcom/google/zxing/client/a/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v2
goto :goto_16
:cond_45
move-object v0, v1
goto :goto_32
:cond_47
invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
goto :goto_3e
.end method