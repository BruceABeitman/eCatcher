.class final Lcom/facebook/g/d;
.super Ljava/lang/Object;
.source "FileLruCache.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/facebook/g/b;
.method constructor <init>(Lcom/facebook/g/b;)V
.registers 2
iput-object p1, p0, Lcom/facebook/g/d;->a:Lcom/facebook/g/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/facebook/g/d;->a:Lcom/facebook/g/b;
invoke-static {v0}, Lcom/facebook/g/b;->a(Lcom/facebook/g/b;)V
return-void
.end method