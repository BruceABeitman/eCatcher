.class final Lcom/bbm/util/fd;
.super Ljava/lang/Object;
.source "Util.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/widget/Toast;
.method constructor <init>(Landroid/widget/Toast;)V
.registers 2
iput-object p1, p0, Lcom/bbm/util/fd;->a:Landroid/widget/Toast;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/util/fd;->a:Landroid/widget/Toast;
invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
return-void
.end method