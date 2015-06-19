.class final Lcom/instagram/android/directshare/widget/e;
.super Ljava/lang/Object;
.source "DirectShareRecipientView.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
.method private constructor <init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/directshare/widget/e;-><init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/directshare/widget/e; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Landroid/view/View$OnFocusChangeListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Landroid/view/View$OnFocusChangeListener;
move-result-object v0
invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V
:cond_11
if-eqz p2, :cond_25
iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;
move-result-object v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/f/b;->a()V
:goto_24
:cond_24
const-string v1, " - Lcom/instagram/android/directshare/widget/e; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_25
iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;
move-result-object v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/f/b;->b()V
goto :goto_24
.end method