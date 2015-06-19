.class final Lcom/facebook/d/b/e;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Ljava/lang/Throwable;
.field final synthetic d:Lcom/facebook/d/b/d;
.method constructor <init>(Lcom/facebook/d/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
iput-object p1, p0, Lcom/facebook/d/b/e;->d:Lcom/facebook/d/b/d;
iput-object p2, p0, Lcom/facebook/d/b/e;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/d/b/e;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/facebook/d/b/e;->c:Ljava/lang/Throwable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
:try_start_0
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string v0, "soft_error_category"
iget-object v2, p0, Lcom/facebook/d/b/e;->a:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "soft_error_message"
iget-object v2, p0, Lcom/facebook/d/b/e;->b:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/d/b/e;->d:Lcom/facebook/d/b/d;
invoke-static {v0}, Lcom/facebook/d/b/d;->a(Lcom/facebook/d/b/d;)La/a/a;
move-result-object v0
invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/a/i;
iget-object v2, p0, Lcom/facebook/d/b/e;->c:Ljava/lang/Throwable;
invoke-virtual {v0, v2, v1}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/a/m;
:cond_24
:try_end_24
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25
return-void
:catch_25
move-exception v0
iget-object v1, p0, Lcom/facebook/d/b/e;->d:Lcom/facebook/d/b/d;
invoke-static {v1}, Lcom/facebook/d/b/d;->b(Lcom/facebook/d/b/d;)Z
move-result v1
if-eqz v1, :cond_24
instance-of v1, v0, Ljava/lang/Error;
if-eqz v1, :cond_35
check-cast v0, Ljava/lang/Error;
throw v0
:cond_35
instance-of v1, v0, Ljava/lang/RuntimeException;
if-eqz v1, :cond_3c
check-cast v0, Ljava/lang/RuntimeException;
throw v0
:cond_3c
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method