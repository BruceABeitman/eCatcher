.class public final Lcom/instagram/model/people/d;
.super Ljava/lang/Object;
.source "PeopleTag__JsonHelper.java"
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/model/people/PeopleTag;
.registers 4
new-instance v0, Lcom/instagram/model/people/PeopleTag;
invoke-direct {v0}, Lcom/instagram/model/people/PeopleTag;-><init>()V
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
invoke-static {v0, v1, p0}, Lcom/instagram/model/people/d;->a(Lcom/instagram/model/people/PeopleTag;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_12
:cond_28
invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->a()Lcom/instagram/model/people/PeopleTag;
move-result-object v0
goto :goto_11
.end method
.method private static a(Lcom/instagram/model/people/PeopleTag;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
.registers 5
const/4 v0, 0x1
const-string v1, "position"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_10
invoke-static {p2}, Lcom/instagram/model/people/PeopleTag;->a(Lcom/fasterxml/jackson/a/l;)Landroid/graphics/PointF;
move-result-object v1
iput-object v1, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;
:goto_f
return v0
:cond_10
const-string v1, "user"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
invoke-static {p2}, Lcom/instagram/user/c/k;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
move-result-object v1
iput-object v1, p0, Lcom/instagram/model/people/PeopleTag;->a:Lcom/instagram/user/c/a;
goto :goto_f
:cond_1f
const/4 v0, 0x0
goto :goto_f
.end method