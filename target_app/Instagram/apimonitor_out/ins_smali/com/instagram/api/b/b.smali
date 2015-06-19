.class public final Lcom/instagram/api/b/b;
.super Ljava/lang/Object;
.source "SystemMessage.java"
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/Float;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/Float;)Lcom/instagram/api/b/b;
.registers 3
new-instance v0, Lcom/instagram/api/b/b;
invoke-direct {v0}, Lcom/instagram/api/b/b;-><init>()V
iput-object p0, v0, Lcom/instagram/api/b/b;->a:Ljava/lang/String;
iput-object p1, v0, Lcom/instagram/api/b/b;->b:Ljava/lang/Float;
return-object v0
.end method
.method public static a(Lcom/fasterxml/jackson/a/l;)Ljava/util/List;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_2c
:cond_9
:goto_9
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_2c
invoke-static {p0}, Lcom/instagram/api/b/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/api/b/b;->a()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_9
invoke-virtual {v1}, Lcom/instagram/api/b/b;->b()Ljava/lang/Float;
move-result-object v2
if-eqz v2, :cond_9
if-nez v0, :cond_28
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:cond_28
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_2c
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/b/b;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/Float;
.registers 2
iget-object v0, p0, Lcom/instagram/api/b/b;->b:Ljava/lang/Float;
return-object v0
.end method