.class public final Lcom/instagram/share/b/l;
.super Ljava/lang/Object;
.source "GraphMeResponse__JsonHelper.java"
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/share/b/k;
.registers 4
new-instance v0, Lcom/instagram/share/b/k;
invoke-direct {v0}, Lcom/instagram/share/b/k;-><init>()V
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
invoke-static {v0, v1, p0}, Lcom/instagram/share/b/l;->a(Lcom/instagram/share/b/k;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_12
.end method
.method private static a(Lcom/instagram/share/b/k;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
.registers 5
const-string v0, "id"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_15
const/4 v0, 0x0
:goto_11
iput-object v0, p0, Lcom/instagram/share/b/k;->a:Ljava/lang/String;
const/4 v0, 0x1
:goto_14
return v0
:cond_15
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_1a
const/4 v0, 0x0
goto :goto_14
.end method