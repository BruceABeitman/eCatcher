.class  Lco/vine/android/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic this$0:Lco/vine/android/LoginActivity;
.method constructor <init>(Lco/vine/android/LoginActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/LoginActivity$1;->this$0:Lco/vine/android/LoginActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 8
const/4 v3, 0x0
if-eqz p3, :cond_b
invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v1
const/16 v2, 0x42
if-eq v1, v2, :cond_16
:cond_b
const/4 v1, 0x6
if-ne p2, v1, :cond_32
iget-object v1, p0, Lco/vine/android/LoginActivity$1;->this$0:Lco/vine/android/LoginActivity;
#calls: Lco/vine/android/LoginActivity;->validate()Z
invoke-static {v1}, Lco/vine/android/LoginActivity;->access$000(Lco/vine/android/LoginActivity;)Z
move-result v1
if-eqz v1, :cond_32
:cond_16
iget-object v1, p0, Lco/vine/android/LoginActivity$1;->this$0:Lco/vine/android/LoginActivity;
const-string v2, "input_method"
invoke-virtual {v1, v2}, Lco/vine/android/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lco/vine/android/LoginActivity$1;->this$0:Lco/vine/android/LoginActivity;
#getter for: Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;
invoke-static {v1}, Lco/vine/android/LoginActivity;->access$100(Lco/vine/android/LoginActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v1, p0, Lco/vine/android/LoginActivity$1;->this$0:Lco/vine/android/LoginActivity;
#calls: Lco/vine/android/LoginActivity;->login(Z)V
invoke-static {v1, v3}, Lco/vine/android/LoginActivity;->access$200(Lco/vine/android/LoginActivity;Z)V
:cond_32
const/4 v1, 0x1
return v1
.end method