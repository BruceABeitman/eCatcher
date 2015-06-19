.class final Lcom/instagram/n/a/b;
.super Ljava/lang/Object;
.source "AlertDialogUtil.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Ljava/lang/String;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/instagram/n/a/b;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/n/a/b;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/n/a/b;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/instagram/n/a/b;->d:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/n/a/b;->a:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/instagram/n/a/b;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->dismiss:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/n/a/b;->c:Ljava/lang/String;
if-eqz v1, :cond_1d
iget-object v1, p0, Lcom/instagram/n/a/b;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;
:cond_1d
iget-object v1, p0, Lcom/instagram/n/a/b;->d:Ljava/lang/String;
if-eqz v1, :cond_2b
sget v1, Lcom/facebook/az;->learn_more:I
new-instance v2, Lcom/instagram/n/a/c;
invoke-direct {v2, p0}, Lcom/instagram/n/a/c;-><init>(Lcom/instagram/n/a/b;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
:cond_2b
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method