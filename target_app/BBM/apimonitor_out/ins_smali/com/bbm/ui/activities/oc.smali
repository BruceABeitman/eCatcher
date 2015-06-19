.class final Lcom/bbm/ui/activities/oc;
.super Ljava/lang/Object;
.source "GroupListItemsActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/GroupListItemsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/oc;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/oc;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
sparse-switch v0, :sswitch_data_1c
:goto_f
return-void
:sswitch_10
iget-object v0, p0, Lcom/bbm/ui/activities/oc;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->f(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
goto :goto_f
:sswitch_16
iget-object v0, p0, Lcom/bbm/ui/activities/oc;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->c(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
goto :goto_f
:sswitch_data_1c
.sparse-switch
0x7f0a0085 -> :sswitch_16
0x7f0a009c -> :sswitch_10
.end sparse-switch
.end method