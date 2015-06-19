.class final Lcom/facebook/z$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/facebook/s;
.field final synthetic b:J
.field final synthetic c:J
.field final synthetic d:Lcom/facebook/z;
.method constructor <init>(Lcom/facebook/z;Lcom/facebook/s;JJ)V
.registers 7
iput-object p1, p0, Lcom/facebook/z$1;->d:Lcom/facebook/z;
iput-object p2, p0, Lcom/facebook/z$1;->a:Lcom/facebook/s;
iput-wide p3, p0, Lcom/facebook/z$1;->b:J
iput-wide p5, p0, Lcom/facebook/z$1;->c:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/facebook/z$1;->a:Lcom/facebook/s;
iget-wide v0, p0, Lcom/facebook/z$1;->b:J
iget-wide v0, p0, Lcom/facebook/z$1;->c:J
return-void
.end method