.class public final Lcom/instagram/android/c/a/l;
.super Lcom/instagram/feed/a/a;
.source "PhotosOfYouFeedRequest.java"
.field private final a:Ljava/lang/String;
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;Lcom/instagram/api/j/f;Ljava/lang/String;)V
.registers 12
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/instagram/feed/a/a;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
iput-object p5, p0, Lcom/instagram/android/c/a/l;->a:Ljava/lang/String;
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
.registers 7
invoke-virtual {p3}, Lcom/instagram/api/j/q;->h()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/a/b;
const-string v1, "requires_review"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3f
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
if-nez v0, :cond_1b
new-instance v0, Lcom/instagram/feed/a/b;
invoke-direct {v0}, Lcom/instagram/feed/a/b;-><init>()V
invoke-virtual {p3, v0}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V
:cond_1b
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/c/a/l;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3d
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Z)V
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v1
invoke-interface {v1, v0}, Lcom/instagram/user/c/h;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
:cond_3d
const/4 v0, 0x1
:goto_3e
return v0
:cond_3f
invoke-super {p0, p1, p2, p3}, Lcom/instagram/feed/a/a;->a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
move-result v0
goto :goto_3e
.end method
.method protected final e()Ljava/lang/String;
.registers 5
const-string v0, "usertags/%s/feed/"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/instagram/android/c/a/l;->a:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method