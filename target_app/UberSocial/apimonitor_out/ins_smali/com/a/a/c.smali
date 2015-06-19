.class final Lcom/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.field private synthetic a:Lcom/a/a/bf;
.method constructor <init>(Lcom/a/a/bf;)V
.registers 2
iput-object p1, p0, Lcom/a/a/c;->a:Lcom/a/a/bf;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic call()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/bf;
invoke-static {v0}, Lcom/a/a/bf;->f(Lcom/a/a/bf;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method