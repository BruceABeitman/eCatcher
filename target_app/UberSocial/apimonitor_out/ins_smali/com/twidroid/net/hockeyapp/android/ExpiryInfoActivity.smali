.class public Lcom/twidroid/net/hockeyapp/android/ExpiryInfoActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method protected a()Landroid/view/View;
.registers 3
new-instance v0, Lcom/twidroid/net/hockeyapp/android/h;
const/16 v1, 0xe
invoke-virtual {p0, v1}, Lcom/twidroid/net/hockeyapp/android/ExpiryInfoActivity;->a(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/twidroid/net/hockeyapp/android/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V
return-object v0
.end method
.method protected a(I)Ljava/lang/String;
.registers 3
invoke-static {}, Lcom/twidroid/net/hockeyapp/android/p;->b()Lcom/twidroid/net/hockeyapp/android/q;
move-result-object v0
invoke-static {v0, p1}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/net/hockeyapp/android/ExpiryInfoActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const/16 v0, 0xd
invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/ExpiryInfoActivity;->a(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/ExpiryInfoActivity;->setTitle(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/ExpiryInfoActivity;->a()Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/ExpiryInfoActivity;->setContentView(Landroid/view/View;)V
const-string v1, " - Lcom/twidroid/net/hockeyapp/android/ExpiryInfoActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method