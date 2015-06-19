.class final Lcom/facebook/h;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Lcom/facebook/bm;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/facebook/s;
.field final synthetic c:Ljava/util/ArrayList;
.field final synthetic d:Lcom/facebook/c;
.method constructor <init>(Lcom/facebook/c;Ljava/util/ArrayList;Lcom/facebook/s;Ljava/util/ArrayList;)V
.registers 5
iput-object p1, p0, Lcom/facebook/h;->d:Lcom/facebook/c;
iput-object p2, p0, Lcom/facebook/h;->a:Ljava/util/ArrayList;
iput-object p3, p0, Lcom/facebook/h;->b:Lcom/facebook/s;
iput-object p4, p0, Lcom/facebook/h;->c:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/facebook/h;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_4a
iget-object v0, p0, Lcom/facebook/h;->a:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/facebook/h;->a:Ljava/util/ArrayList;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/facebook/h;->a:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/facebook/h;->a:Ljava/util/ArrayList;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/facebook/h;->b:Lcom/facebook/s;
iget-object v0, v0, Lcom/facebook/s;->b:Lcom/facebook/a;
iget-object v1, p0, Lcom/facebook/h;->c:Ljava/util/ArrayList;
invoke-static {v0, v1}, Lcom/facebook/a;->a(Lcom/facebook/a;Ljava/util/List;)Lcom/facebook/a;
move-result-object v0
invoke-static {v0}, Lcom/facebook/s;->a(Lcom/facebook/a;)Lcom/facebook/s;
move-result-object v0
:goto_3f
iget-object v1, p0, Lcom/facebook/h;->d:Lcom/facebook/c;
invoke-virtual {v1, v0}, Lcom/facebook/c;->b(Lcom/facebook/s;)V
:try_end_44
.catchall {:try_start_0 .. :try_end_44} :catchall_68
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_52
iget-object v0, p0, Lcom/facebook/h;->d:Lcom/facebook/c;
invoke-static {v0}, Lcom/facebook/c;->a(Lcom/facebook/c;)V
:goto_49
return-void
:try_start_4a
:cond_4a
const-string v0, "User logged in as different Facebook user."
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;
:try_end_50
.catchall {:try_start_4a .. :try_end_50} :catchall_68
.catch Ljava/lang/Exception; {:try_start_4a .. :try_end_50} :catch_52
move-result-object v0
goto :goto_3f
:catch_52
move-exception v0
:try_start_53
iget-object v1, p0, Lcom/facebook/h;->d:Lcom/facebook/c;
const-string v2, "Caught exception"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/facebook/c;->b(Lcom/facebook/s;)V
:try_end_62
.catchall {:try_start_53 .. :try_end_62} :catchall_68
iget-object v0, p0, Lcom/facebook/h;->d:Lcom/facebook/c;
invoke-static {v0}, Lcom/facebook/c;->a(Lcom/facebook/c;)V
goto :goto_49
:catchall_68
move-exception v0
iget-object v1, p0, Lcom/facebook/h;->d:Lcom/facebook/c;
invoke-static {v1}, Lcom/facebook/c;->a(Lcom/facebook/c;)V
throw v0
.end method