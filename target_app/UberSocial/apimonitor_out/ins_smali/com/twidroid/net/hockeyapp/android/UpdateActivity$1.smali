.class  Lcom/twidroid/net/hockeyapp/android/UpdateActivity$1;
.super Lcom/twidroid/net/hockeyapp/android/e;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/net/hockeyapp/android/UpdateActivity;
.method constructor <init>(Lcom/twidroid/net/hockeyapp/android/UpdateActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity$1;->a:Lcom/twidroid/net/hockeyapp/android/UpdateActivity;
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
.registers 3
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity$1;->a:Lcom/twidroid/net/hockeyapp/android/UpdateActivity;
invoke-virtual {v0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->b()V
return-void
.end method
.method public a(Lcom/twidroid/net/hockeyapp/android/f;Ljava/lang/Boolean;)V
.registers 4
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity$1;->a:Lcom/twidroid/net/hockeyapp/android/UpdateActivity;
invoke-static {v0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->a(Lcom/twidroid/net/hockeyapp/android/UpdateActivity;)V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity$1;->a:Lcom/twidroid/net/hockeyapp/android/UpdateActivity;
invoke-virtual {v0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->b()V
goto :goto_b
.end method