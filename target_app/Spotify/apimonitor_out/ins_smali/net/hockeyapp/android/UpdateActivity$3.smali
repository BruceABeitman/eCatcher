.class final Lnet/hockeyapp/android/UpdateActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lnet/hockeyapp/android/UpdateActivity;
.method constructor <init>(Lnet/hockeyapp/android/UpdateActivity;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity$3;->a:Lnet/hockeyapp/android/UpdateActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$3;->a:Lnet/hockeyapp/android/UpdateActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/UpdateActivity;->showDialog(I)V
return-void
.end method