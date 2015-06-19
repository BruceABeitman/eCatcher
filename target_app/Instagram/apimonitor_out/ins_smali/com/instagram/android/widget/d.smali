.class final Lcom/instagram/android/widget/d;
.super Ljava/lang/Object;
.source "ContactsConfirmationDialog.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/k/b/a;
.field final synthetic b:Lcom/instagram/android/widget/a;
.method constructor <init>(Lcom/instagram/android/widget/a;Lcom/instagram/k/b/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/widget/d;->b:Lcom/instagram/android/widget/a;
iput-object p2, p0, Lcom/instagram/android/widget/d;->a:Lcom/instagram/k/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/widget/d; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/instagram/android/widget/d;->a:Lcom/instagram/k/b/a;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/k/b/a;->i(Z)V
iget-object v0, p0, Lcom/instagram/android/widget/d;->b:Lcom/instagram/android/widget/a;
invoke-static {v0}, Lcom/instagram/android/widget/a;->a(Lcom/instagram/android/widget/a;)V
const-string v1, " - Lcom/instagram/android/widget/d; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method