.class final Lcom/facebook/widget/p$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/facebook/widget/u;
.field final synthetic b:Ljava/lang/Exception;
.field final synthetic c:Z
.field final synthetic d:Landroid/graphics/Bitmap;
.field final synthetic e:Lcom/facebook/widget/w;
.method constructor <init>(Lcom/facebook/widget/u;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/widget/w;)V
.registers 6
iput-object p1, p0, Lcom/facebook/widget/p$1;->a:Lcom/facebook/widget/u;
iput-object p2, p0, Lcom/facebook/widget/p$1;->b:Ljava/lang/Exception;
iput-boolean p3, p0, Lcom/facebook/widget/p$1;->c:Z
iput-object p4, p0, Lcom/facebook/widget/p$1;->d:Landroid/graphics/Bitmap;
iput-object p5, p0, Lcom/facebook/widget/p$1;->e:Lcom/facebook/widget/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
new-instance v0, Lcom/facebook/widget/x;
iget-object v1, p0, Lcom/facebook/widget/p$1;->a:Lcom/facebook/widget/u;
iget-object v2, p0, Lcom/facebook/widget/p$1;->b:Ljava/lang/Exception;
iget-boolean v3, p0, Lcom/facebook/widget/p$1;->c:Z
iget-object v4, p0, Lcom/facebook/widget/p$1;->d:Landroid/graphics/Bitmap;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/widget/x;-><init>(Lcom/facebook/widget/u;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/facebook/widget/p$1;->e:Lcom/facebook/widget/w;
invoke-interface {v1, v0}, Lcom/facebook/widget/w;->a(Lcom/facebook/widget/x;)V
return-void
.end method