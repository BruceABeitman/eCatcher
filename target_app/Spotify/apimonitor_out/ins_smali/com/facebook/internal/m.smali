.class final Lcom/facebook/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private a:Landroid/content/Context;
.field private b:Lcom/facebook/internal/o;
.method constructor <init>(Landroid/content/Context;Lcom/facebook/internal/o;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/internal/m;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/internal/m;->b:Lcom/facebook/internal/o;
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/facebook/internal/m;->b:Lcom/facebook/internal/o;
iget-object v1, p0, Lcom/facebook/internal/m;->a:Landroid/content/Context;
invoke-static {v0, v1}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/o;Landroid/content/Context;)V
return-void
.end method