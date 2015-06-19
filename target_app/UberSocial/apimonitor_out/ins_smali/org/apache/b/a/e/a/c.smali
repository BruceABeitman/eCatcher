.class  Lorg/apache/b/a/e/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/b/a/e/a/e;
.field private static final b:Ljava/util/Set;
.field private a:Ljava/io/File;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lorg/apache/b/a/e/a/c;->b:Ljava/util/Set;
return-void
.end method
.method private constructor <init>(Ljava/io/File;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/b/a/e/a/c;->a:Ljava/io/File;
iput-object p1, p0, Lorg/apache/b/a/e/a/c;->a:Ljava/io/File;
iget-object v0, p0, Lorg/apache/b/a/e/a/c;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
return-void
.end method
.method constructor <init>(Ljava/io/File;Lorg/apache/b/a/e/a/b;)V
.registers 3
invoke-direct {p0, p1}, Lorg/apache/b/a/e/a/c;-><init>(Ljava/io/File;)V
return-void
.end method
.method public a()Ljava/io/InputStream;
.registers 4
new-instance v0, Ljava/io/BufferedInputStream;
new-instance v1, Ljava/io/FileInputStream;
iget-object v2, p0, Lorg/apache/b/a/e/a/c;->a:Ljava/io/File;
invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
return-object v0
.end method
.method public b()Ljava/io/OutputStream;
.registers 4
new-instance v0, Ljava/io/BufferedOutputStream;
new-instance v1, Ljava/io/FileOutputStream;
iget-object v2, p0, Lorg/apache/b/a/e/a/c;->a:Ljava/io/File;
invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/e/a/c;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public d()V
.registers 4
sget-object v1, Lorg/apache/b/a/e/a/c;->b:Ljava/util/Set;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/b/a/e/a/c;->a:Ljava/io/File;
if-eqz v0, :cond_11
sget-object v0, Lorg/apache/b/a/e/a/c;->b:Ljava/util/Set;
iget-object v2, p0, Lorg/apache/b/a/e/a/c;->a:Ljava/io/File;
invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/b/a/e/a/c;->a:Ljava/io/File;
:cond_11
sget-object v0, Lorg/apache/b/a/e/a/c;->b:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_17
:goto_17
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v0
if-eqz v0, :cond_17
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
goto :goto_17
:catchall_2d
move-exception v0
monitor-exit v1
:try_end_2f
.catchall {:try_start_3 .. :try_end_2f} :catchall_2d
throw v0
:cond_30
:try_start_30
monitor-exit v1
:try_end_31
.catchall {:try_start_30 .. :try_end_31} :catchall_2d
return-void
.end method
.method public e()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public f()J
.registers 3
iget-object v0, p0, Lorg/apache/b/a/e/a/c;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v0
return-wide v0
.end method