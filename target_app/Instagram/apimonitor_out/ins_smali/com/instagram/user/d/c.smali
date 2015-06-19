.class public final Lcom/instagram/user/d/c;
.super Ljava/lang/Object;
.source "RecommendedUser__JsonHelper.java"
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/d/a;
.registers 4
new-instance v0, Lcom/instagram/user/d/a;
invoke-direct {v0}, Lcom/instagram/user/d/a;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_12
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
const/4 v0, 0x0
:goto_11
return-object v0
:goto_12
:cond_12
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_28
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {v0, v1, p0}, Lcom/instagram/user/d/c;->a(Lcom/instagram/user/d/a;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_12
:cond_28
invoke-virtual {v0}, Lcom/instagram/user/d/a;->g()Lcom/instagram/user/d/a;
move-result-object v0
goto :goto_11
.end method
.method private static a(Lcom/instagram/user/d/a;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
.registers 8
const/4 v0, 0x0
const/4 v2, 0x1
const-string v1, "algorithm"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1b
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v1, v3, :cond_16
:goto_12
iput-object v0, p0, Lcom/instagram/user/d/a;->c:Ljava/lang/String;
move v0, v2
:goto_15
return v0
:cond_16
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_12
:cond_1b
const-string v1, "social_context"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_34
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v1, v3, :cond_2f
:goto_2b
iput-object v0, p0, Lcom/instagram/user/d/a;->e:Ljava/lang/String;
move v0, v2
goto :goto_15
:cond_2f
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_2b
:cond_34
const-string v1, "user"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_44
invoke-static {p2}, Lcom/instagram/user/c/k;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;
move v0, v2
goto :goto_15
:cond_44
const-string v1, "caption"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5d
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v1, v3, :cond_58
:goto_54
iput-object v0, p0, Lcom/instagram/user/d/a;->b:Ljava/lang/String;
move v0, v2
goto :goto_15
:cond_58
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_54
:cond_5d
const-string v1, "thumbnail_urls"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_93
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
if-ne v1, v3, :cond_8f
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:cond_72
:goto_72
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v3, v4, :cond_8e
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v3, v4, :cond_89
move-object v3, v0
:goto_83
if-eqz v3, :cond_72
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_72
:cond_89
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_83
:cond_8e
move-object v0, v1
:cond_8f
iput-object v0, p0, Lcom/instagram/user/d/a;->d:Ljava/util/List;
move v0, v2
goto :goto_15
:cond_93
const/4 v0, 0x0
goto :goto_15
.end method