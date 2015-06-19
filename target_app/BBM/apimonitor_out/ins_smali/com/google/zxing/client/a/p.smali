.class public final Lcom/google/zxing/client/a/p;
.super Lcom/google/zxing/client/a/u;
.source "ISBNResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
.registers 6
const/4 v0, 0x0
iget-object v1, p1, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;
sget-object v2, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;
if-eq v1, v2, :cond_8
:cond_7
:goto_7
return-object v0
:cond_8
invoke-static {p1}, Lcom/google/zxing/client/a/p;->b(Lcom/google/zxing/m;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
const/16 v3, 0xd
if-ne v2, v3, :cond_7
const-string v2, "978"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_24
const-string v2, "979"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_7
:cond_24
new-instance v0, Lcom/google/zxing/client/a/o;
invoke-direct {v0, v1}, Lcom/google/zxing/client/a/o;-><init>(Ljava/lang/String;)V
goto :goto_7
.end method