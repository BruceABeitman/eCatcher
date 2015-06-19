.class final Lcom/bbm/ui/c/bq;
.super Lcom/bbm/j/a;
.source "ContactsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/bm;
.method constructor <init>(Lcom/bbm/ui/c/bm;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/bq;->a:Lcom/bbm/ui/c/bm;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/bq;->a:Lcom/bbm/ui/c/bm;
invoke-virtual {v0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
if-eqz v0, :cond_1e
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->a:Lcom/slidingmenu/lib/CustomViewAbove;
iget-object v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->a:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_24
:cond_1e
const/4 v0, 0x1
:goto_1f
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
:cond_24
const/4 v0, 0x0
goto :goto_1f
.end method