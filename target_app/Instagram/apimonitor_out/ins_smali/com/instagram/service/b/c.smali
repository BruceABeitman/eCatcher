.class final Lcom/instagram/service/b/c;
.super Lcom/instagram/service/b/d;
.source "CustomObjectMapper.java"
.field final synthetic a:Lcom/instagram/service/b/a;
.field private d:Lcom/instagram/user/c/h;
.method public constructor <init>(Lcom/instagram/service/b/a;Lcom/instagram/service/b/a;Ljava/lang/Class;Lcom/instagram/user/c/h;)V
.registers 5
iput-object p1, p0, Lcom/instagram/service/b/c;->a:Lcom/instagram/service/b/a;
invoke-direct {p0, p3, p2}, Lcom/instagram/service/b/d;-><init>(Ljava/lang/Class;Lcom/instagram/service/b/a;)V
iput-object p4, p0, Lcom/instagram/service/b/c;->d:Lcom/instagram/user/c/h;
return-void
.end method
.method public final createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;
const-string v0, "pk"
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/service/b/c;->d:Lcom/instagram/user/c/h;
invoke-interface {v1, v0}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;
move-result-object v0
invoke-static {p2, v0}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
move-result-object v1
if-nez v0, :cond_22
iget-object v0, p0, Lcom/instagram/service/b/c;->d:Lcom/instagram/user/c/h;
invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2, v1}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
:goto_21
return-object v1
:cond_22
invoke-virtual {v1}, Lcom/instagram/user/c/a;->D()V
goto :goto_21
.end method