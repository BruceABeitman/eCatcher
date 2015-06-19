.class final Lcom/instagram/android/directshare/d/s;
.super Landroid/content/BroadcastReceiver;
.source "DirectSharePermalinkFragment.java"
.field final synthetic a:Lcom/instagram/android/directshare/d/c;
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/d/s;->a:Lcom/instagram/android/directshare/d/c;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/directshare/d/s;->a:Lcom/instagram/android/directshare/d/c;
invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;)V
return-void
.end method