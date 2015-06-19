.class  Lcom/twidroid/ui/a$1$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/ui/a$1;
.method constructor <init>(Lcom/twidroid/ui/a$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a$1$2;->a:Lcom/twidroid/ui/a$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/twidroid/ui/a$1$2;->a:Lcom/twidroid/ui/a$1;
iget-object v0, v0, Lcom/twidroid/ui/a$1;->e:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
iget-object v0, p0, Lcom/twidroid/ui/a$1$2;->a:Lcom/twidroid/ui/a$1;
iget-object v0, v0, Lcom/twidroid/ui/a$1;->e:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/twidroid/ui/a$1$2;->a:Lcom/twidroid/ui/a$1;
iget-object v1, v1, Lcom/twidroid/ui/a$1;->g:Ljava/lang/String;
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
:try_end_17
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v0, "ImageCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "java.lang.OutOfMemoryError for image "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/ui/a$1$2;->a:Lcom/twidroid/ui/a$1;
iget-object v2, v2, Lcom/twidroid/ui/a$1;->f:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/lang/System;->gc()V
goto :goto_17
.end method