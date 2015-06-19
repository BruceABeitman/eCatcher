.class final Lcom/mixpanel/android/mpmetrics/q$1$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/app/AlertDialog$Builder;
.field final synthetic b:Lcom/mixpanel/android/mpmetrics/q$1;
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/q$1;Landroid/app/AlertDialog$Builder;)V
.registers 3
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/q$1$3;->b:Lcom/mixpanel/android/mpmetrics/q$1;
iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/q$1$3;->a:Landroid/app/AlertDialog$Builder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/q$1$3;->a:Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
return-void
.end method