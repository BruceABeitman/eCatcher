.class public final Lcom/instagram/i/d/j;
.super Ljava/lang/Object;
.source "NewsfeedStoryLink__JsonHelper.java"
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/h;
.registers 4
new-instance v0, Lcom/instagram/i/d/h;
invoke-direct {v0}, Lcom/instagram/i/d/h;-><init>()V
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
invoke-static {v0, v1, p0}, Lcom/instagram/i/d/j;->a(Lcom/instagram/i/d/h;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_12
:cond_28
invoke-virtual {v0}, Lcom/instagram/i/d/h;->e()Lcom/instagram/i/d/h;
move-result-object v0
goto :goto_11
.end method
.method private static a(Lcom/instagram/i/d/h;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
.registers 7
const/4 v0, 0x0
const/4 v1, 0x1
const-string v2, "type"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1b
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v2, v3, :cond_16
:goto_12
iput-object v0, p0, Lcom/instagram/i/d/h;->a:Ljava/lang/String;
move v0, v1
:goto_15
return v0
:cond_16
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_12
:cond_1b
const-string v2, "id"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_34
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v2, v3, :cond_2f
:goto_2b
iput-object v0, p0, Lcom/instagram/i/d/h;->d:Ljava/lang/String;
move v0, v1
goto :goto_15
:cond_2f
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_2b
:cond_34
const-string v0, "start"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_44
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v0
iput v0, p0, Lcom/instagram/i/d/h;->b:I
move v0, v1
goto :goto_15
:cond_44
const-string v0, "end"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_54
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v0
iput v0, p0, Lcom/instagram/i/d/h;->c:I
move v0, v1
goto :goto_15
:cond_54
const/4 v0, 0x0
goto :goto_15
.end method