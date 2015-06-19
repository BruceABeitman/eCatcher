.class public final Lcom/google/zxing/client/a/e;
.super Lcom/google/zxing/client/a/a;
.source "BizcardResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/a/a;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
.registers 17
invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/a/e;->b(Lcom/google/zxing/m;)Ljava/lang/String;
move-result-object v2
const-string v0, "BIZCARD:"
invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
const-string v0, "N:"
const/4 v1, 0x1
invoke-static {v0, v2, v1}, Lcom/google/zxing/client/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v1
const-string v0, "X:"
const/4 v3, 0x1
invoke-static {v0, v2, v3}, Lcom/google/zxing/client/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
if-nez v1, :cond_81
move-object v1, v0
:goto_1f
:cond_1f
const-string v0, "T:"
const/4 v3, 0x1
invoke-static {v0, v2, v3}, Lcom/google/zxing/client/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v13
const-string v0, "C:"
const/4 v3, 0x1
invoke-static {v0, v2, v3}, Lcom/google/zxing/client/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v11
const-string v0, "A:"
invoke-static {v0, v2}, Lcom/google/zxing/client/a/e;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
move-result-object v9
const-string v0, "B:"
const/4 v3, 0x1
invoke-static {v0, v2, v3}, Lcom/google/zxing/client/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v3
const-string v0, "M:"
const/4 v4, 0x1
invoke-static {v0, v2, v4}, Lcom/google/zxing/client/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v4
const-string v0, "F:"
const/4 v5, 0x1
invoke-static {v0, v2, v5}, Lcom/google/zxing/client/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v5
const-string v0, "E:"
const/4 v6, 0x1
invoke-static {v0, v2, v6}, Lcom/google/zxing/client/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v6
new-instance v0, Lcom/google/zxing/client/a/d;
invoke-static {v1}, Lcom/google/zxing/client/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
new-instance v7, Ljava/util/ArrayList;
const/4 v8, 0x3
invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V
if-eqz v3, :cond_61
invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_61
if-eqz v4, :cond_66
invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_66
if-eqz v5, :cond_6b
invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_6b
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v3
if-nez v3, :cond_9c
const/4 v3, 0x0
:goto_72
const/4 v4, 0x0
invoke-static {v6}, Lcom/google/zxing/client/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v10, 0x0
const/4 v12, 0x0
const/4 v14, 0x0
invoke-direct/range {v0 .. v14}, Lcom/google/zxing/client/a/d;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_d
:cond_81
if-eqz v0, :cond_1f
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v3, 0x20
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v1, v0
goto :goto_1f
:cond_9c
new-array v3, v3, [Ljava/lang/String;
invoke-interface {v7, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v3
check-cast v3, [Ljava/lang/String;
goto :goto_72
.end method