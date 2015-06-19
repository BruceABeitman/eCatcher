.class  Lcom/twidroid/net/hockeyapp/android/m$1;
.super Lcom/twidroid/net/hockeyapp/android/e;
.source "SourceFile"
.field final synthetic a:Landroid/app/Activity;
.field final synthetic b:Lcom/twidroid/net/hockeyapp/android/m;
.method constructor <init>(Lcom/twidroid/net/hockeyapp/android/m;Landroid/app/Activity;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/m$1;->b:Lcom/twidroid/net/hockeyapp/android/m;
iput-object p2, p0, Lcom/twidroid/net/hockeyapp/android/m$1;->a:Landroid/app/Activity;
invoke-direct {p0}, Lcom/twidroid/net/hockeyapp/android/e;-><init>()V
return-void
.end method
.method public a(I)Ljava/lang/String;
.registers 3
invoke-static {}, Lcom/twidroid/net/hockeyapp/android/p;->b()Lcom/twidroid/net/hockeyapp/android/q;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0, p1}, Lcom/twidroid/net/hockeyapp/android/q;->a(I)Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public a(Lcom/twidroid/net/hockeyapp/android/f;)V
.registers 2
return-void
.end method
.method public a(Lcom/twidroid/net/hockeyapp/android/f;Ljava/lang/Boolean;)V
.registers 5
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/m$1;->b:Lcom/twidroid/net/hockeyapp/android/m;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/m$1;->a:Landroid/app/Activity;
invoke-static {v0, v1}, Lcom/twidroid/net/hockeyapp/android/m;->a(Lcom/twidroid/net/hockeyapp/android/m;Landroid/app/Activity;)V
:cond_d
return-void
.end method