.class  Lcom/twidroid/activity/UberBarMaintenance$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/ui/widgets/f;
.field final synthetic a:Lcom/twidroid/activity/UberBarMaintenance;
.method constructor <init>(Lcom/twidroid/activity/UberBarMaintenance;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberBarMaintenance$1;->a:Lcom/twidroid/activity/UberBarMaintenance;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(II)V
.registers 6
const-string v0, "UberBarConfiguration"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "drop from "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/UberBarMaintenance$1;->a:Lcom/twidroid/activity/UberBarMaintenance;
invoke-static {v0}, Lcom/twidroid/activity/UberBarMaintenance;->a(Lcom/twidroid/activity/UberBarMaintenance;)Lcom/twidroid/ui/c/g;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/twidroid/ui/c/g;->a(I)Lcom/twidroid/ui/c/h;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/UberBarMaintenance$1;->a:Lcom/twidroid/activity/UberBarMaintenance;
invoke-static {v1}, Lcom/twidroid/activity/UberBarMaintenance;->a(Lcom/twidroid/activity/UberBarMaintenance;)Lcom/twidroid/ui/c/g;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/g;->c(Lcom/twidroid/ui/c/h;)V
iget-object v1, p0, Lcom/twidroid/activity/UberBarMaintenance$1;->a:Lcom/twidroid/activity/UberBarMaintenance;
invoke-static {v1}, Lcom/twidroid/activity/UberBarMaintenance;->a(Lcom/twidroid/activity/UberBarMaintenance;)Lcom/twidroid/ui/c/g;
move-result-object v1
invoke-virtual {v1, p2, v0}, Lcom/twidroid/ui/c/g;->a(ILcom/twidroid/ui/c/h;)V
iget-object v0, p0, Lcom/twidroid/activity/UberBarMaintenance$1;->a:Lcom/twidroid/activity/UberBarMaintenance;
invoke-static {v0}, Lcom/twidroid/activity/UberBarMaintenance;->b(Lcom/twidroid/activity/UberBarMaintenance;)Lcom/twidroid/ui/widgets/DragableList;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/DragableList;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Landroid/widget/BaseAdapter;
invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
return-void
.end method