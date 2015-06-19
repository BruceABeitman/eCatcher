.class  Lcom/twidroid/ui/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/ui/a$1;
.method constructor <init>(Lcom/twidroid/ui/a$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a$1$1;->a:Lcom/twidroid/ui/a$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/twidroid/ui/a$1$1;->a:Lcom/twidroid/ui/a$1;
iget-object v0, v0, Lcom/twidroid/ui/a$1;->d:Landroid/widget/BaseAdapter;
invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_7} :catch_2c
:goto_7
return-void
:catch_8
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v0, "ImageCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "java.lang.OutOfMemoryError for image "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/ui/a$1$1;->a:Lcom/twidroid/ui/a$1;
iget-object v2, v2, Lcom/twidroid/ui/a$1;->f:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/lang/System;->gc()V
goto :goto_7
:catch_2c
move-exception v0
invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
const-string v0, "ImageCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "java.lang.OutOfMemoryError for (catch2) image "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/ui/a$1$1;->a:Lcom/twidroid/ui/a$1;
iget-object v2, v2, Lcom/twidroid/ui/a$1;->f:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/lang/System;->gc()V
goto :goto_7
.end method