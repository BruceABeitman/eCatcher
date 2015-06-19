.class final Lcom/instagram/android/widget/b;
.super Ljava/lang/Object;
.source "ContactsConfirmationDialog.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/widget/a;
.method constructor <init>(Lcom/instagram/android/widget/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/widget/b;->a:Lcom/instagram/android/widget/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/widget/b; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;
move-result-object v0
new-instance v1, Lcom/instagram/android/widget/c;
invoke-direct {v1, p0}, Lcom/instagram/android/widget/c;-><init>(Lcom/instagram/android/widget/b;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
const-string v1, " - Lcom/instagram/android/widget/b; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method