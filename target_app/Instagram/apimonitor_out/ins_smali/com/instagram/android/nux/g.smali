.class public final Lcom/instagram/android/nux/g;
.super Ljava/lang/Object;
.source "FacebookLoginResponse.java"
.field public final a:I
.field public final b:Lcom/instagram/user/c/a;
.field public final c:Ljava/lang/String;
.field public final d:Ljava/lang/String;
.field public final e:Ljava/lang/String;
.field public final f:Ljava/lang/String;
.field public final g:Ljava/util/List;
.method private constructor <init>(ILcom/instagram/user/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/instagram/android/nux/g;->a:I
iput-object p2, p0, Lcom/instagram/android/nux/g;->b:Lcom/instagram/user/c/a;
iput-object p4, p0, Lcom/instagram/android/nux/g;->d:Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/android/nux/g;->c:Ljava/lang/String;
iput-object p5, p0, Lcom/instagram/android/nux/g;->e:Ljava/lang/String;
iput-object p6, p0, Lcom/instagram/android/nux/g;->f:Ljava/lang/String;
iput-object p7, p0, Lcom/instagram/android/nux/g;->g:Ljava/util/List;
return-void
.end method
.method public static a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/nux/g;
.registers 10
const/4 v2, 0x0
const/4 v1, 0x0
const-string v0, "code"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I
move-result v1
:cond_e
const-string v0, "email"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_ab
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
:goto_1a
const-string v3, "token"
invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v3
if-eqz v3, :cond_a8
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v6
:goto_26
const-string v3, "fb_me"
invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v4
if-eqz v4, :cond_a4
const-string v3, "name"
invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v3
if-eqz v3, :cond_a2
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v3
:goto_3a
const-string v5, "email"
invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v5
if-eqz v5, :cond_46
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
:cond_46
const-string v5, "username"
invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v4
if-eqz v4, :cond_9f
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v4
move-object v5, v0
:goto_53
invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;
move-result-object v7
:try_start_57
const-string v0, "logged_in_user"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-nez v0, :cond_65
const-string v0, "user"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
:cond_65
if-eqz v0, :cond_9d
const-class v8, Lcom/instagram/user/c/a;
invoke-virtual {v7, v0, v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/a/v;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
:goto_6f
:try_end_6f
.catch Lcom/fasterxml/jackson/a/p; {:try_start_57 .. :try_end_6f} :catch_9b
move-object v2, v0
:goto_70
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
const-string v0, "suggestions"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_95
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_81
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_95
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_81
:cond_95
new-instance v0, Lcom/instagram/android/nux/g;
invoke-direct/range {v0 .. v7}, Lcom/instagram/android/nux/g;-><init>(ILcom/instagram/user/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
return-object v0
:catch_9b
move-exception v0
goto :goto_70
:cond_9d
move-object v0, v2
goto :goto_6f
:cond_9f
move-object v4, v2
move-object v5, v0
goto :goto_53
:cond_a2
move-object v3, v2
goto :goto_3a
:cond_a4
move-object v4, v2
move-object v3, v2
move-object v5, v0
goto :goto_53
:cond_a8
move-object v6, v2
goto/16 :goto_26
:cond_ab
move-object v0, v2
goto/16 :goto_1a
.end method
.method public final a()Z
.registers 3
iget v0, p0, Lcom/instagram/android/nux/g;->a:I
if-eqz v0, :cond_9
iget v0, p0, Lcom/instagram/android/nux/g;->a:I
const/4 v1, 0x7
if-ne v0, v1, :cond_b
:cond_9
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final b()Z
.registers 4
const/4 v0, 0x1
iget v1, p0, Lcom/instagram/android/nux/g;->a:I
if-eq v1, v0, :cond_a
iget v1, p0, Lcom/instagram/android/nux/g;->a:I
const/4 v2, 0x7
if-ne v1, v2, :cond_b
:cond_a
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final c()Z
.registers 3
iget v0, p0, Lcom/instagram/android/nux/g;->a:I
const/4 v1, 0x5
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public final d()Z
.registers 3
iget v0, p0, Lcom/instagram/android/nux/g;->a:I
const/4 v1, 0x4
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method