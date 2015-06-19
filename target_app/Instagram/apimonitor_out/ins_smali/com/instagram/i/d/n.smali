.class public final Lcom/instagram/i/d/n;
.super Ljava/lang/Object;
.source "NewsfeedStory__JsonHelper.java"
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/c;
.registers 4
new-instance v0, Lcom/instagram/i/d/c;
invoke-direct {v0}, Lcom/instagram/i/d/c;-><init>()V
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
invoke-static {v0, v1, p0}, Lcom/instagram/i/d/n;->a(Lcom/instagram/i/d/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_12
:cond_28
invoke-virtual {v0}, Lcom/instagram/i/d/c;->l()Lcom/instagram/i/d/c;
move-result-object v0
goto :goto_11
.end method
.method private static a(Lcom/instagram/i/d/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
.registers 5
const/4 v0, 0x1
const-string v1, "type"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_10
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v1
iput v1, p0, Lcom/instagram/i/d/c;->a:I
:goto_f
return v0
:cond_10
const-string v1, "args"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
invoke-static {p2}, Lcom/instagram/i/d/m;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/d;
move-result-object v1
iput-object v1, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
goto :goto_f
:cond_1f
const/4 v0, 0x0
goto :goto_f
.end method