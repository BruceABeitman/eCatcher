.class final Lcom/google/analytics/tracking/android/x;
.super Ljava/lang/Object;
.source "GAServiceManager.java"
.implements Landroid/os/Handler$Callback;
.field final synthetic a:Lcom/google/analytics/tracking/android/v;
.method constructor <init>(Lcom/google/analytics/tracking/android/v;)V
.registers 2
iput-object p1, p0, Lcom/google/analytics/tracking/android/x;->a:Lcom/google/analytics/tracking/android/v;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)Z
.registers 7
const/4 v4, 0x1
iget v0, p1, Landroid/os/Message;->what:I
if-ne v4, v0, :cond_55
invoke-static {}, Lcom/google/analytics/tracking/android/v;->e()Ljava/lang/Object;
move-result-object v0
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_55
invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/google/analytics/tracking/android/al;->a(Z)V
iget-object v0, p0, Lcom/google/analytics/tracking/android/x;->a:Lcom/google/analytics/tracking/android/v;
invoke-virtual {v0}, Lcom/google/analytics/tracking/android/v;->c()V
invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Z)V
iget-object v0, p0, Lcom/google/analytics/tracking/android/x;->a:Lcom/google/analytics/tracking/android/v;
invoke-static {v0}, Lcom/google/analytics/tracking/android/v;->b(Lcom/google/analytics/tracking/android/v;)I
move-result v0
if-lez v0, :cond_55
iget-object v0, p0, Lcom/google/analytics/tracking/android/x;->a:Lcom/google/analytics/tracking/android/v;
invoke-static {v0}, Lcom/google/analytics/tracking/android/v;->c(Lcom/google/analytics/tracking/android/v;)Z
move-result v0
if-nez v0, :cond_55
iget-object v0, p0, Lcom/google/analytics/tracking/android/x;->a:Lcom/google/analytics/tracking/android/v;
invoke-static {v0}, Lcom/google/analytics/tracking/android/v;->d(Lcom/google/analytics/tracking/android/v;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/google/analytics/tracking/android/x;->a:Lcom/google/analytics/tracking/android/v;
invoke-static {v1}, Lcom/google/analytics/tracking/android/v;->d(Lcom/google/analytics/tracking/android/v;)Landroid/os/Handler;
move-result-object v1
invoke-static {}, Lcom/google/analytics/tracking/android/v;->e()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
iget-object v2, p0, Lcom/google/analytics/tracking/android/x;->a:Lcom/google/analytics/tracking/android/v;
invoke-static {v2}, Lcom/google/analytics/tracking/android/v;->b(Lcom/google/analytics/tracking/android/v;)I
move-result v2
mul-int/lit16 v2, v2, 0x3e8
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_55
return v4
.end method