.class final Lcom/spotify/mobile/android/service/flow/login/t$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$8;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/service/flow/login/t$8; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$8;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$8;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/t;->c(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$8;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->z(Lcom/spotify/mobile/android/service/flow/login/t;)V
const-string v1, " - Lcom/spotify/mobile/android/service/flow/login/t$8; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method