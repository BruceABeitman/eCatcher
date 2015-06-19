.class final Lcom/bbm/ui/activities/f;
.super Ljava/lang/Object;
.source "AddChannelPostActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/AddChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/f;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/f;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/f;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->v(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/EmoticonPicker;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPicker;->setVisibility(I)V
return-void
.end method