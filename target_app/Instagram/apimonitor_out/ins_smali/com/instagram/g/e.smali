.class final Lcom/instagram/g/e;
.super Ljava/lang/Object;
.source "FeedbackUtil.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/os/Bundle;
.field final synthetic b:Landroid/support/v4/app/s;
.method constructor <init>(Landroid/os/Bundle;Landroid/support/v4/app/s;)V
.registers 3
iput-object p1, p0, Lcom/instagram/g/e;->a:Landroid/os/Bundle;
iput-object p2, p0, Lcom/instagram/g/e;->b:Landroid/support/v4/app/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
new-instance v0, Lcom/instagram/g/a;
invoke-direct {v0}, Lcom/instagram/g/a;-><init>()V
iget-object v1, p0, Lcom/instagram/g/e;->a:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Lcom/instagram/g/a;->g(Landroid/os/Bundle;)V
iget-object v1, p0, Lcom/instagram/g/e;->b:Landroid/support/v4/app/s;
const-string v2, "feedbackAlertDialog"
invoke-virtual {v0, v1, v2}, Lcom/instagram/g/a;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V
return-void
.end method