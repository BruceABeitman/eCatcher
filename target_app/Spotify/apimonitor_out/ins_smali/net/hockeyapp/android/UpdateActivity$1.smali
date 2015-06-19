.class final Lnet/hockeyapp/android/UpdateActivity$1;
.super Lnet/hockeyapp/android/b/a;
.source "SourceFile"
.field final synthetic a:Lnet/hockeyapp/android/UpdateActivity;
.method constructor <init>(Lnet/hockeyapp/android/UpdateActivity;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity$1;->a:Lnet/hockeyapp/android/UpdateActivity;
invoke-direct {p0}, Lnet/hockeyapp/android/b/a;-><init>()V
return-void
.end method
.method public final a(I)Ljava/lang/String;
.registers 3
invoke-static {}, Lnet/hockeyapp/android/h;->b()Lnet/hockeyapp/android/i;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0, p1}, Lnet/hockeyapp/android/i;->a(I)Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$1;->a:Lnet/hockeyapp/android/UpdateActivity;
invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->b()V
return-void
.end method
.method public final a(Ljava/lang/Boolean;)V
.registers 3
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$1;->a:Lnet/hockeyapp/android/UpdateActivity;
invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->a()V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$1;->a:Lnet/hockeyapp/android/UpdateActivity;
invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->b()V
goto :goto_b
.end method