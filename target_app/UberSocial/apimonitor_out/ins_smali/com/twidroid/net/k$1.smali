.class final Lcom/twidroid/net/k$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/net/d/f;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/twidroid/net/j;
.field final synthetic c:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Lcom/twidroid/net/j;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/net/k$1;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/twidroid/net/k$1;->b:Lcom/twidroid/net/j;
iput-object p3, p0, Lcom/twidroid/net/k$1;->c:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(J)V
.registers 3
return-void
.end method
.method public a(JI)V
.registers 4
return-void
.end method
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
monitor-enter p0
:try_start_1
invoke-static {}, Lcom/twidroid/net/k;->b()Ljava/util/Map;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/k$1;->a:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashSet;
const/4 v1, 0x0
iget-object v2, p0, Lcom/twidroid/net/k$1;->b:Lcom/twidroid/net/j;
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_35
if-nez v2, :cond_4b
:try_start_12
invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_35
.catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_15} :catch_38
move-result-object v1
:goto_16
if-eqz v1, :cond_21
:try_start_18
invoke-static {}, Lcom/twidroid/net/k;->c()Ljava/util/HashMap;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/net/k$1;->a:Ljava/lang/String;
invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_21
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_25
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_54
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/l;
invoke-interface {v0, v1, p1, p2}, Lcom/twidroid/net/l;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
:try_end_34
.catchall {:try_start_18 .. :try_end_34} :catchall_35
goto :goto_25
:catchall_35
move-exception v0
monitor-exit p0
throw v0
:catch_38
move-exception v2
:try_start_39
const-string v2, "WaaxImageCache"
const-string v3, "OOM happened. Returning null, but most likely will fail anyway later"
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/twidroid/net/k;->c()Ljava/util/HashMap;
move-result-object v2
invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
invoke-static {}, Ljava/lang/System;->gc()V
goto :goto_16
:cond_4b
iget-object v1, p0, Lcom/twidroid/net/k$1;->b:Lcom/twidroid/net/j;
iget-object v2, p0, Lcom/twidroid/net/k$1;->c:Ljava/lang/String;
invoke-virtual {v1, p1, v2}, Lcom/twidroid/net/j;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
:try_end_52
.catchall {:try_start_39 .. :try_end_52} :catchall_35
move-result-object v1
goto :goto_16
:cond_54
monitor-exit p0
return-void
.end method