.class  Lco/vine/android/recorder/VineRecorder$2;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$2;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
.registers 4
return-void
.end method
.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
.registers 2
return-void
.end method
.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
.registers 4
invoke-static {}, Lco/vine/android/recorder/CameraManager;->getInstance()Lco/vine/android/recorder/CameraManager;
move-result-object v0
invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->modifyZoom(I)I
return-void
.end method