.class final Lcom/bbm/ui/activities/nj;
.super Lcom/bbm/ui/cj;
.source "GroupEventDetailsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/nj;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/nj;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->d(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)Lcom/bbm/j/u;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
return-void
.end method
.method public final a(I)V
.registers 4
packed-switch p1, :pswitch_data_12
:goto_3
return-void
:pswitch_4
const-string v0, "footer delete item"
const-class v1, Lcom/bbm/ui/activities/GroupEventDetailsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/nj;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->f(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V
goto :goto_3
nop
:pswitch_data_12
.packed-switch 0x0
:pswitch_4
.end packed-switch
.end method