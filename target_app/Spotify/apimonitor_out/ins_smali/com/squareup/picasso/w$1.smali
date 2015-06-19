.class final Lcom/squareup/picasso/w$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/Exception;
.field final synthetic b:Lcom/squareup/picasso/w;
.method constructor <init>(Lcom/squareup/picasso/w;Ljava/lang/Exception;)V
.registers 3
iput-object p1, p0, Lcom/squareup/picasso/w$1;->b:Lcom/squareup/picasso/w;
iput-object p2, p0, Lcom/squareup/picasso/w$1;->a:Ljava/lang/Exception;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
new-instance v0, Ljava/lang/RuntimeException;
iget-object v1, p0, Lcom/squareup/picasso/w$1;->a:Ljava/lang/Exception;
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v0
.end method