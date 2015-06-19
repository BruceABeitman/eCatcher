.class public final Lcom/instagram/android/login/c/e;
.super Lcom/instagram/api/j/b;
.source "FacebookVerifyAccessTokenRequest.java"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private e:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
.registers 5
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
return-void
.end method
.method private static d(Lcom/instagram/api/j/j;)Lcom/instagram/android/login/c/f;
.registers 5
new-instance v1, Lcom/instagram/android/login/c/f;
invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
const-string v3, "user"
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
const-class v3, Lcom/instagram/user/c/a;
invoke-virtual {v0, v2, v3}, Lcom/instagram/service/b/a;->treeToValue(Lcom/fasterxml/jackson/a/v;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
const-string v3, "token"
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v0, v2}, Lcom/instagram/android/login/c/f;-><init>(Lcom/instagram/user/c/a;Ljava/lang/String;)V
return-object v1
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/api/j/b;->a(Lcom/instagram/common/a/c/b;)V
const-string v0, "fb_access_token"
iget-object v1, p0, Lcom/instagram/android/login/c/e;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/c/e;->b:Ljava/lang/String;
if-eqz v0, :cond_15
const-string v0, "user_id"
iget-object v1, p0, Lcom/instagram/android/login/c/e;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_15
iget-object v0, p0, Lcom/instagram/android/login/c/e;->e:Ljava/lang/String;
if-eqz v0, :cond_20
const-string v0, "user_email"
iget-object v1, p0, Lcom/instagram/android/login/c/e;->e:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_20
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/c/e;->a:Ljava/lang/String;
invoke-virtual {p0}, Lcom/instagram/android/login/c/e;->h()V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/c/e;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/android/login/c/e;->b:Ljava/lang/String;
invoke-virtual {p0}, Lcom/instagram/android/login/c/e;->h()V
return-void
.end method
.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/android/login/c/e;->d(Lcom/instagram/api/j/j;)Lcom/instagram/android/login/c/f;
move-result-object v0
return-object v0
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/c/e;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/android/login/c/e;->e:Ljava/lang/String;
invoke-virtual {p0}, Lcom/instagram/android/login/c/e;->h()V
return-void
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
const-string v0, "fb/verify_access_token/"
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method public final c(Lcom/instagram/api/j/j;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method