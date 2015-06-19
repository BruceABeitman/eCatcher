.class  Lcom/facebook/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private a:Landroid/content/Context;
.field private b:Lcom/facebook/widget/t;
.method constructor <init>(Landroid/content/Context;Lcom/facebook/widget/t;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/widget/r;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/widget/r;->b:Lcom/facebook/widget/t;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/r;->b:Lcom/facebook/widget/t;
iget-object v1, p0, Lcom/facebook/widget/r;->a:Landroid/content/Context;
invoke-static {v0, v1}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/t;Landroid/content/Context;)V
return-void
.end method