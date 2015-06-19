.class  Lco/vine/android/SettingsFragment$6;
.super Ljava/lang/Object;
.source "SettingsFragment.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic this$0:Lco/vine/android/SettingsFragment;
.method constructor <init>(Lco/vine/android/SettingsFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/SettingsFragment$6;->this$0:Lco/vine/android/SettingsFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/SettingsFragment$6; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/SettingsFragment$6;->this$0:Lco/vine/android/SettingsFragment;
iget-object v1, p0, Lco/vine/android/SettingsFragment$6;->this$0:Lco/vine/android/SettingsFragment;
#getter for: Lco/vine/android/SettingsFragment;->mSpinnerAdapter:Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;
invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$1300(Lco/vine/android/SettingsFragment;)Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;
move-result-object v1
invoke-virtual {v1, p3}, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->getEditionCode(I)Ljava/lang/String;
move-result-object v1
#setter for: Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;
invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$1202(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
const-string v1, " - Lco/vine/android/SettingsFragment$6; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/SettingsFragment$6; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lco/vine/android/SettingsFragment$6; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method