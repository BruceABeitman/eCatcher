.class final Lcom/twidroid/ui/a$1;
.super Ljava/lang/Thread;
.source "SourceFile"
.field final synthetic a:Z
.field final synthetic b:I
.field final synthetic c:Z
.field final synthetic d:Landroid/widget/BaseAdapter;
.field final synthetic e:Landroid/widget/ImageView;
.field final synthetic f:Ljava/lang/String;
.field final synthetic g:Ljava/lang/String;
.method constructor <init>(ZIZLandroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
iput-boolean p1, p0, Lcom/twidroid/ui/a$1;->a:Z
iput p2, p0, Lcom/twidroid/ui/a$1;->b:I
iput-boolean p3, p0, Lcom/twidroid/ui/a$1;->c:Z
iput-object p4, p0, Lcom/twidroid/ui/a$1;->d:Landroid/widget/BaseAdapter;
iput-object p5, p0, Lcom/twidroid/ui/a$1;->e:Landroid/widget/ImageView;
iput-object p6, p0, Lcom/twidroid/ui/a$1;->f:Ljava/lang/String;
iput-object p7, p0, Lcom/twidroid/ui/a$1;->g:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 7
sget v0, Lcom/twidroid/ui/a;->f:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/twidroid/ui/a;->f:I
:try_start_6
:goto_6
sget-object v0, Lcom/twidroid/ui/a;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
move-result v0
if-nez v0, :cond_a7
sget-object v0, Lcom/twidroid/ui/a;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;
move-result-object v0
invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
sget-object v1, Lcom/twidroid/ui/a;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-nez v1, :cond_25
:goto_24
:cond_24
return-void
:cond_25
sget-object v2, Lcom/twidroid/ui/a;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "https://secure.gravatar.com"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_3a
const-string v2, "https://secure.gravatar.com"
const-string v3, "http://gravatar.com"
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
:try_end_39
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_39} :catch_94
move-result-object v1
:try_start_3a
:cond_3a
iget-boolean v2, p0, Lcom/twidroid/ui/a$1;->a:Z
if-eqz v2, :cond_a3
iget v2, p0, Lcom/twidroid/ui/a$1;->b:I
const/16 v3, 0x30
if-le v2, v3, :cond_a3
const-string v2, "_normal."
const-string v3, "_bigger."
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
invoke-static {v2, v0}, Lcom/twidroid/ui/a;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_4f
const-string v2, "ImageCache"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "resizing "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const/4 v2, 0x0
iget v3, p0, Lcom/twidroid/ui/a$1;->b:I
iget v4, p0, Lcom/twidroid/ui/a$1;->b:I
iget-boolean v5, p0, Lcom/twidroid/ui/a$1;->c:Z
invoke-static {v2, v0, v3, v4, v5}, Lcom/twidroid/ui/a;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIZ)V
const-string v2, "ImageCache"
const-string v3, "success"
invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_end_78
.catch Ljava/lang/Exception; {:try_start_3a .. :try_end_78} :catch_79
goto :goto_6
:catch_79
move-exception v2
:try_start_7a
invoke-static {v1, v0}, Lcom/twidroid/ui/a;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
iget v2, p0, Lcom/twidroid/ui/a$1;->b:I
iget v3, p0, Lcom/twidroid/ui/a$1;->b:I
iget-boolean v4, p0, Lcom/twidroid/ui/a$1;->c:Z
invoke-static {v1, v0, v2, v3, v4}, Lcom/twidroid/ui/a;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIZ)V
:try_end_87
.catch Ljava/lang/Exception; {:try_start_7a .. :try_end_87} :catch_89
goto/16 :goto_6
:catch_89
move-exception v0
:try_start_8a
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
sget v0, Lcom/twidroid/ui/a;->f:I
add-int/lit8 v0, v0, -0x1
sput v0, Lcom/twidroid/ui/a;->f:I
:try_end_93
.catch Ljava/lang/Exception; {:try_start_8a .. :try_end_93} :catch_94
goto :goto_24
:catch_94
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_98
:goto_98
sget v0, Lcom/twidroid/ui/a;->f:I
if-lez v0, :cond_24
sget v0, Lcom/twidroid/ui/a;->f:I
add-int/lit8 v0, v0, -0x1
sput v0, Lcom/twidroid/ui/a;->f:I
goto :goto_24
:try_start_a3
:cond_a3
invoke-static {v1, v0}, Lcom/twidroid/ui/a;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_end_a6
.catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_79
goto :goto_4f
:try_start_a7
:cond_a7
iget-object v0, p0, Lcom/twidroid/ui/a$1;->d:Landroid/widget/BaseAdapter;
if-eqz v0, :cond_b6
iget-object v0, p0, Lcom/twidroid/ui/a$1;->e:Landroid/widget/ImageView;
new-instance v1, Lcom/twidroid/ui/a$1$1;
invoke-direct {v1, p0}, Lcom/twidroid/ui/a$1$1;-><init>(Lcom/twidroid/ui/a$1;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
goto :goto_98
:cond_b6
iget-object v0, p0, Lcom/twidroid/ui/a$1;->e:Landroid/widget/ImageView;
:try_end_b8
.catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b8} :catch_94
if-eqz v0, :cond_98
:try_start_ba
iget-object v0, p0, Lcom/twidroid/ui/a$1;->e:Landroid/widget/ImageView;
new-instance v1, Lcom/twidroid/ui/a$1$2;
invoke-direct {v1, p0}, Lcom/twidroid/ui/a$1$2;-><init>(Lcom/twidroid/ui/a$1;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
:try_end_c4
.catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c4} :catch_c5
.catch Ljava/lang/OutOfMemoryError; {:try_start_ba .. :try_end_c4} :catch_ef
goto :goto_98
:catch_c5
move-exception v0
:try_start_c6
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "ImageCache"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " image "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/twidroid/ui/a$1;->f:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/lang/System;->gc()V
goto :goto_98
:catch_ef
move-exception v0
invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
const-string v0, "ImageCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "java.lang.OutOfMemoryError for (catch2) image "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/ui/a$1;->f:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/lang/System;->gc()V
:try_end_110
.catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_110} :catch_94
goto :goto_98
.end method