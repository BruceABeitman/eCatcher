.class final Lcom/bbm/ui/activities/d;
.super Ljava/lang/Object;
.source "AddChannelPostActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/c;
.method constructor <init>(Lcom/bbm/ui/activities/c;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/d;->a:Lcom/bbm/ui/activities/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/d;->a:Lcom/bbm/ui/activities/c;
iget-object v0, v0, Lcom/bbm/ui/activities/c;->c:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;)V
return-void
.end method