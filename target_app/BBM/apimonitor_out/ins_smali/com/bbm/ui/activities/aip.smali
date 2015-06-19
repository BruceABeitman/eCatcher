.class final Lcom/bbm/ui/activities/aip;
.super Ljava/lang/Object;
.source "ViewChannelActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/ui/activities/ail;
.method constructor <init>(Lcom/bbm/ui/activities/ail;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 6
iget-object v0, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
iget-object v0, v0, Lcom/bbm/ui/activities/ail;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_12
const/4 v0, 0x0
:goto_11
return v0
:cond_12
iget-object v0, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
iget-object v0, v0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;
if-nez v0, :cond_4d
iget-object v1, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
new-instance v2, Lcom/bbm/ui/a/a;
iget-object v0, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
iget-object v3, v0, Lcom/bbm/ui/activities/ail;->h:Lcom/bbm/j/x;
iget-object v0, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
iget-object v0, v0, Lcom/bbm/ui/activities/ail;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v4, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
invoke-direct {v2, v3, v0, v4}, Lcom/bbm/ui/a/a;-><init>(Lcom/bbm/j/x;Lcom/bbm/d/ec;Lcom/bbm/ui/activities/cn;)V
iput-object v2, v1, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;
iget-object v0, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
invoke-static {v0}, Lcom/bbm/ui/activities/ail;->a(Lcom/bbm/ui/activities/ail;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
iget-object v1, v1, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
invoke-static {v0}, Lcom/bbm/ui/activities/ail;->a(Lcom/bbm/ui/activities/ail;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
iget-object v1, v1, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;
iget-object v1, v1, Lcom/bbm/ui/a/a;->f:Landroid/widget/AdapterView$OnItemLongClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
:cond_4d
iget-object v0, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
iget-object v0, v0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;
invoke-virtual {v0}, Lcom/bbm/ui/a/a;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/aip;->a:Lcom/bbm/ui/activities/ail;
iget-object v0, v0, Lcom/bbm/ui/activities/ail;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
sget-object v1, Lcom/bbm/d/aj;->a:Lcom/bbm/d/aj;
invoke-static {v0, v1}, Lcom/bbm/d/z;->a(Ljava/lang/String;Lcom/bbm/d/aj;)Lcom/bbm/d/ai;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
const/4 v0, 0x1
goto :goto_11
.end method