.class public final Lcom/instagram/f/a/a/f;
.super Ljava/lang/Object;
.source "ClearInboxNewCountResponse__JsonHelper.java"
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/a/e;
.registers 4
new-instance v0, Lcom/instagram/f/a/a/e;
invoke-direct {v0}, Lcom/instagram/f/a/a/e;-><init>()V
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
invoke-static {v0, v1, p0}, Lcom/instagram/f/a/a/f;->a(Lcom/instagram/f/a/a/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_12
.end method
.method private static a(Lcom/instagram/f/a/a/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
.registers 4
const-string v0, "new_shares_info"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
invoke-static {p2}, Lcom/instagram/f/b/b;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/b/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/f/a/a/e;->a:Lcom/instagram/f/b/a;
const/4 v0, 0x1
:goto_f
return v0
:cond_10
invoke-static {p0, p1, p2}, Lcom/instagram/api/k/a/g;->a(Lcom/instagram/api/k/a/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
move-result v0
goto :goto_f
.end method