.class  Lcom/facebook/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private a:Landroid/content/Context;
.field private b:Lcom/facebook/widget/t;
.field private c:Z
.method constructor <init>(Landroid/content/Context;Lcom/facebook/widget/t;Z)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/widget/q;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/widget/q;->b:Lcom/facebook/widget/t;
iput-boolean p3, p0, Lcom/facebook/widget/q;->c:Z
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/facebook/widget/q;->b:Lcom/facebook/widget/t;
iget-object v1, p0, Lcom/facebook/widget/q;->a:Landroid/content/Context;
iget-boolean v2, p0, Lcom/facebook/widget/q;->c:Z
invoke-static {v0, v1, v2}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/t;Landroid/content/Context;Z)V
return-void
.end method