.class  Lco/vine/android/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lco/vine/android/SettingsFragment;
.method constructor <init>(Lco/vine/android/SettingsFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/SettingsFragment$2;->this$0:Lco/vine/android/SettingsFragment;
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
iget-object v0, p0, Lco/vine/android/SettingsFragment$2;->this$0:Lco/vine/android/SettingsFragment;
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
#setter for: Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;
invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$202(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
return-void
.end method