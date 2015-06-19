.class final Lcom/bbm/ui/c/d;
.super Ljava/lang/Object;
.source "BlockedContactsFragment.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Lcom/bbm/ui/c/a;
.method constructor <init>(Lcom/bbm/ui/c/a;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/d;->b:Lcom/bbm/ui/c/a;
iput-object p2, p0, Lcom/bbm/ui/c/d;->a:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/c/d;->b:Lcom/bbm/ui/c/a;
invoke-virtual {v0}, Lcom/bbm/ui/c/a;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/BlockedContactsActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/c/d;->a:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/slidingmenu/a;
iget v0, v0, Lcom/bbm/ui/slidingmenu/a;->a:I
packed-switch v0, :pswitch_data_2a
:goto_1d
return-void
:pswitch_1e
iget-object v0, p0, Lcom/bbm/ui/c/d;->b:Lcom/bbm/ui/c/a;
iget-object v0, v0, Lcom/bbm/ui/c/a;->c:Lcom/bbm/ui/dn;
iget-object v1, p0, Lcom/bbm/ui/c/d;->b:Lcom/bbm/ui/c/a;
iget-object v1, v1, Lcom/bbm/ui/c/a;->b:Landroid/widget/ListView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/dn;->a(Landroid/widget/AbsListView;)V
goto :goto_1d
:pswitch_data_2a
.packed-switch 0x7f0a0057
:pswitch_1e
.end packed-switch
.end method