.class public final Lcom/google/zxing/client/a/f;
.super Lcom/google/zxing/client/a/a;
.source "BookmarkDoCoMoResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/a/a;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
.registers 5
iget-object v0, p1, Lcom/google/zxing/m;->a:Ljava/lang/String;
const-string v1, "MEBKM:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_28
const-string v1, "TITLE:"
const/4 v2, 0x1
invoke-static {v1, v0, v2}, Lcom/google/zxing/client/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v1
const-string v2, "URL:"
invoke-static {v2, v0}, Lcom/google/zxing/client/a/f;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_28
const/4 v2, 0x0
aget-object v2, v0, v2
invoke-static {v2}, Lcom/google/zxing/client/a/ad;->a(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_28
new-instance v0, Lcom/google/zxing/client/a/ac;
invoke-direct {v0, v2, v1}, Lcom/google/zxing/client/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:goto_27
return-object v0
:cond_28
const/4 v0, 0x0
goto :goto_27
.end method