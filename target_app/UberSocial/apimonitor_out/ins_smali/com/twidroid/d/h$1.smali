.class final Lcom/twidroid/d/h$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/app/Activity;
.field final synthetic b:Ljava/lang/CharSequence;
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/d/h$1;->a:Landroid/app/Activity;
iput-object p2, p0, Lcom/twidroid/d/h$1;->b:Ljava/lang/CharSequence;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/d/h$1;->a:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/d/h$1;->b:Ljava/lang/CharSequence;
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method