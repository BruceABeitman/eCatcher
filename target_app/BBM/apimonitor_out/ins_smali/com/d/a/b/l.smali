.class final Lcom/d/a/b/l;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"
.implements Ljava/lang/Runnable;
.field final a:Ljava/lang/String;
.field final b:Landroid/widget/ImageView;
.field final c:Lcom/d/a/b/d;
.field final d:Lcom/d/a/b/a/d;
.field private final e:Lcom/d/a/b/i;
.field private final f:Lcom/d/a/b/k;
.field private final g:Landroid/os/Handler;
.field private final h:Lcom/d/a/b/g;
.field private final i:Lcom/d/a/b/d/c;
.field private final j:Lcom/d/a/b/d/c;
.field private final k:Lcom/d/a/b/d/c;
.field private final l:Lcom/d/a/b/b/d;
.field private final m:Z
.field private final n:Ljava/lang/String;
.field private final o:Lcom/d/a/b/a/f;
.field private p:Lcom/d/a/b/a/g;
.method public constructor <init>(Lcom/d/a/b/i;Lcom/d/a/b/k;Landroid/os/Handler;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/d/a/b/a/g;->a:Lcom/d/a/b/a/g;
iput-object v0, p0, Lcom/d/a/b/l;->p:Lcom/d/a/b/a/g;
iput-object p1, p0, Lcom/d/a/b/l;->e:Lcom/d/a/b/i;
iput-object p2, p0, Lcom/d/a/b/l;->f:Lcom/d/a/b/k;
iput-object p3, p0, Lcom/d/a/b/l;->g:Landroid/os/Handler;
iget-object v0, p1, Lcom/d/a/b/i;->a:Lcom/d/a/b/g;
iput-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v0, v0, Lcom/d/a/b/g;->r:Lcom/d/a/b/d/c;
iput-object v0, p0, Lcom/d/a/b/l;->i:Lcom/d/a/b/d/c;
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v0, v0, Lcom/d/a/b/g;->w:Lcom/d/a/b/d/c;
iput-object v0, p0, Lcom/d/a/b/l;->j:Lcom/d/a/b/d/c;
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v0, v0, Lcom/d/a/b/g;->x:Lcom/d/a/b/d/c;
iput-object v0, p0, Lcom/d/a/b/l;->k:Lcom/d/a/b/d/c;
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v0, v0, Lcom/d/a/b/g;->s:Lcom/d/a/b/b/d;
iput-object v0, p0, Lcom/d/a/b/l;->l:Lcom/d/a/b/b/d;
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-boolean v0, v0, Lcom/d/a/b/g;->u:Z
iput-boolean v0, p0, Lcom/d/a/b/l;->m:Z
iget-object v0, p2, Lcom/d/a/b/k;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/d/a/b/l;->a:Ljava/lang/String;
iget-object v0, p2, Lcom/d/a/b/k;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
iget-object v0, p2, Lcom/d/a/b/k;->c:Landroid/widget/ImageView;
iput-object v0, p0, Lcom/d/a/b/l;->b:Landroid/widget/ImageView;
iget-object v0, p2, Lcom/d/a/b/k;->d:Lcom/d/a/b/a/f;
iput-object v0, p0, Lcom/d/a/b/l;->o:Lcom/d/a/b/a/f;
iget-object v0, p2, Lcom/d/a/b/k;->e:Lcom/d/a/b/d;
iput-object v0, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget-object v0, p2, Lcom/d/a/b/k;->f:Lcom/d/a/b/a/d;
iput-object v0, p0, Lcom/d/a/b/l;->d:Lcom/d/a/b/a/d;
return-void
.end method
.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 9
iget-object v0, p0, Lcom/d/a/b/l;->b:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/d/a/b/a/l;->a(Landroid/widget/ImageView;)Lcom/d/a/b/a/l;
move-result-object v4
new-instance v0, Lcom/d/a/b/b/e;
iget-object v1, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
iget-object v3, p0, Lcom/d/a/b/l;->o:Lcom/d/a/b/a/f;
invoke-direct {p0}, Lcom/d/a/b/l;->f()Lcom/d/a/b/d/c;
move-result-object v5
iget-object v6, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
move-object v2, p1
invoke-direct/range {v0 .. v6}, Lcom/d/a/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/a/l;Lcom/d/a/b/d/c;Lcom/d/a/b/d;)V
iget-object v1, p0, Lcom/d/a/b/l;->l:Lcom/d/a/b/b/d;
invoke-interface {v1, v0}, Lcom/d/a/b/b/d;->a(Lcom/d/a/b/b/e;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/io/File;)Ljava/lang/String;
.registers 6
const-string v0, "Cache image on disc [%s]"
invoke-direct {p0, v0}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
:try_start_5
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget v1, v0, Lcom/d/a/b/g;->d:I
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget v2, v0, Lcom/d/a/b/g;->e:I
const/4 v0, 0x0
if-gtz v1, :cond_12
if-lez v2, :cond_16
:cond_12
invoke-direct {p0, p1, v1, v2}, Lcom/d/a/b/l;->a(Ljava/io/File;II)Z
move-result v0
:cond_16
if-nez v0, :cond_3c
invoke-direct {p0}, Lcom/d/a/b/l;->f()Lcom/d/a/b/d/c;
move-result-object v0
iget-object v1, p0, Lcom/d/a/b/l;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget-object v2, v2, Lcom/d/a/b/d;->j:Ljava/lang/Object;
invoke-interface {v0, v1, v2}, Lcom/d/a/b/d/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
:try_end_25
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_25} :catch_5a
move-result-object v1
:try_start_26
new-instance v0, Ljava/io/BufferedOutputStream;
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const v3, 0x8000
invoke-direct {v0, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
:try_end_33
.catchall {:try_start_26 .. :try_end_33} :catchall_55
:try_start_33
invoke-static {v1, v0}, Lcom/d/a/c/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
:try_start_36
:try_end_36
.catchall {:try_start_33 .. :try_end_36} :catchall_50
invoke-static {v0}, Lcom/d/a/c/c;->a(Ljava/io/Closeable;)V
:try_start_39
:try_end_39
.catchall {:try_start_36 .. :try_end_39} :catchall_55
invoke-static {v1}, Lcom/d/a/c/c;->a(Ljava/io/Closeable;)V
:cond_3c
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v0, v0, Lcom/d/a/b/g;->q:Lcom/d/a/a/a/b;
iget-object v1, p0, Lcom/d/a/b/l;->a:Ljava/lang/String;
invoke-interface {v0, p1}, Lcom/d/a/a/a/b;->a(Ljava/io/File;)V
sget-object v0, Lcom/d/a/b/d/d;->c:Lcom/d/a/b/d/d;
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/d/a/b/d/d;->b(Ljava/lang/String;)Ljava/lang/String;
:try_end_4e
.catch Ljava/io/IOException; {:try_start_39 .. :try_end_4e} :catch_5a
move-result-object v0
:goto_4f
return-object v0
:catchall_50
move-exception v2
:try_start_51
invoke-static {v0}, Lcom/d/a/c/c;->a(Ljava/io/Closeable;)V
throw v2
:catchall_55
:try_end_55
.catchall {:try_start_51 .. :try_end_55} :catchall_55
move-exception v0
:try_start_56
invoke-static {v1}, Lcom/d/a/c/c;->a(Ljava/io/Closeable;)V
throw v0
:catch_5a
:try_end_5a
.catch Ljava/io/IOException; {:try_start_56 .. :try_end_5a} :catch_5a
move-exception v0
invoke-static {v0}, Lcom/d/a/c/d;->a(Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/d/a/b/l;->a:Ljava/lang/String;
goto :goto_4f
.end method
.method private a(Lcom/d/a/b/a/b;Ljava/lang/Throwable;)V
.registers 5
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/d/a/b/l;->g:Landroid/os/Handler;
new-instance v1, Lcom/d/a/b/n;
invoke-direct {v1, p0, p1, p2}, Lcom/d/a/b/n;-><init>(Lcom/d/a/b/l;Lcom/d/a/b/a/b;Ljava/lang/Throwable;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_10
return-void
.end method
.method private a()Z
.registers 7
const/4 v0, 0x1
iget-object v1, p0, Lcom/d/a/b/l;->e:Lcom/d/a/b/i;
iget-object v1, v1, Lcom/d/a/b/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v2
if-eqz v2, :cond_1a
monitor-enter v1
:try_start_c
const-string v2, "ImageLoader is paused. Waiting...  [%s]"
invoke-direct {p0, v2}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
:try_start_11
:try_end_11
.catchall {:try_start_c .. :try_end_11} :catchall_2f
invoke-virtual {v1}, Ljava/lang/Object;->wait()V
:try_start_14
:try_end_14
.catchall {:try_start_11 .. :try_end_14} :catchall_2f
.catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_1f
const-string v0, ".. Resume loading [%s]"
invoke-direct {p0, v0}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
monitor-exit v1
:try_end_1a
.catchall {:try_start_14 .. :try_end_1a} :catchall_2f
:cond_1a
invoke-direct {p0}, Lcom/d/a/b/l;->c()Z
move-result v0
:goto_1e
return v0
:catch_1f
move-exception v2
:try_start_20
const-string v2, "Task was interrupted [%s]"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
aput-object v5, v3, v4
invoke-static {v2, v3}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V
monitor-exit v1
:try_end_2e
.catchall {:try_start_20 .. :try_end_2e} :catchall_2f
goto :goto_1e
:catchall_2f
move-exception v0
monitor-exit v1
throw v0
.end method
.method private a(Ljava/io/File;II)Z
.registers 12
const/4 v7, 0x0
new-instance v3, Lcom/d/a/b/a/f;
invoke-direct {v3, p2, p3}, Lcom/d/a/b/a/f;-><init>(II)V
new-instance v0, Lcom/d/a/b/e;
invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V
iget-object v1, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget v2, v1, Lcom/d/a/b/d;->a:I
iput v2, v0, Lcom/d/a/b/e;->a:I
iget v2, v1, Lcom/d/a/b/d;->b:I
iput v2, v0, Lcom/d/a/b/e;->b:I
iget v2, v1, Lcom/d/a/b/d;->c:I
iput v2, v0, Lcom/d/a/b/e;->c:I
iget-boolean v2, v1, Lcom/d/a/b/d;->d:Z
iput-boolean v2, v0, Lcom/d/a/b/e;->d:Z
iget-boolean v2, v1, Lcom/d/a/b/d;->e:Z
iput-boolean v2, v0, Lcom/d/a/b/e;->e:Z
iget-boolean v2, v1, Lcom/d/a/b/d;->f:Z
iput-boolean v2, v0, Lcom/d/a/b/e;->f:Z
iget-object v2, v1, Lcom/d/a/b/d;->g:Lcom/d/a/b/a/e;
iput-object v2, v0, Lcom/d/a/b/e;->g:Lcom/d/a/b/a/e;
iget-object v2, v1, Lcom/d/a/b/d;->h:Landroid/graphics/BitmapFactory$Options;
iput-object v2, v0, Lcom/d/a/b/e;->h:Landroid/graphics/BitmapFactory$Options;
iget v2, v1, Lcom/d/a/b/d;->i:I
iput v2, v0, Lcom/d/a/b/e;->i:I
iget-object v2, v1, Lcom/d/a/b/d;->j:Ljava/lang/Object;
iput-object v2, v0, Lcom/d/a/b/e;->j:Ljava/lang/Object;
iget-object v2, v1, Lcom/d/a/b/d;->k:Lcom/d/a/b/e/a;
iput-object v2, v0, Lcom/d/a/b/e;->k:Lcom/d/a/b/e/a;
iget-object v2, v1, Lcom/d/a/b/d;->l:Lcom/d/a/b/e/a;
iput-object v2, v0, Lcom/d/a/b/e;->l:Lcom/d/a/b/e/a;
iget-object v2, v1, Lcom/d/a/b/d;->m:Lcom/d/a/b/c/a;
iput-object v2, v0, Lcom/d/a/b/e;->m:Lcom/d/a/b/c/a;
iget-object v1, v1, Lcom/d/a/b/d;->n:Landroid/os/Handler;
iput-object v1, v0, Lcom/d/a/b/e;->n:Landroid/os/Handler;
sget-object v1, Lcom/d/a/b/a/e;->c:Lcom/d/a/b/a/e;
iput-object v1, v0, Lcom/d/a/b/e;->g:Lcom/d/a/b/a/e;
invoke-virtual {v0}, Lcom/d/a/b/e;->a()Lcom/d/a/b/d;
move-result-object v6
new-instance v0, Lcom/d/a/b/b/e;
iget-object v1, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
iget-object v2, p0, Lcom/d/a/b/l;->a:Ljava/lang/String;
sget-object v4, Lcom/d/a/b/a/l;->a:Lcom/d/a/b/a/l;
invoke-direct {p0}, Lcom/d/a/b/l;->f()Lcom/d/a/b/d/c;
move-result-object v5
invoke-direct/range {v0 .. v6}, Lcom/d/a/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/a/l;Lcom/d/a/b/d/c;Lcom/d/a/b/d;)V
iget-object v1, p0, Lcom/d/a/b/l;->l:Lcom/d/a/b/b/d;
invoke-interface {v1, v0}, Lcom/d/a/b/b/d;->a(Lcom/d/a/b/b/e;)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_66
move v0, v7
:goto_65
return v0
:cond_66
iget-object v1, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v1, v1, Lcom/d/a/b/g;->h:Lcom/d/a/b/e/a;
if-eqz v1, :cond_89
const-string v0, "Process image before cache on disc [%s]"
invoke-direct {p0, v0}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v0, v0, Lcom/d/a/b/g;->h:Lcom/d/a/b/e/a;
invoke-interface {v0}, Lcom/d/a/b/e/a;->a()Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_89
const-string v0, "Bitmap processor for disc cache returned null [%s]"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
iget-object v2, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
aput-object v2, v1, v7
invoke-static {v0, v1}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V
move v0, v7
goto :goto_65
:cond_89
new-instance v2, Ljava/io/BufferedOutputStream;
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const v3, 0x8000
invoke-direct {v2, v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
:try_start_96
iget-object v1, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v1, v1, Lcom/d/a/b/g;->f:Landroid/graphics/Bitmap$CompressFormat;
iget-object v3, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget v3, v3, Lcom/d/a/b/g;->g:I
invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
:try_end_a1
.catchall {:try_start_96 .. :try_end_a1} :catchall_aa
move-result v1
invoke-static {v2}, Lcom/d/a/c/c;->a(Ljava/io/Closeable;)V
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
move v0, v1
goto :goto_65
:catchall_aa
move-exception v0
invoke-static {v2}, Lcom/d/a/c/c;->a(Ljava/io/Closeable;)V
throw v0
.end method
.method private b(Ljava/lang/String;)V
.registers 5
iget-boolean v0, p0, Lcom/d/a/b/l;->m:Z
if-eqz v0, :cond_f
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
aput-object v2, v0, v1
invoke-static {p1, v0}, Lcom/d/a/c/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_f
return-void
.end method
.method private b()Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget v2, v2, Lcom/d/a/b/d;->i:I
if-lez v2, :cond_32
move v2, v0
:goto_9
if-eqz v2, :cond_41
const-string v2, "Delay %d ms before loading...  [%s]"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget v4, v4, Lcom/d/a/b/d;->i:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v1
iget-object v4, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
aput-object v4, v3, v0
iget-boolean v4, p0, Lcom/d/a/b/l;->m:Z
if-eqz v4, :cond_25
invoke-static {v2, v3}, Lcom/d/a/c/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_25
:try_start_25
iget-object v2, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget v2, v2, Lcom/d/a/b/d;->i:I
int-to-long v2, v2
invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
:try_end_2d
.catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2d} :catch_34
invoke-direct {p0}, Lcom/d/a/b/l;->c()Z
move-result v0
:goto_31
return v0
:cond_32
move v2, v1
goto :goto_9
:catch_34
move-exception v2
const-string v2, "Task was interrupted [%s]"
new-array v3, v0, [Ljava/lang/Object;
iget-object v4, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
aput-object v4, v3, v1
invoke-static {v2, v3}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_31
:cond_41
move v0, v1
goto :goto_31
.end method
.method private c()Z
.registers 4
iget-object v0, p0, Lcom/d/a/b/l;->e:Lcom/d/a/b/i;
iget-object v1, p0, Lcom/d/a/b/l;->b:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Lcom/d/a/b/i;->a(Landroid/widget/ImageView;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_23
const/4 v0, 0x1
:goto_11
if-eqz v0, :cond_22
iget-object v1, p0, Lcom/d/a/b/l;->g:Landroid/os/Handler;
new-instance v2, Lcom/d/a/b/m;
invoke-direct {v2, p0}, Lcom/d/a/b/m;-><init>(Lcom/d/a/b/l;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
const-string v1, "ImageView is reused for another image. Task is cancelled. [%s]"
invoke-direct {p0, v1}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
:cond_22
return v0
:cond_23
const/4 v0, 0x0
goto :goto_11
.end method
.method private d()Z
.registers 3
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v0
if-eqz v0, :cond_b
const-string v1, "Task was interrupted [%s]"
invoke-direct {p0, v1}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
:cond_b
return v0
.end method
.method private e()Landroid/graphics/Bitmap;
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v0, v0, Lcom/d/a/b/g;->q:Lcom/d/a/a/a/b;
iget-object v1, p0, Lcom/d/a/b/l;->a:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_1d
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_36
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
move-result v1
if-nez v1, :cond_36
:cond_1d
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v0, v0, Lcom/d/a/b/g;->v:Lcom/d/a/a/a/b;
iget-object v1, p0, Lcom/d/a/b/l;->a:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_36
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_36
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
:cond_36
:try_start_36
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_dd
const-string v1, "Load image from disc cache [%s]"
invoke-direct {p0, v1}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
sget-object v1, Lcom/d/a/b/a/g;->b:Lcom/d/a/b/a/g;
iput-object v1, p0, Lcom/d/a/b/l;->p:Lcom/d/a/b/a/g;
sget-object v1, Lcom/d/a/b/d/d;->c:Lcom/d/a/b/d/d;
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/d/a/b/d/d;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/d/a/b/l;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
:try_end_52
.catch Ljava/lang/IllegalStateException; {:try_start_36 .. :try_end_52} :catch_97
.catch Ljava/io/IOException; {:try_start_36 .. :try_end_52} :catch_9f
.catch Ljava/lang/OutOfMemoryError; {:try_start_36 .. :try_end_52} :catch_b6
.catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_52} :catch_c2
move-result-object v1
:goto_53
if-eqz v1, :cond_61
:try_start_55
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
if-lez v3, :cond_61
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
if-gtz v3, :cond_92
:cond_61
const-string v3, "Load image from network [%s]"
invoke-direct {p0, v3}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
sget-object v3, Lcom/d/a/b/a/g;->a:Lcom/d/a/b/a/g;
iput-object v3, p0, Lcom/d/a/b/l;->p:Lcom/d/a/b/a/g;
iget-object v3, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget-boolean v3, v3, Lcom/d/a/b/d;->f:Z
if-eqz v3, :cond_94
invoke-direct {p0, v0}, Lcom/d/a/b/l;->a(Ljava/io/File;)Ljava/lang/String;
move-result-object v3
:goto_74
invoke-direct {p0}, Lcom/d/a/b/l;->c()Z
move-result v4
if-nez v4, :cond_92
invoke-direct {p0, v3}, Lcom/d/a/b/l;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_8c
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
if-lez v3, :cond_8c
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
if-gtz v3, :cond_92
:cond_8c
sget-object v3, Lcom/d/a/b/a/b;->b:Lcom/d/a/b/a/b;
const/4 v4, 0x0
invoke-direct {p0, v3, v4}, Lcom/d/a/b/l;->a(Lcom/d/a/b/a/b;Ljava/lang/Throwable;)V
:cond_92
move-object v0, v1
:goto_93
return-object v0
:cond_94
iget-object v3, p0, Lcom/d/a/b/l;->a:Ljava/lang/String;
:try_end_96
.catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_96} :catch_da
.catch Ljava/io/IOException; {:try_start_55 .. :try_end_96} :catch_d8
.catch Ljava/lang/OutOfMemoryError; {:try_start_55 .. :try_end_96} :catch_d3
.catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_96} :catch_ce
goto :goto_74
:catch_97
move-exception v0
move-object v0, v2
:goto_99
sget-object v1, Lcom/d/a/b/a/b;->c:Lcom/d/a/b/a/b;
invoke-direct {p0, v1, v2}, Lcom/d/a/b/l;->a(Lcom/d/a/b/a/b;Ljava/lang/Throwable;)V
goto :goto_93
:catch_9f
move-exception v1
move-object v5, v1
move-object v1, v2
move-object v2, v5
:goto_a3
invoke-static {v2}, Lcom/d/a/c/d;->a(Ljava/lang/Throwable;)V
sget-object v3, Lcom/d/a/b/a/b;->a:Lcom/d/a/b/a/b;
invoke-direct {p0, v3, v2}, Lcom/d/a/b/l;->a(Lcom/d/a/b/a/b;Ljava/lang/Throwable;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_b4
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_b4
move-object v0, v1
goto :goto_93
:catch_b6
move-exception v0
move-object v1, v0
move-object v0, v2
:goto_b9
invoke-static {v1}, Lcom/d/a/c/d;->a(Ljava/lang/Throwable;)V
sget-object v2, Lcom/d/a/b/a/b;->d:Lcom/d/a/b/a/b;
invoke-direct {p0, v2, v1}, Lcom/d/a/b/l;->a(Lcom/d/a/b/a/b;Ljava/lang/Throwable;)V
goto :goto_93
:catch_c2
move-exception v0
move-object v1, v0
move-object v0, v2
:goto_c5
invoke-static {v1}, Lcom/d/a/c/d;->a(Ljava/lang/Throwable;)V
sget-object v2, Lcom/d/a/b/a/b;->e:Lcom/d/a/b/a/b;
invoke-direct {p0, v2, v1}, Lcom/d/a/b/l;->a(Lcom/d/a/b/a/b;Ljava/lang/Throwable;)V
goto :goto_93
:catch_ce
move-exception v0
move-object v5, v0
move-object v0, v1
move-object v1, v5
goto :goto_c5
:catch_d3
move-exception v0
move-object v5, v0
move-object v0, v1
move-object v1, v5
goto :goto_b9
:catch_d8
move-exception v2
goto :goto_a3
:catch_da
move-exception v0
move-object v0, v1
goto :goto_99
:cond_dd
move-object v1, v2
goto/16 :goto_53
.end method
.method private f()Lcom/d/a/b/d/c;
.registers 2
iget-object v0, p0, Lcom/d/a/b/l;->e:Lcom/d/a/b/i;
iget-object v0, v0, Lcom/d/a/b/i;->g:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/d/a/b/l;->j:Lcom/d/a/b/d/c;
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/d/a/b/l;->e:Lcom/d/a/b/i;
iget-object v0, v0, Lcom/d/a/b/i;->h:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/d/a/b/l;->k:Lcom/d/a/b/d/c;
goto :goto_c
:cond_1a
iget-object v0, p0, Lcom/d/a/b/l;->i:Lcom/d/a/b/d/c;
goto :goto_c
.end method
.method public final run()V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Lcom/d/a/b/l;->a()Z
move-result v0
if-eqz v0, :cond_9
:cond_8
:goto_8
return-void
:cond_9
invoke-direct {p0}, Lcom/d/a/b/l;->b()Z
move-result v0
if-nez v0, :cond_8
iget-object v0, p0, Lcom/d/a/b/l;->f:Lcom/d/a/b/k;
iget-object v3, v0, Lcom/d/a/b/k;->g:Ljava/util/concurrent/locks/ReentrantLock;
const-string v0, "Start display image task [%s]"
invoke-direct {p0, v0}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z
move-result v0
if-eqz v0, :cond_23
const-string v0, "Image already is loading. Waiting... [%s]"
invoke-direct {p0, v0}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
:cond_23
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_26
invoke-direct {p0}, Lcom/d/a/b/l;->c()Z
:try_end_29
.catchall {:try_start_26 .. :try_end_29} :catchall_e4
move-result v0
if-eqz v0, :cond_30
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_8
:cond_30
:try_start_30
iget-object v0, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v0, v0, Lcom/d/a/b/g;->p:Lcom/d/a/a/b/c;
iget-object v4, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
invoke-interface {v0, v4}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
if-nez v0, :cond_da
invoke-direct {p0}, Lcom/d/a/b/l;->e()Landroid/graphics/Bitmap;
:try_end_41
.catchall {:try_start_30 .. :try_end_41} :catchall_e4
move-result-object v0
if-nez v0, :cond_48
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_8
:cond_48
:try_start_48
invoke-direct {p0}, Lcom/d/a/b/l;->c()Z
move-result v4
if-nez v4, :cond_54
invoke-direct {p0}, Lcom/d/a/b/l;->d()Z
:try_end_51
.catchall {:try_start_48 .. :try_end_51} :catchall_e4
move-result v4
if-eqz v4, :cond_58
:cond_54
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_8
:cond_58
:try_start_58
iget-object v4, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget-object v4, v4, Lcom/d/a/b/d;->k:Lcom/d/a/b/e/a;
if-eqz v4, :cond_d8
:goto_5e
if-eqz v1, :cond_77
const-string v0, "PreProcess image before caching in memory [%s]"
invoke-direct {p0, v0}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget-object v0, v0, Lcom/d/a/b/d;->k:Lcom/d/a/b/e/a;
invoke-interface {v0}, Lcom/d/a/b/e/a;->a()Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_77
const-string v1, "Pre-processor returned null [%s]"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_77
if-eqz v0, :cond_8d
iget-object v1, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget-boolean v1, v1, Lcom/d/a/b/d;->e:Z
if-eqz v1, :cond_8d
const-string v1, "Cache image in memory [%s]"
invoke-direct {p0, v1}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
iget-object v1, p0, Lcom/d/a/b/l;->h:Lcom/d/a/b/g;
iget-object v1, v1, Lcom/d/a/b/g;->p:Lcom/d/a/a/b/c;
iget-object v2, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
invoke-interface {v1, v2, v0}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
:cond_8d
:goto_8d
if-eqz v0, :cond_b3
iget-object v1, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
invoke-virtual {v1}, Lcom/d/a/b/d;->a()Z
move-result v1
if-eqz v1, :cond_b3
const-string v0, "PostProcess image before displaying [%s]"
invoke-direct {p0, v0}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget-object v0, v0, Lcom/d/a/b/d;->l:Lcom/d/a/b/e/a;
invoke-interface {v0}, Lcom/d/a/b/e/a;->a()Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_b3
const-string v1, "Pre-processor returned null [%s]"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/d/a/b/l;->n:Ljava/lang/String;
aput-object v5, v2, v4
invoke-static {v1, v2}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_b3
:try_end_b3
.catchall {:try_start_58 .. :try_end_b3} :catchall_e4
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
invoke-direct {p0}, Lcom/d/a/b/l;->c()Z
move-result v1
if-nez v1, :cond_8
invoke-direct {p0}, Lcom/d/a/b/l;->d()Z
move-result v1
if-nez v1, :cond_8
new-instance v1, Lcom/d/a/b/c;
iget-object v2, p0, Lcom/d/a/b/l;->f:Lcom/d/a/b/k;
iget-object v3, p0, Lcom/d/a/b/l;->e:Lcom/d/a/b/i;
iget-object v4, p0, Lcom/d/a/b/l;->p:Lcom/d/a/b/a/g;
invoke-direct {v1, v0, v2, v3, v4}, Lcom/d/a/b/c;-><init>(Landroid/graphics/Bitmap;Lcom/d/a/b/k;Lcom/d/a/b/i;Lcom/d/a/b/a/g;)V
iget-boolean v0, p0, Lcom/d/a/b/l;->m:Z
iput-boolean v0, v1, Lcom/d/a/b/c;->a:Z
iget-object v0, p0, Lcom/d/a/b/l;->g:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_8
:cond_d8
move v1, v2
goto :goto_5e
:cond_da
:try_start_da
sget-object v1, Lcom/d/a/b/a/g;->c:Lcom/d/a/b/a/g;
iput-object v1, p0, Lcom/d/a/b/l;->p:Lcom/d/a/b/a/g;
const-string v1, "...Get cached bitmap from memory after waiting. [%s]"
invoke-direct {p0, v1}, Lcom/d/a/b/l;->b(Ljava/lang/String;)V
:try_end_e3
.catchall {:try_start_da .. :try_end_e3} :catchall_e4
goto :goto_8d
:catchall_e4
move-exception v0
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
.end method