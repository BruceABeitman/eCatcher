.class final Lcom/instagram/android/fragment/ds;
.super Landroid/content/BroadcastReceiver;
.source "RecommendedUserFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/dr;
.method constructor <init>(Lcom/instagram/android/fragment/dr;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ds;->a:Lcom/instagram/android/fragment/dr;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
const/4 v3, 0x0
iget-object v0, p0, Lcom/instagram/android/fragment/ds;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0}, Lcom/instagram/android/fragment/dr;->b(Lcom/instagram/android/fragment/dr;)Lcom/instagram/android/fragment/dx;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/instagram/android/fragment/dx;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/android/fragment/ds;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0}, Lcom/instagram/android/fragment/dr;->b(Lcom/instagram/android/fragment/dr;)Lcom/instagram/android/fragment/dx;
move-result-object v0
const-wide/16 v1, 0x12c
invoke-virtual {v0, v3, v1, v2}, Lcom/instagram/android/fragment/dx;->sendEmptyMessageDelayed(IJ)Z
return-void
.end method