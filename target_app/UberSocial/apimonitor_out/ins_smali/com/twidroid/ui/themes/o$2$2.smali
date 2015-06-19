.class  Lcom/twidroid/ui/themes/o$2$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/ui/themes/o$2;
.method constructor <init>(Lcom/twidroid/ui/themes/o$2;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/themes/o$2$2;->a:Lcom/twidroid/ui/themes/o$2;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/o$2$2;->a:Lcom/twidroid/ui/themes/o$2;
iget-object v0, v0, Lcom/twidroid/ui/themes/o$2;->b:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V
return-void
.end method