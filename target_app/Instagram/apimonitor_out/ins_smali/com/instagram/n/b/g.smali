.class public final Lcom/instagram/n/b/g;
.super Ljava/lang/Object;
.source "AutoUpdateInfo__JsonHelper.java"
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/n/b/f;
.registers 4
new-instance v0, Lcom/instagram/n/b/f;
invoke-direct {v0}, Lcom/instagram/n/b/f;-><init>()V
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
invoke-static {v0, v1, p0}, Lcom/instagram/n/b/g;->a(Lcom/instagram/n/b/f;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_12
.end method
.method private static a(Lcom/instagram/n/b/f;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
.registers 6
const/4 v1, 0x1
const-string v0, "new_version"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v0
iput v0, p0, Lcom/instagram/n/b/f;->a:I
move v0, v1
:goto_10
return v0
:cond_11
const-string v0, "new_version_url"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2b
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v0, v2, :cond_26
const/4 v0, 0x0
:goto_22
iput-object v0, p0, Lcom/instagram/n/b/f;->c:Ljava/lang/String;
move v0, v1
goto :goto_10
:cond_26
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_22
:cond_2b
const-string v0, "min_version"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3b
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v0
iput v0, p0, Lcom/instagram/n/b/f;->b:I
move v0, v1
goto :goto_10
:cond_3b
const/4 v0, 0x0
goto :goto_10
.end method