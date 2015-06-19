.class  Lcom/ubermedia/b/e$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/ubermedia/b/e;
.method constructor <init>(Lcom/ubermedia/b/e;)V
.registers 2
iput-object p1, p0, Lcom/ubermedia/b/e$3;->a:Lcom/ubermedia/b/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/ubermedia/b/e$3;->a:Lcom/ubermedia/b/e;
invoke-static {v0}, Lcom/ubermedia/b/e;->a(Lcom/ubermedia/b/e;)Lcom/ubermedia/b/f;
move-result-object v0
invoke-interface {v0}, Lcom/ubermedia/b/f;->c()V
return-void
.end method