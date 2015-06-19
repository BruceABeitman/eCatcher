.class  Lcom/twidroid/net/a/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/ubermedia/net/j;
.field final synthetic a:Lcom/twidroid/net/a/b/c;
.field final synthetic b:Lcom/twidroid/net/a/b/a;
.method constructor <init>(Lcom/twidroid/net/a/b/a;Lcom/twidroid/net/a/b/c;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/net/a/b/a$1;->b:Lcom/twidroid/net/a/b/a;
iput-object p2, p0, Lcom/twidroid/net/a/b/a$1;->a:Lcom/twidroid/net/a/b/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(J)V
.registers 7
iget-object v0, p0, Lcom/twidroid/net/a/b/a$1;->a:Lcom/twidroid/net/a/b/c;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/net/a/b/a$1;->a:Lcom/twidroid/net/a/b/c;
long-to-float v1, p1
iget-object v2, p0, Lcom/twidroid/net/a/b/a$1;->b:Lcom/twidroid/net/a/b/a;
iget-wide v2, v2, Lcom/twidroid/net/a/b/a;->a:J
long-to-float v2, v2
div-float/2addr v1, v2
const/high16 v2, 0x42c8
mul-float/2addr v1, v2
float-to-int v1, v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/b/c;->a(I)V
:cond_14
return-void
.end method