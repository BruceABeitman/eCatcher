.class public final Lcom/instagram/creation/b/b/m;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "PeopleTagPendingMediaDeserializer.java"
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/instagram/model/people/PeopleTag;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method private static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/model/people/PeopleTag;
.registers 7
const/4 v0, 0x0
new-instance v2, Lcom/instagram/model/people/PeopleTag;
invoke-direct {v2}, Lcom/instagram/model/people/PeopleTag;-><init>()V
move-object v1, v0
:goto_7
:cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v3, v4, :cond_5e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v3
const-string v4, "username"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_23
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_7
:cond_23
const-string v4, "user_id"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_33
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_7
:cond_33
const-string v4, "position"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_58
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F
move-result v3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F
move-result v4
new-instance v5, Landroid/graphics/PointF;
invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V
invoke-virtual {v2, v5}, Lcom/instagram/model/people/PeopleTag;->a(Landroid/graphics/PointF;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
goto :goto_7
:cond_58
if-eqz v3, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_7
:cond_5e
if-eqz v1, :cond_68
if-eqz v0, :cond_68
invoke-virtual {v2, v1}, Lcom/instagram/model/people/PeopleTag;->a(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Lcom/instagram/model/people/PeopleTag;->b(Ljava/lang/String;)V
:cond_68
return-object v2
.end method
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-static {p1}, Lcom/instagram/creation/b/b/m;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/model/people/PeopleTag;
move-result-object v0
return-object v0
.end method