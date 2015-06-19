.class  Lco/vine/android/recorder/VineRecorder$16;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$16;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/recorder/VineRecorder$16; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
const-string v1, " - Lco/vine/android/recorder/VineRecorder$16; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method