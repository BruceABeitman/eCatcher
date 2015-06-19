.class public final Lcom/instagram/android/c/a/w;
.super Lcom/instagram/api/j/b;
.source "UserForEditingRequest.java"
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
.registers 5
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
return-void
.end method
.method private static d(Lcom/instagram/api/j/j;)Lcom/instagram/android/h/b/c;
.registers 3
invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
const-string v1, "user"
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/h/b/c;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/h/b/c;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/api/j/j;->a(Ljava/lang/Object;)V
return-object v0
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
const-string v0, "edit"
const-string v1, "true"
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/android/c/a/w;->d(Lcom/instagram/api/j/j;)Lcom/instagram/android/h/b/c;
move-result-object v0
return-object v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
const-string v0, "accounts/current_user/"
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->c:I
return v0
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method