.class final Lnet/hockeyapp/android/b$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lnet/hockeyapp/android/c;
.field final synthetic b:Ljava/lang/ref/WeakReference;
.field final synthetic c:Z
.method constructor <init>(Lnet/hockeyapp/android/c;Ljava/lang/ref/WeakReference;Z)V
.registers 4
iput-object p1, p0, Lnet/hockeyapp/android/b$1;->a:Lnet/hockeyapp/android/c;
iput-object p2, p0, Lnet/hockeyapp/android/b$1;->b:Ljava/lang/ref/WeakReference;
iput-boolean p3, p0, Lnet/hockeyapp/android/b$1;->c:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lnet/hockeyapp/android/b$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lnet/hockeyapp/android/b$1;->a:Lnet/hockeyapp/android/c;
if-eqz v0, :cond_6
iget-object v0, p0, Lnet/hockeyapp/android/b$1;->a:Lnet/hockeyapp/android/c;
:cond_6
iget-object v0, p0, Lnet/hockeyapp/android/b$1;->b:Ljava/lang/ref/WeakReference;
invoke-static {v0}, Lnet/hockeyapp/android/b;->a(Ljava/lang/ref/WeakReference;)V
iget-object v0, p0, Lnet/hockeyapp/android/b$1;->b:Ljava/lang/ref/WeakReference;
iget-object v0, p0, Lnet/hockeyapp/android/b$1;->a:Lnet/hockeyapp/android/c;
iget-boolean v1, p0, Lnet/hockeyapp/android/b$1;->c:Z
invoke-static {v0, v1}, Lnet/hockeyapp/android/b;->a(Lnet/hockeyapp/android/c;Z)V
const-string v1, " - Lnet/hockeyapp/android/b$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method