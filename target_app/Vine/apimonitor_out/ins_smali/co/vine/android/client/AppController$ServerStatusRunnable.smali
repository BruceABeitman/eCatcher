.class  Lco/vine/android/client/AppController$ServerStatusRunnable;
.super Ljava/lang/Object;
.source "AppController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/client/AppController;
.method constructor <init>(Lco/vine/android/client/AppController;)V
.registers 2
iput-object p1, p0, Lco/vine/android/client/AppController$ServerStatusRunnable;->this$0:Lco/vine/android/client/AppController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lco/vine/android/client/AppController$ServerStatusRunnable;->this$0:Lco/vine/android/client/AppController;
invoke-virtual {v0}, Lco/vine/android/client/AppController;->determineServerStatus()V
return-void
.end method