.class final Lnet/hockeyapp/android/c/a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lorg/json/JSONArray;
.field final synthetic b:Lnet/hockeyapp/android/c/a;
.method constructor <init>(Lnet/hockeyapp/android/c/a;Lorg/json/JSONArray;)V
.registers 3
iput-object p1, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;
iput-object p2, p0, Lnet/hockeyapp/android/c/a$2;->a:Lorg/json/JSONArray;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lnet/hockeyapp/android/c/a$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;
iget-object v0, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;
invoke-static {v0}, Lnet/hockeyapp/android/c/a;->b(Lnet/hockeyapp/android/c/a;)Landroid/app/Activity;
move-result-object v0
const-string v1, "[]"
invoke-static {v0, v1}, Lnet/hockeyapp/android/d/h;->a(Landroid/content/Context;Ljava/lang/String;)V
new-instance v0, Ljava/lang/ref/WeakReference;
iget-object v1, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;
invoke-static {v1}, Lnet/hockeyapp/android/c/a;->b(Lnet/hockeyapp/android/c/a;)Landroid/app/Activity;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-static {}, Lnet/hockeyapp/android/h;->a()Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-eqz v1, :cond_34
invoke-static {v0}, Lnet/hockeyapp/android/h;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_34
iget-object v0, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;
iget-object v1, p0, Lnet/hockeyapp/android/c/a$2;->a:Lorg/json/JSONArray;
invoke-static {v0, v1}, Lnet/hockeyapp/android/c/a;->a(Lnet/hockeyapp/android/c/a;Lorg/json/JSONArray;)V
:goto_33
const-string v1, " - Lnet/hockeyapp/android/c/a$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_34
iget-object v0, p0, Lnet/hockeyapp/android/c/a$2;->b:Lnet/hockeyapp/android/c/a;
iget-object v1, p0, Lnet/hockeyapp/android/c/a$2;->a:Lorg/json/JSONArray;
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/c/a;->a(Lnet/hockeyapp/android/c/a;Lorg/json/JSONArray;Ljava/lang/Boolean;)V
goto :goto_33
.end method