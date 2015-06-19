.class public final Lcom/instagram/n/e;
.super Ljava/lang/Object;
.source "ToastUtil.java"
.method public static a(I)V
.registers 4
const/4 v2, 0x0
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
const/16 v1, 0x31
invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method public static a(Ljava/lang/CharSequence;)V
.registers 4
const/4 v2, 0x0
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
const/16 v1, 0x31
invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method