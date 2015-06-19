.class public final Lcom/instagram/api/b/c;
.super Ljava/lang/Object;
.source "SystemMessage__JsonHelper.java"
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/b/b;
.registers 4
new-instance v0, Lcom/instagram/api/b/b;
invoke-direct {v0}, Lcom/instagram/api/b/b;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_12
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
const/4 v0, 0x0
:cond_11
return-object v0
:cond_12
:goto_12
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_11
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {v0, v1, p0}, Lcom/instagram/api/b/c;->a(Lcom/instagram/api/b/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_12
.end method
.method private static a(Lcom/instagram/api/b/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
.registers 7
const/4 v1, 0x1
const-string v0, "key"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1b
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v0, v2, :cond_16
const/4 v0, 0x0
:goto_12
iput-object v0, p0, Lcom/instagram/api/b/b;->a:Ljava/lang/String;
move v0, v1
:goto_15
return v0
:cond_16
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_12
:cond_1b
const-string v0, "time"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
new-instance v0, Ljava/lang/Float;
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D
move-result-wide v2
invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V
iput-object v0, p0, Lcom/instagram/api/b/b;->b:Ljava/lang/Float;
move v0, v1
goto :goto_15
:cond_30
const/4 v0, 0x0
goto :goto_15
.end method