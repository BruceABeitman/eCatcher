.class public abstract Lcom/a/a/a/ab;
.super Lcom/a/a/a/af;
.source "SourceFile"
.field private final a:Ljava/io/Closeable;
.field private final b:Z
.method protected constructor <init>(Ljava/io/Closeable;Z)V
.registers 3
invoke-direct {p0}, Lcom/a/a/a/af;-><init>()V
iput-object p1, p0, Lcom/a/a/a/ab;->a:Ljava/io/Closeable;
iput-boolean p2, p0, Lcom/a/a/a/ab;->b:Z
return-void
.end method
.method protected final a()V
.registers 2
iget-object v0, p0, Lcom/a/a/a/ab;->a:Ljava/io/Closeable;
instance-of v0, v0, Ljava/io/Flushable;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/a/a/a/ab;->a:Ljava/io/Closeable;
check-cast v0, Ljava/io/Flushable;
invoke-interface {v0}, Ljava/io/Flushable;->flush()V
:cond_d
iget-boolean v0, p0, Lcom/a/a/a/ab;->b:Z
if-eqz v0, :cond_17
:try_start_11
iget-object v0, p0, Lcom/a/a/a/ab;->a:Ljava/io/Closeable;
invoke-interface {v0}, Ljava/io/Closeable;->close()V
:goto_16
:try_end_16
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_1d
return-void
:cond_17
iget-object v0, p0, Lcom/a/a/a/ab;->a:Ljava/io/Closeable;
invoke-interface {v0}, Ljava/io/Closeable;->close()V
goto :goto_16
:catch_1d
move-exception v0
goto :goto_16
.end method