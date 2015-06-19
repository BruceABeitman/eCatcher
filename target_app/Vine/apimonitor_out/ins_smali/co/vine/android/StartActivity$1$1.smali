.class  Lco/vine/android/StartActivity$1$1;
.super Ljava/lang/Object;
.source "StartActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lco/vine/android/StartActivity$1;
.method constructor <init>(Lco/vine/android/StartActivity$1;)V
.registers 2
iput-object p1, p0, Lco/vine/android/StartActivity$1$1;->this$1:Lco/vine/android/StartActivity$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lco/vine/android/StartActivity$1$1;->this$1:Lco/vine/android/StartActivity$1;
iget-object v0, v0, Lco/vine/android/StartActivity$1;->this$0:Lco/vine/android/StartActivity;
#calls: Lco/vine/android/StartActivity;->openStartVideo()V
invoke-static {v0}, Lco/vine/android/StartActivity;->access$000(Lco/vine/android/StartActivity;)V
return-void
.end method