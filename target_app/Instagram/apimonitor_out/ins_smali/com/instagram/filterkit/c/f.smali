.class final Lcom/instagram/filterkit/c/f;
.super Ljava/lang/Object;
.source "SingleThreadRenderManager.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/filterkit/e/c;
.field final synthetic b:Lcom/instagram/filterkit/c/e;
.method constructor <init>(Lcom/instagram/filterkit/c/e;Lcom/instagram/filterkit/e/c;)V
.registers 3
iput-object p1, p0, Lcom/instagram/filterkit/c/f;->b:Lcom/instagram/filterkit/c/e;
iput-object p2, p0, Lcom/instagram/filterkit/c/f;->a:Lcom/instagram/filterkit/e/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/filterkit/c/f;->b:Lcom/instagram/filterkit/c/e;
iget-object v1, p0, Lcom/instagram/filterkit/c/f;->a:Lcom/instagram/filterkit/e/c;
invoke-static {v0, v1}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
return-void
.end method