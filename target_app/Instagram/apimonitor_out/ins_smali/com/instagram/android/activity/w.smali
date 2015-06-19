.class final Lcom/instagram/android/activity/w;
.super Ljava/lang/Object;
.source "TumblrAuthActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/support/v4/app/f;
.field final synthetic b:Lcom/instagram/android/activity/TumblrAuthActivity;
.method constructor <init>(Lcom/instagram/android/activity/TumblrAuthActivity;Landroid/support/v4/app/f;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/activity/w;->b:Lcom/instagram/android/activity/TumblrAuthActivity;
iput-object p2, p0, Lcom/instagram/android/activity/w;->a:Landroid/support/v4/app/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/w;->a:Landroid/support/v4/app/f;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/android/activity/w;->a:Landroid/support/v4/app/f;
invoke-virtual {v0}, Landroid/support/v4/app/f;->a()V
:cond_9
return-void
.end method