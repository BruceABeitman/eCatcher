.class final Lcom/mixpanel/android/mpmetrics/f$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/app/Activity;
.field final synthetic b:Lcom/mixpanel/android/mpmetrics/h;
.method constructor <init>(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/h;)V
.registers 3
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/f$1;->a:Landroid/app/Activity;
iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/f$1;->b:Lcom/mixpanel/android/mpmetrics/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
new-instance v0, Lcom/mixpanel/android/mpmetrics/g;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/f$1;->a:Landroid/app/Activity;
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/f$1;->b:Lcom/mixpanel/android/mpmetrics/h;
invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/g;-><init>(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/h;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method