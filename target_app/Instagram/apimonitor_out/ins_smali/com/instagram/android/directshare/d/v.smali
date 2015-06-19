.class final Lcom/instagram/android/directshare/d/v;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/directshare/d/u;
.method constructor <init>(Lcom/instagram/android/directshare/d/u;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/d/v;->a:Lcom/instagram/android/directshare/d/u;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
invoke-static {}, Lcom/instagram/android/i/f;->c()Lcom/instagram/android/i/f;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/i/f;->e()Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
move-result-object v0
sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->SUBSCRIBED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
if-ne v0, v1, :cond_17
const/4 v0, 0x1
:goto_d
if-nez v0, :cond_16
iget-object v0, p0, Lcom/instagram/android/directshare/d/v;->a:Lcom/instagram/android/directshare/d/u;
iget-object v0, v0, Lcom/instagram/android/directshare/d/u;->a:Lcom/instagram/android/directshare/d/c;
invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->e(Lcom/instagram/android/directshare/d/c;)V
:cond_16
return-void
:cond_17
const/4 v0, 0x0
goto :goto_d
.end method