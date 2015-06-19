.class public final Lcom/instagram/creation/b/b/k;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "PendingRecipientDeserializer.java"
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/instagram/creation/b/a/f;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method private static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/f;
.registers 6
const/4 v0, 0x0
move-object v1, v0
move-object v2, v0
:goto_3
:cond_3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v3, v4, :cond_45
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v3
const-string v4, "username"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1f
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_3
:cond_1f
const-string v4, "user_id"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_2f
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_3
:cond_2f
const-string v4, "profilepic_url"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3f
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_3
:cond_3f
if-eqz v3, :cond_3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_3
:cond_45
new-instance v3, Lcom/instagram/creation/b/a/f;
invoke-direct {v3, v2, v1, v0}, Lcom/instagram/creation/b/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v3
.end method
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-static {p1}, Lcom/instagram/creation/b/b/k;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/f;
move-result-object v0
return-object v0
.end method