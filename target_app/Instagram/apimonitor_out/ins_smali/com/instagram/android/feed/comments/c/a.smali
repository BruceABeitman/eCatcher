.class public final Lcom/instagram/android/feed/comments/c/a;
.super Lcom/instagram/api/j/b;
.source "PostCommentRequest.java"
.field private a:Lcom/instagram/feed/d/b;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
.registers 5
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
return-void
.end method
.method private d(Lcom/instagram/api/j/j;)Ljava/lang/Void;
.registers 7
const/4 v4, 0x0
iget-object v0, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;
move-result-object v0
sget-object v1, Lcom/instagram/feed/d/c;->e:Lcom/instagram/feed/d/c;
if-ne v0, v1, :cond_1b
invoke-virtual {p0}, Lcom/instagram/android/feed/comments/c/a;->l()Landroid/content/Context;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/feed/comments/c/a;->k()Landroid/support/v4/app/an;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;
sget v3, Lcom/instagram/feed/comments/c/b;->a:I
invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/feed/comments/b/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;ILcom/instagram/api/j/a;)V
:goto_1a
return-object v4
:cond_1b
invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
const-string v1, "comment"
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;
invoke-static {v1, v0}, Lcom/instagram/feed/comments/util/a;->a(Lcom/instagram/feed/d/b;Lcom/fasterxml/jackson/databind/JsonNode;)V
iget-object v0, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->D()V
goto :goto_1a
.end method
.method public final a(Lcom/instagram/api/j/j;)V
.registers 6
const/4 v1, 0x0
const/4 v0, 0x0
if-eqz p1, :cond_2d
invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
if-eqz v2, :cond_2d
invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
const-string v3, "spam"
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
if-eqz v2, :cond_1d
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v2
if-eqz v2, :cond_1d
const/4 v0, 0x1
:cond_1d
invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
const-string v3, "message"
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
if-eqz v2, :cond_2d
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v1
:cond_2d
iget-object v2, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;
invoke-virtual {v2, v0, v1}, Lcom/instagram/feed/d/b;->a(ZLjava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->E()V
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
const-string v0, "comment_text"
iget-object v1, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;
invoke-virtual {v1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Lcom/instagram/feed/d/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;
invoke-virtual {p0}, Lcom/instagram/android/feed/comments/c/a;->h()V
return-void
.end method
.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/c/a;->d(Lcom/instagram/api/j/j;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 5
const-string v0, "media/%s/comment/"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/instagram/android/feed/comments/c/a;->a:Lcom/instagram/feed/d/b;
invoke-virtual {v3}, Lcom/instagram/feed/d/b;->d()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
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