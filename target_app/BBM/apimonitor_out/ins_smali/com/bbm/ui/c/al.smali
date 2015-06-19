.class final Lcom/bbm/ui/c/al;
.super Ljava/lang/Object;
.source "ChannelPostPreviewFragment.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/bbm/ui/c/aj;
.method constructor <init>(Lcom/bbm/ui/c/aj;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
iput-object p2, p0, Lcom/bbm/ui/c/al;->a:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 7
const/4 v1, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
invoke-static {v2}, Lcom/bbm/ui/c/aj;->c(Lcom/bbm/ui/c/aj;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v2
iget-object v0, v2, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v3, :cond_17
move v0, v1
:goto_16
return v0
:cond_17
iget-object v3, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
new-instance v4, Lcom/bbm/ui/a/a;
iget-object v0, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
invoke-static {v0}, Lcom/bbm/ui/c/aj;->a(Lcom/bbm/ui/c/aj;)Lcom/bbm/j/x;
move-result-object v5
iget-object v0, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
invoke-virtual {v0}, Lcom/bbm/ui/c/aj;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/cn;
invoke-direct {v4, v5, v2, v0}, Lcom/bbm/ui/a/a;-><init>(Lcom/bbm/j/x;Lcom/bbm/d/ec;Lcom/bbm/ui/activities/cn;)V
invoke-static {v3, v4}, Lcom/bbm/ui/c/aj;->a(Lcom/bbm/ui/c/aj;Lcom/bbm/ui/a/a;)Lcom/bbm/ui/a/a;
iget-object v0, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
invoke-static {v0}, Lcom/bbm/ui/c/aj;->d(Lcom/bbm/ui/c/aj;)Lcom/bbm/ui/a/a;
move-result-object v0
iput-boolean v1, v0, Lcom/bbm/ui/ga;->c:Z
iget-object v0, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
invoke-virtual {v0}, Lcom/bbm/ui/c/aj;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/PreviewChannelActivity;
iget-object v1, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
invoke-static {v1}, Lcom/bbm/ui/c/aj;->d(Lcom/bbm/ui/c/aj;)Lcom/bbm/ui/a/a;
move-result-object v1
iput-object v1, v0, Lcom/bbm/ui/activities/PreviewChannelActivity;->a:Lcom/bbm/util/ba;
iget-object v0, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
new-instance v1, Lcom/bbm/ui/ct;
iget-object v2, p0, Lcom/bbm/ui/c/al;->a:Landroid/content/Context;
iget-object v3, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
invoke-static {v3}, Lcom/bbm/ui/c/aj;->d(Lcom/bbm/ui/c/aj;)Lcom/bbm/ui/a/a;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/bbm/ui/ct;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
invoke-static {v0, v1}, Lcom/bbm/ui/c/aj;->a(Lcom/bbm/ui/c/aj;Lcom/bbm/ui/ct;)Lcom/bbm/ui/ct;
iget-object v0, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
invoke-static {v0}, Lcom/bbm/ui/c/aj;->e(Lcom/bbm/ui/c/aj;)Lcom/bbm/ui/ct;
move-result-object v0
const/4 v1, 0x3
iput v1, v0, Lcom/bbm/ui/ct;->h:I
iget-object v0, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
invoke-static {v0}, Lcom/bbm/ui/c/aj;->b(Lcom/bbm/ui/c/aj;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0374
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
invoke-static {v1}, Lcom/bbm/ui/c/aj;->e(Lcom/bbm/ui/c/aj;)Lcom/bbm/ui/ct;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v1, p0, Lcom/bbm/ui/c/al;->b:Lcom/bbm/ui/c/aj;
invoke-static {v1}, Lcom/bbm/ui/c/aj;->d(Lcom/bbm/ui/c/aj;)Lcom/bbm/ui/a/a;
move-result-object v1
iget-object v1, v1, Lcom/bbm/ui/a/a;->f:Landroid/widget/AdapterView$OnItemLongClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
const/4 v0, 0x1
goto :goto_16
.end method