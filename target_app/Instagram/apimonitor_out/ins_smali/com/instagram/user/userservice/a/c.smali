.class public final Lcom/instagram/user/userservice/a/c;
.super Ljava/lang/Object;
.source "AutoCompleteUserListResponseParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/userservice/a/b;
.registers 4
new-instance v0, Lcom/instagram/user/userservice/a/b;
invoke-direct {v0}, Lcom/instagram/user/userservice/a/b;-><init>()V
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
invoke-static {v0, v1, p0}, Lcom/instagram/user/userservice/a/c;->a(Lcom/instagram/user/userservice/a/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_12
.end method
.method private static a(Lcom/instagram/user/userservice/a/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
.registers 7
const-string v0, "users"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_2a
:cond_10
:goto_10
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_2a
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_10
iget-object v0, p0, Lcom/instagram/user/userservice/a/b;->a:Ljava/util/List;
invoke-static {p2}, Lcom/instagram/user/c/a;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_10
:cond_2a
const/4 v0, 0x1
:goto_2b
return v0
:cond_2c
const-string v0, "expires"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3d
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getLongValue()J
move-result-wide v0
const-wide/16 v2, 0x3e8
mul-long/2addr v0, v2
iput-wide v0, p0, Lcom/instagram/user/userservice/a/b;->b:J
:cond_3d
invoke-static {p0, p1, p2}, Lcom/instagram/api/k/a/g;->a(Lcom/instagram/api/k/a/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
move-result v0
goto :goto_2b
.end method