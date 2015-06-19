.class  Lco/vine/android/ImagePicker$1;
.super Ljava/lang/Object;
.source "ImagePicker.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/ImagePicker;
.method constructor <init>(Lco/vine/android/ImagePicker;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ImagePicker$1;->this$0:Lco/vine/android/ImagePicker;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lco/vine/android/ImagePicker$1;->this$0:Lco/vine/android/ImagePicker;
#getter for: Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
invoke-static {v0}, Lco/vine/android/ImagePicker;->access$000(Lco/vine/android/ImagePicker;)Landroid/app/Activity;
move-result-object v0
const v1, 0x7f0e0190
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method