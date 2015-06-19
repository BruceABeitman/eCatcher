.class final Lcom/bbm/ui/activities/nn;
.super Lcom/bbm/ui/cj;
.source "GroupEventsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupEventsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupEventsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/nn;->a:Lcom/bbm/ui/activities/GroupEventsActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/nn;->a:Lcom/bbm/ui/activities/GroupEventsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->h()V
return-void
.end method
.method public final a(I)V
.registers 4
packed-switch p1, :pswitch_data_12
:goto_3
return-void
:pswitch_4
const-string v0, "footer addevent onAction"
const-class v1, Lcom/bbm/ui/activities/GroupEventsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/nn;->a:Lcom/bbm/ui/activities/GroupEventsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->a(Lcom/bbm/ui/activities/GroupEventsActivity;)V
goto :goto_3
nop
:pswitch_data_12
.packed-switch 0x0
:pswitch_4
.end packed-switch
.end method