.class final Lcom/twidroid/ui/a$2;
.super Lcom/ubermedia/net/f;
.source "SourceFile"
.field final synthetic a:Landroid/widget/ImageView;
.field final synthetic b:Landroid/os/Handler;
.field final synthetic c:I
.field final synthetic d:Ljava/lang/String;
.field final synthetic e:Z
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/widget/ImageView;Landroid/os/Handler;ILjava/lang/String;Z)V
.registers 9
iput-object p4, p0, Lcom/twidroid/ui/a$2;->a:Landroid/widget/ImageView;
iput-object p5, p0, Lcom/twidroid/ui/a$2;->b:Landroid/os/Handler;
iput p6, p0, Lcom/twidroid/ui/a$2;->c:I
iput-object p7, p0, Lcom/twidroid/ui/a$2;->d:Ljava/lang/String;
iput-boolean p8, p0, Lcom/twidroid/ui/a$2;->e:Z
invoke-direct {p0, p1, p2, p3}, Lcom/ubermedia/net/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/a$2;->a:Landroid/widget/ImageView;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/twidroid/ui/a$2;->b:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/ui/a$2$1;
invoke-direct {v1, p0}, Lcom/twidroid/ui/a$2$1;-><init>(Lcom/twidroid/ui/a$2;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_e
return-void
.end method