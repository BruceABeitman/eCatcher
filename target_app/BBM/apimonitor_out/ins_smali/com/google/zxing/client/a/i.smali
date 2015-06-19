.class public final Lcom/google/zxing/client/a/i;
.super Lcom/google/zxing/client/a/u;
.source "EmailAddressResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
.registers 7
const/4 v1, 0x0
invoke-static {p1}, Lcom/google/zxing/client/a/i;->b(Lcom/google/zxing/m;)Ljava/lang/String;
move-result-object v4
const-string v0, "mailto:"
invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_15
const-string v0, "MAILTO:"
invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_53
:cond_15
const/4 v0, 0x7
invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
const/16 v2, 0x3f
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-ltz v2, :cond_27
const/4 v3, 0x0
invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_27
invoke-static {v4}, Lcom/google/zxing/client/a/i;->c(Ljava/lang/String;)Ljava/util/Map;
move-result-object v3
if-eqz v3, :cond_71
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_6f
const-string v0, "to"
invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
move-object v2, v0
:goto_3c
const-string v0, "subject"
invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "body"
invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:goto_4c
new-instance v3, Lcom/google/zxing/client/a/h;
invoke-direct {v3, v2, v0, v1, v4}, Lcom/google/zxing/client/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object v1, v3
:goto_52
:cond_52
return-object v1
:cond_53
invoke-static {v4}, Lcom/google/zxing/client/a/j;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_52
new-instance v0, Lcom/google/zxing/client/a/h;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "mailto:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v4, v1, v1, v2}, Lcom/google/zxing/client/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object v1, v0
goto :goto_52
:cond_6f
move-object v2, v0
goto :goto_3c
:cond_71
move-object v2, v0
move-object v0, v1
goto :goto_4c
.end method