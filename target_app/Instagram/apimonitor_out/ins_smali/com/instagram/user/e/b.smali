.class public final Lcom/instagram/user/e/b;
.super Lcom/instagram/api/k/a/e;
.source "RequestedFollowsResponse.java"
.field  a:Ljava/util/List;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/api/k/a/e;-><init>()V
return-void
.end method
.method public final a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/user/e/b;->a:Ljava/util/List;
return-object v0
.end method
.method final b()Lcom/instagram/user/e/b;
.registers 4
iget-object v0, p0, Lcom/instagram/user/e/b;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/instagram/user/c/a;->a(Ljava/lang/Boolean;)V
goto :goto_6
:cond_1b
return-object p0
.end method