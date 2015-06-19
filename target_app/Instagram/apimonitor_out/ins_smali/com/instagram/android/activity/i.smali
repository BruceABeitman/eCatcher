.class final Lcom/instagram/android/activity/i;
.super Ljava/lang/Object;
.source "FlickrAuthActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/activity/h;
.method constructor <init>(Lcom/instagram/android/activity/h;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/activity/i;->a:Lcom/instagram/android/activity/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/activity/i;->a:Lcom/instagram/android/activity/h;
iget-object v0, v0, Lcom/instagram/android/activity/h;->a:Lcom/instagram/android/activity/FlickrAuthActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/android/activity/FlickrAuthActivity;->setResult(I)V
iget-object v0, p0, Lcom/instagram/android/activity/i;->a:Lcom/instagram/android/activity/h;
iget-object v0, v0, Lcom/instagram/android/activity/h;->a:Lcom/instagram/android/activity/FlickrAuthActivity;
invoke-virtual {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->finish()V
return-void
.end method