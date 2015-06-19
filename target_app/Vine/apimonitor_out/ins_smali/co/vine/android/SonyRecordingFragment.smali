.class public Lco/vine/android/SonyRecordingFragment;
.super Lco/vine/android/RecordingFragment;
.source "SonyRecordingFragment.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/RecordingFragment;-><init>()V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lco/vine/android/SonyRecordingFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/RecordingFragment;->onResume()V
invoke-virtual {p0}, Lco/vine/android/SonyRecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lco/vine/android/SonyRecordingActivity;
invoke-virtual {v0}, Lco/vine/android/SonyRecordingActivity;->setupSonyOverlay()V
const-string v1, " - Lco/vine/android/SonyRecordingFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method