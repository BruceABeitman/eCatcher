.class  Lco/vine/android/recorder/RegularVineRecorder$2;
.super Ljava/lang/Object;
.source "RegularVineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/RegularVineRecorder;
.field final synthetic val$dialog:Landroid/app/ProgressDialog;
.method constructor <init>(Lco/vine/android/recorder/RegularVineRecorder;Landroid/app/ProgressDialog;)V
.registers 3
iput-object p1, p0, Lco/vine/android/recorder/RegularVineRecorder$2;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iput-object p2, p0, Lco/vine/android/recorder/RegularVineRecorder$2;->val$dialog:Landroid/app/ProgressDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$2;->val$dialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
return-void
.end method