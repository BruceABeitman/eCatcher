.class  Lco/vine/android/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lco/vine/android/SettingsFragment;
.method constructor <init>(Lco/vine/android/SettingsFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/SettingsFragment$4;->this$0:Lco/vine/android/SettingsFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 7
iget-object v0, p0, Lco/vine/android/SettingsFragment$4;->this$0:Lco/vine/android/SettingsFragment;
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
#setter for: Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;
invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$402(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/SettingsFragment$4;->this$0:Lco/vine/android/SettingsFragment;
#getter for: Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;
invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$500(Lco/vine/android/SettingsFragment;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lco/vine/android/SettingsFragment$4;->this$0:Lco/vine/android/SettingsFragment;
#getter for: Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;
invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$600(Lco/vine/android/SettingsFragment;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lco/vine/android/SettingsFragment$4;->this$0:Lco/vine/android/SettingsFragment;
#getter for: Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;
invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$400(Lco/vine/android/SettingsFragment;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2a
iget-object v0, p0, Lco/vine/android/SettingsFragment$4;->this$0:Lco/vine/android/SettingsFragment;
const/4 v1, 0x0
#setter for: Lco/vine/android/SettingsFragment;->mIsEmailVerified:Z
invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$702(Lco/vine/android/SettingsFragment;Z)Z
:goto_29
return-void
:cond_2a
iget-object v0, p0, Lco/vine/android/SettingsFragment$4;->this$0:Lco/vine/android/SettingsFragment;
iget-object v1, p0, Lco/vine/android/SettingsFragment$4;->this$0:Lco/vine/android/SettingsFragment;
#getter for: Lco/vine/android/SettingsFragment;->mOriginalEmailVerified:Z
invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$800(Lco/vine/android/SettingsFragment;)Z
move-result v1
#setter for: Lco/vine/android/SettingsFragment;->mIsEmailVerified:Z
invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$702(Lco/vine/android/SettingsFragment;Z)Z
goto :goto_29
.end method