.class final Lcom/bbm/ui/activities/ob;
.super Ljava/lang/Object;
.source "GroupListItemsActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/g/y;
.field final synthetic b:Lcom/bbm/ui/activities/GroupListItemsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListItemsActivity;Lcom/bbm/g/y;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ob;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/ob;->a:Lcom/bbm/g/y;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 7
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
sparse-switch v0, :sswitch_data_6a
:goto_5
iget-object v0, p0, Lcom/bbm/ui/activities/ob;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
return-void
:sswitch_10
iget-object v0, p0, Lcom/bbm/ui/activities/ob;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/ob;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/ob;->a:Lcom/bbm/g/y;
iget-object v2, v2, Lcom/bbm/g/y;->k:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;
move-result-object v1
sget-object v2, Lcom/bbm/g/by;->b:Lcom/bbm/g/by;
invoke-virtual {v1, v2}, Lcom/bbm/g/bw;->a(Lcom/bbm/g/by;)Lcom/bbm/g/bw;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
goto :goto_5
:sswitch_2c
iget-object v0, p0, Lcom/bbm/ui/activities/ob;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/ob;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/ob;->a:Lcom/bbm/g/y;
iget-object v2, v2, Lcom/bbm/g/y;->k:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;
move-result-object v1
sget-object v2, Lcom/bbm/g/by;->a:Lcom/bbm/g/by;
invoke-virtual {v1, v2}, Lcom/bbm/g/bw;->a(Lcom/bbm/g/by;)Lcom/bbm/g/bw;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
goto :goto_5
:sswitch_48
iget-object v0, p0, Lcom/bbm/ui/activities/ob;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/ob;->a:Lcom/bbm/g/y;
iget-object v1, v1, Lcom/bbm/g/y;->k:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->a(Lcom/bbm/ui/activities/GroupListItemsActivity;Ljava/lang/String;)V
goto :goto_5
:sswitch_52
iget-object v0, p0, Lcom/bbm/ui/activities/ob;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/ob;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/ob;->a:Lcom/bbm/g/y;
iget-object v2, v2, Lcom/bbm/g/y;->k:Ljava/lang/String;
new-instance v3, Lcom/bbm/g/bz;
invoke-direct {v3, v1, v2}, Lcom/bbm/g/bz;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v3}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
goto :goto_5
nop
:sswitch_data_6a
.sparse-switch
0x7f0a008b -> :sswitch_48
0x7f0a008f -> :sswitch_10
0x7f0a0090 -> :sswitch_2c
0x7f0a0095 -> :sswitch_52
.end sparse-switch
.end method