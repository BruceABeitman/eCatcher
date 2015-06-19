.class public Lcom/d/a/b/f;
.super Ljava/lang/Object;
.source "ImageLoader.java"
.field public static final a:Ljava/lang/String;
.field private static volatile f:Lcom/d/a/b/f;
.field private b:Lcom/d/a/b/g;
.field private c:Lcom/d/a/b/i;
.field private final d:Lcom/d/a/b/a/d;
.field private final e:Lcom/d/a/b/c/a;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/d/a/b/f;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/d/a/b/f;->a:Ljava/lang/String;
return-void
.end method
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/d/a/b/a/k;
invoke-direct {v0}, Lcom/d/a/b/a/k;-><init>()V
iput-object v0, p0, Lcom/d/a/b/f;->d:Lcom/d/a/b/a/d;
new-instance v0, Lcom/d/a/b/c/b;
invoke-direct {v0}, Lcom/d/a/b/c/b;-><init>()V
iput-object v0, p0, Lcom/d/a/b/f;->e:Lcom/d/a/b/c/a;
return-void
.end method
.method public static a()Lcom/d/a/b/f;
.registers 2
sget-object v0, Lcom/d/a/b/f;->f:Lcom/d/a/b/f;
if-nez v0, :cond_13
const-class v1, Lcom/d/a/b/f;
monitor-enter v1
:try_start_7
sget-object v0, Lcom/d/a/b/f;->f:Lcom/d/a/b/f;
if-nez v0, :cond_12
new-instance v0, Lcom/d/a/b/f;
invoke-direct {v0}, Lcom/d/a/b/f;-><init>()V
sput-object v0, Lcom/d/a/b/f;->f:Lcom/d/a/b/f;
:cond_12
monitor-exit v1
:cond_13
:try_end_13
.catchall {:try_start_7 .. :try_end_13} :catchall_16
sget-object v0, Lcom/d/a/b/f;->f:Lcom/d/a/b/f;
return-object v0
:catchall_16
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Landroid/widget/ImageView;)V
.registers 3
iget-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/i;
invoke-virtual {v0, p1}, Lcom/d/a/b/i;->b(Landroid/widget/ImageView;)V
return-void
.end method
.method public final declared-synchronized a(Lcom/d/a/b/g;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/g;
if-nez v0, :cond_1c
iget-boolean v0, p1, Lcom/d/a/b/g;->u:Z
if-eqz v0, :cond_11
const-string v0, "Initialize ImageLoader with configuration"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_11
new-instance v0, Lcom/d/a/b/i;
invoke-direct {v0, p1}, Lcom/d/a/b/i;-><init>(Lcom/d/a/b/g;)V
iput-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/i;
iput-object p1, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/g;
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_25
:goto_1a
monitor-exit p0
return-void
:cond_1c
:try_start_1c
const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_24
.catchall {:try_start_1c .. :try_end_24} :catchall_25
goto :goto_1a
:catchall_25
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Ljava/lang/String;Landroid/widget/ImageView;)V
.registers 13
const/4 v9, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/g;
if-nez v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "ImageLoader must be init with configuration before using"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
if-nez p2, :cond_19
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_19
iget-object v6, p0, Lcom/d/a/b/f;->d:Lcom/d/a/b/a/d;
iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/g;
iget-object v5, v0, Lcom/d/a/b/g;->t:Lcom/d/a/b/d;
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/i;
invoke-virtual {v0, p2}, Lcom/d/a/b/i;->b(Landroid/widget/ImageView;)V
iget v0, v5, Lcom/d/a/b/d;->b:I
if-eqz v0, :cond_36
:goto_2e
if-eqz v1, :cond_38
iget v0, v5, Lcom/d/a/b/d;->b:I
invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_35
return-void
:cond_36
move v1, v2
goto :goto_2e
:cond_38
invoke-virtual {p2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_35
:cond_3c
iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/g;
iget v0, v0, Lcom/d/a/b/g;->b:I
iget-object v3, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/g;
iget v3, v3, Lcom/d/a/b/g;->c:I
invoke-static {p2, v0, v3}, Lcom/d/a/c/a;->a(Landroid/widget/ImageView;II)Lcom/d/a/b/a/f;
move-result-object v3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v4, "_"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v4, v3, Lcom/d/a/b/a/f;->a:I
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "x"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v4, v3, Lcom/d/a/b/a/f;->b:I
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/i;
iget-object v0, v0, Lcom/d/a/b/i;->e:Ljava/util/Map;
invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/g;
iget-object v0, v0, Lcom/d/a/b/g;->p:Lcom/d/a/a/b/c;
invoke-interface {v0, v4}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
move-object v8, v0
check-cast v8, Landroid/graphics/Bitmap;
if-eqz v8, :cond_cd
invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v0
if-nez v0, :cond_cd
iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/g;
iget-boolean v0, v0, Lcom/d/a/b/g;->u:Z
if-eqz v0, :cond_9a
const-string v0, "Load image from memory cache [%s]"
new-array v1, v1, [Ljava/lang/Object;
aput-object v4, v1, v2
invoke-static {v0, v1}, Lcom/d/a/c/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_9a
invoke-virtual {v5}, Lcom/d/a/b/d;->a()Z
move-result v0
if-eqz v0, :cond_c4
new-instance v0, Lcom/d/a/b/k;
iget-object v1, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/i;
invoke-virtual {v1, p1}, Lcom/d/a/b/i;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v7
move-object v1, p1
move-object v2, p2
invoke-direct/range {v0 .. v7}, Lcom/d/a/b/k;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/a/f;Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/a/d;Ljava/util/concurrent/locks/ReentrantLock;)V
new-instance v1, Lcom/d/a/b/o;
iget-object v2, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/i;
invoke-virtual {v5}, Lcom/d/a/b/d;->b()Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v8, v0, v3}, Lcom/d/a/b/o;-><init>(Lcom/d/a/b/i;Landroid/graphics/Bitmap;Lcom/d/a/b/k;Landroid/os/Handler;)V
iget-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/i;
invoke-virtual {v0}, Lcom/d/a/b/i;->a()V
iget-object v0, v0, Lcom/d/a/b/i;->c:Ljava/util/concurrent/Executor;
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
goto/16 :goto_35
:cond_c4
iget-object v0, v5, Lcom/d/a/b/d;->m:Lcom/d/a/b/c/a;
sget-object v1, Lcom/d/a/b/a/g;->c:Lcom/d/a/b/a/g;
invoke-interface {v0, v8, p2}, Lcom/d/a/b/c/a;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
goto/16 :goto_35
:cond_cd
iget v0, v5, Lcom/d/a/b/d;->a:I
if-eqz v0, :cond_ff
move v0, v1
:goto_d2
if-eqz v0, :cond_101
iget v0, v5, Lcom/d/a/b/d;->a:I
invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_d9
:cond_d9
new-instance v0, Lcom/d/a/b/k;
iget-object v1, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/i;
invoke-virtual {v1, p1}, Lcom/d/a/b/i;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v7
move-object v1, p1
move-object v2, p2
invoke-direct/range {v0 .. v7}, Lcom/d/a/b/k;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/a/f;Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/a/d;Ljava/util/concurrent/locks/ReentrantLock;)V
new-instance v1, Lcom/d/a/b/l;
iget-object v2, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/i;
invoke-virtual {v5}, Lcom/d/a/b/d;->b()Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v0, v3}, Lcom/d/a/b/l;-><init>(Lcom/d/a/b/i;Lcom/d/a/b/k;Landroid/os/Handler;)V
iget-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/i;
iget-object v2, v0, Lcom/d/a/b/i;->d:Ljava/util/concurrent/ExecutorService;
new-instance v3, Lcom/d/a/b/j;
invoke-direct {v3, v0, v1}, Lcom/d/a/b/j;-><init>(Lcom/d/a/b/i;Lcom/d/a/b/l;)V
invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
goto/16 :goto_35
:cond_ff
move v0, v2
goto :goto_d2
:cond_101
iget-boolean v0, v5, Lcom/d/a/b/d;->d:Z
if-eqz v0, :cond_d9
invoke-virtual {p2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_d9
.end method