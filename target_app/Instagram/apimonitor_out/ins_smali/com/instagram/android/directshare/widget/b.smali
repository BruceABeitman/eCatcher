.class final Lcom/instagram/android/directshare/widget/b;
.super Ljava/lang/Object;
.source "DirectShareRecipientView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
.method constructor <init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/widget/b;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/directshare/widget/b; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/directshare/widget/b;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->b(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/android/directshare/widget/d;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/instagram/android/directshare/widget/b;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->b(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/android/directshare/widget/d;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/directshare/widget/b;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
invoke-interface {v0, v1}, Lcom/instagram/android/directshare/widget/d;->a(Landroid/view/View;)V
:cond_13
const-string v1, " - Lcom/instagram/android/directshare/widget/b; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method