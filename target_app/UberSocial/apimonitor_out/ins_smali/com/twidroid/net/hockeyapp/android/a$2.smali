.class  Lcom/twidroid/net/hockeyapp/android/a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lorg/json/JSONArray;
.field final synthetic b:Lcom/twidroid/net/hockeyapp/android/a;
.method constructor <init>(Lcom/twidroid/net/hockeyapp/android/a;Lorg/json/JSONArray;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/a$2;->b:Lcom/twidroid/net/hockeyapp/android/a;
iput-object p2, p0, Lcom/twidroid/net/hockeyapp/android/a$2;->a:Lorg/json/JSONArray;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/net/hockeyapp/android/a$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a$2;->b:Lcom/twidroid/net/hockeyapp/android/a;
invoke-virtual {v0}, Lcom/twidroid/net/hockeyapp/android/a;->e()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a$2;->b:Lcom/twidroid/net/hockeyapp/android/a;
invoke-static {v0}, Lcom/twidroid/net/hockeyapp/android/a;->b(Lcom/twidroid/net/hockeyapp/android/a;)Landroid/app/Activity;
move-result-object v0
const-string v1, "[]"
invoke-static {v0, v1}, Lcom/twidroid/net/hockeyapp/android/s;->a(Landroid/content/Context;Ljava/lang/String;)V
:cond_13
invoke-static {}, Lcom/twidroid/net/hockeyapp/android/p;->a()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a$2;->b:Lcom/twidroid/net/hockeyapp/android/a;
invoke-static {v0}, Lcom/twidroid/net/hockeyapp/android/a;->b(Lcom/twidroid/net/hockeyapp/android/a;)Landroid/app/Activity;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/net/hockeyapp/android/p;->a(Landroid/app/Activity;)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a$2;->b:Lcom/twidroid/net/hockeyapp/android/a;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a$2;->a:Lorg/json/JSONArray;
invoke-static {v0, v1}, Lcom/twidroid/net/hockeyapp/android/a;->a(Lcom/twidroid/net/hockeyapp/android/a;Lorg/json/JSONArray;)V
:goto_34
const-string v1, " - Lcom/twidroid/net/hockeyapp/android/a$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_35
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a$2;->b:Lcom/twidroid/net/hockeyapp/android/a;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a$2;->a:Lorg/json/JSONArray;
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/twidroid/net/hockeyapp/android/a;->a(Lcom/twidroid/net/hockeyapp/android/a;Lorg/json/JSONArray;Ljava/lang/Boolean;)V
goto :goto_34
.end method