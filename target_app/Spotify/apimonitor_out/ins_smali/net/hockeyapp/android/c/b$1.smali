.class final Lnet/hockeyapp/android/c/b$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lnet/hockeyapp/android/c/b;
.method constructor <init>(Lnet/hockeyapp/android/c/b;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/c/b$1;->a:Lnet/hockeyapp/android/c/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lnet/hockeyapp/android/c/b$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lnet/hockeyapp/android/c/b$1;->a:Lnet/hockeyapp/android/c/b;
invoke-static {v0}, Lnet/hockeyapp/android/c/b;->a(Lnet/hockeyapp/android/c/b;)Lnet/hockeyapp/android/b/a;
move-result-object v0
iget-object v1, p0, Lnet/hockeyapp/android/c/b$1;->a:Lnet/hockeyapp/android/c/b;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/b/a;->a(Ljava/lang/Boolean;)V
const-string v1, " - Lnet/hockeyapp/android/c/b$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method