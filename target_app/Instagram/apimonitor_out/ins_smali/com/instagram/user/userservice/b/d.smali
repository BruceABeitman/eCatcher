.class public final Lcom/instagram/user/userservice/b/d;
.super Ljava/lang/Object;
.source "SuggestionsUserListResponse_UserGroup__JsonHelper.java"
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/userservice/b/c;
.registers 4
new-instance v0, Lcom/instagram/user/userservice/b/c;
invoke-direct {v0}, Lcom/instagram/user/userservice/b/c;-><init>()V
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
invoke-static {v0, v1, p0}, Lcom/instagram/user/userservice/b/d;->a(Lcom/instagram/user/userservice/b/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_12
.end method
.method private static a(Lcom/instagram/user/userservice/b/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
.registers 7
const/4 v1, 0x1
const-string v0, "frequency"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D
move-result-wide v2
iput-wide v2, p0, Lcom/instagram/user/userservice/b/c;->a:D
move v0, v1
:goto_10
return v0
:cond_11
const-string v0, "users"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3d
const/4 v0, 0x0
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
if-ne v2, v3, :cond_39
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_27
:cond_27
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v2, v3, :cond_39
invoke-static {p2}, Lcom/instagram/user/c/k;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
move-result-object v2
if-eqz v2, :cond_27
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_27
:cond_39
iput-object v0, p0, Lcom/instagram/user/userservice/b/c;->b:Ljava/util/List;
move v0, v1
goto :goto_10
:cond_3d
const/4 v0, 0x0
goto :goto_10
.end method