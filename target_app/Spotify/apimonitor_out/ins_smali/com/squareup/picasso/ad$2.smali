.class final Lcom/squareup/picasso/ad$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/InterruptedException;
.method constructor <init>(Ljava/lang/InterruptedException;)V
.registers 2
iput-object p1, p0, Lcom/squareup/picasso/ad$2;->a:Ljava/lang/InterruptedException;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
new-instance v0, Ljava/lang/RuntimeException;
iget-object v1, p0, Lcom/squareup/picasso/ad$2;->a:Ljava/lang/InterruptedException;
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v0
.end method