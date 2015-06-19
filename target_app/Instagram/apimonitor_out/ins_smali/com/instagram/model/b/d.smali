.class public final Lcom/instagram/model/b/d;
.super Ljava/lang/Object;
.source "Recipient__JsonHelper.java"
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/model/b/a;
.registers 4
new-instance v0, Lcom/instagram/model/b/a;
invoke-direct {v0}, Lcom/instagram/model/b/a;-><init>()V
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
invoke-static {v0, v1, p0}, Lcom/instagram/model/b/d;->a(Lcom/instagram/model/b/a;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_12
.end method
.method private static a(Lcom/instagram/model/b/a;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
.registers 5
const/4 v0, 0x1
const-string v1, "has_commented"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_10
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v1
iput-boolean v1, p0, Lcom/instagram/model/b/a;->d:Z
:goto_f
return v0
:cond_10
const-string v1, "has_liked"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v1
iput-boolean v1, p0, Lcom/instagram/model/b/a;->c:Z
goto :goto_f
:cond_1f
const-string v1, "user"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2e
invoke-static {p2}, Lcom/instagram/user/c/k;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
move-result-object v1
iput-object v1, p0, Lcom/instagram/model/b/a;->a:Lcom/instagram/user/c/a;
goto :goto_f
:cond_2e
const-string v1, "has_seen"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3d
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v1
iput-boolean v1, p0, Lcom/instagram/model/b/a;->b:Z
goto :goto_f
:cond_3d
const/4 v0, 0x0
goto :goto_f
.end method