.class public Lcom/instagram/creation/video/g/e/a;
.super Ljava/lang/Object;
.source "FinalRenderControllerMediaCodec.java"
.implements Lcom/instagram/creation/video/g/a/e;
.implements Lcom/instagram/creation/video/j/b;
.field private static final a:Ljava/lang/Class;
.field private final b:Lcom/instagram/creation/b/a/b;
.field private c:Lcom/instagram/creation/video/g/f/c;
.field private final d:Ljava/util/concurrent/CountDownLatch;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/creation/video/g/e/a;
sput-object v0, Lcom/instagram/creation/video/g/e/a;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Lcom/instagram/creation/b/a/b;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/instagram/creation/video/g/e/a;->d:Ljava/util/concurrent/CountDownLatch;
iput-object p1, p0, Lcom/instagram/creation/video/g/e/a;->b:Lcom/instagram/creation/b/a/b;
return-void
.end method
.method public final B_()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/instagram/creation/video/g/e/a;->d:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final a(Landroid/content/Context;Lcom/instagram/creation/video/e/c;)I
.registers 11
new-instance v1, Lcom/instagram/creation/video/g/b/g;
invoke-direct {v1}, Lcom/instagram/creation/video/g/b/g;-><init>()V
new-instance v0, Lcom/instagram/creation/video/g/f/c;
new-instance v2, Lcom/instagram/creation/video/g/c/a;
invoke-direct {v2, p1}, Lcom/instagram/creation/video/g/c/a;-><init>(Landroid/content/Context;)V
new-instance v3, Lcom/instagram/creation/video/g/c/d;
invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;
move-result-object v4
invoke-direct {v3, v1, v4}, Lcom/instagram/creation/video/g/c/d;-><init>(Lcom/instagram/creation/video/g/b/g;Lcom/facebook/d/b/c;)V
new-instance v4, Lcom/instagram/creation/video/g/d/c;
invoke-direct {v4}, Lcom/instagram/creation/video/g/d/c;-><init>()V
new-instance v5, Lcom/instagram/creation/video/g/f/g;
invoke-direct {v5, v1}, Lcom/instagram/creation/video/g/f/g;-><init>(Lcom/instagram/creation/video/g/b/g;)V
invoke-static {}, Lcom/instagram/common/t/a;->a()Lcom/instagram/common/t/a;
move-result-object v6
invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;
move-result-object v7
move-object v1, p1
invoke-direct/range {v0 .. v7}, Lcom/instagram/creation/video/g/f/c;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/g/a/d;Lcom/instagram/creation/video/g/c/d;Lcom/instagram/creation/video/g/d/b;Lcom/instagram/creation/video/g/f/g;Lcom/instagram/common/t/a;Lcom/facebook/d/b/c;)V
iput-object v0, p0, Lcom/instagram/creation/video/g/e/a;->c:Lcom/instagram/creation/video/g/f/c;
iget-object v0, p0, Lcom/instagram/creation/video/g/e/a;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->J()Lcom/instagram/creation/b/a/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/g/e/a;->b:Lcom/instagram/creation/b/a/b;
const-string v2, "mp4"
invoke-static {p1, v1, v2}, Lcom/instagram/creation/video/l/j;->a(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/instagram/creation/video/g/f/e;->a()Lcom/instagram/creation/video/g/f/f;
move-result-object v2
new-instance v3, Ljava/io/File;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/g/f/f;->a(Ljava/io/File;)Lcom/instagram/creation/video/g/f/f;
move-result-object v2
invoke-virtual {v2, p2}, Lcom/instagram/creation/video/g/f/f;->a(Lcom/instagram/creation/video/e/c;)Lcom/instagram/creation/video/g/f/f;
move-result-object v2
new-instance v3, Ljava/io/File;
invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/g/f/f;->b(Ljava/io/File;)Lcom/instagram/creation/video/g/f/f;
move-result-object v2
invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I
move-result v3
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/g/f/f;->a(I)Lcom/instagram/creation/video/g/f/f;
move-result-object v2
invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->g()I
move-result v0
invoke-virtual {v2, v0}, Lcom/instagram/creation/video/g/f/f;->b(I)Lcom/instagram/creation/video/g/f/f;
move-result-object v0
iget-object v2, p0, Lcom/instagram/creation/video/g/e/a;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0, v2}, Lcom/instagram/creation/video/g/f/f;->a(Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/video/g/f/f;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/creation/video/g/f/f;->a(Lcom/instagram/creation/video/g/a/e;)Lcom/instagram/creation/video/g/f/f;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/g/f/f;->i()Lcom/instagram/creation/video/g/f/e;
move-result-object v0
:try_start_77
iget-object v2, p0, Lcom/instagram/creation/video/g/e/a;->c:Lcom/instagram/creation/video/g/f/c;
invoke-virtual {v2, v0}, Lcom/instagram/creation/video/g/f/c;->a(Lcom/instagram/creation/video/g/f/e;)V
iget-object v0, p0, Lcom/instagram/creation/video/g/e/a;->c:Lcom/instagram/creation/video/g/f/c;
invoke-virtual {v0}, Lcom/instagram/creation/video/g/f/c;->b()Z
move-result v0
if-eqz v0, :cond_9a
new-instance v0, Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v0
sget-object v1, Lcom/instagram/creation/video/g/e/a;->a:Ljava/lang/Class;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
sget v0, Lcom/instagram/creation/video/g/e/b;->b:I
:goto_94
:try_end_94
.catchall {:try_start_77 .. :try_end_94} :catchall_b8
.catch Lcom/instagram/creation/video/g/f/a; {:try_start_77 .. :try_end_94} :catch_a2
.catch Lcom/instagram/creation/video/g/f/b; {:try_start_77 .. :try_end_94} :catch_ad
iget-object v1, p0, Lcom/instagram/creation/video/g/e/a;->d:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
:goto_99
return v0
:cond_9a
:try_start_9a
iget-object v0, p0, Lcom/instagram/creation/video/g/e/a;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->f(Ljava/lang/String;)V
sget v0, Lcom/instagram/creation/video/g/e/b;->a:I
:try_end_a1
.catchall {:try_start_9a .. :try_end_a1} :catchall_b8
.catch Lcom/instagram/creation/video/g/f/a; {:try_start_9a .. :try_end_a1} :catch_a2
.catch Lcom/instagram/creation/video/g/f/b; {:try_start_9a .. :try_end_a1} :catch_ad
goto :goto_94
:catch_a2
move-exception v0
:try_start_a3
sget-object v0, Lcom/instagram/creation/video/g/e/a;->a:Ljava/lang/Class;
sget v0, Lcom/instagram/creation/video/g/e/b;->d:I
:try_end_a7
.catchall {:try_start_a3 .. :try_end_a7} :catchall_b8
iget-object v1, p0, Lcom/instagram/creation/video/g/e/a;->d:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
goto :goto_99
:catch_ad
move-exception v0
:try_start_ae
sget-object v0, Lcom/instagram/creation/video/g/e/a;->a:Ljava/lang/Class;
sget v0, Lcom/instagram/creation/video/g/e/b;->c:I
:try_end_b2
.catchall {:try_start_ae .. :try_end_b2} :catchall_b8
iget-object v1, p0, Lcom/instagram/creation/video/g/e/a;->d:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
goto :goto_99
:catchall_b8
move-exception v0
iget-object v1, p0, Lcom/instagram/creation/video/g/e/a;->d:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
throw v0
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/g/e/a;->b:Lcom/instagram/creation/b/a/b;
const/16 v1, 0x2d
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->c(I)V
return-void
.end method
.method public final a(D)V
.registers 5
const-wide v0, 0x4046800000000000L
mul-double/2addr v0, p1
double-to-int v0, v0
iget-object v1, p0, Lcom/instagram/creation/video/g/e/a;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->c(I)V
return-void
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/e/a;->c:Lcom/instagram/creation/video/g/f/c;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/instagram/creation/video/g/e/a;->c:Lcom/instagram/creation/video/g/f/c;
invoke-virtual {v0}, Lcom/instagram/creation/video/g/f/c;->b()Z
move-result v0
goto :goto_5
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/e/a;->c:Lcom/instagram/creation/video/g/f/c;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/g/e/a;->c:Lcom/instagram/creation/video/g/f/c;
invoke-virtual {v0}, Lcom/instagram/creation/video/g/f/c;->a()V
:cond_9
return-void
.end method
.method public final l()Lcom/instagram/creation/video/gl/j;
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method