.class  Lco/vine/android/SettingsFragment$8;
.super Ljava/lang/Object;
.source "SettingsFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/SettingsFragment;
.method constructor <init>(Lco/vine/android/SettingsFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/SettingsFragment$8;->this$0:Lco/vine/android/SettingsFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/SettingsFragment$8;->this$0:Lco/vine/android/SettingsFragment;
invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0e01a0
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
return-void
.end method