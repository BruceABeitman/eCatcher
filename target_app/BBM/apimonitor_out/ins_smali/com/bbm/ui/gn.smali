.class final Lcom/bbm/ui/gn;
.super Lcom/bbm/ui/dy;
.source "StickyHeaderHelper.java"
.field final synthetic b:Lcom/bbm/ui/gk;
.method constructor <init>(Lcom/bbm/ui/gk;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/gn;->b:Lcom/bbm/ui/gk;
invoke-direct {p0}, Lcom/bbm/ui/dy;-><init>()V
return-void
.end method
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
iget-object v0, p0, Lcom/bbm/ui/gn;->b:Lcom/bbm/ui/gk;
invoke-virtual {p0, p1}, Lcom/bbm/ui/gn;->getItemViewType(I)I
move-result v1
invoke-virtual {v0, p3, v1}, Lcom/bbm/ui/gk;->a(Landroid/view/ViewGroup;I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method protected final a(Landroid/view/View;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/gn;->b:Lcom/bbm/ui/gk;
invoke-virtual {v0, p1, p2}, Lcom/bbm/ui/gk;->b(Landroid/view/View;Ljava/lang/Object;)V
return-void
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/gn;->b:Lcom/bbm/ui/gk;
iget-object v0, v0, Lcom/bbm/ui/gk;->c:[Ljava/lang/Object;
array-length v0, v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/gn;->b:Lcom/bbm/ui/gk;
iget-object v0, v0, Lcom/bbm/ui/gk;->c:[Ljava/lang/Object;
aget-object v0, v0, p1
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
iget-object v0, p0, Lcom/bbm/ui/gn;->b:Lcom/bbm/ui/gk;
iget-object v0, v0, Lcom/bbm/ui/gk;->b:Lcom/bbm/ui/gb;
iget-object v0, v0, Lcom/bbm/ui/gb;->a:[J
aget-wide v0, v0, p1
return-wide v0
.end method
.method public final getItemViewType(I)I
.registers 3
iget-object v0, p0, Lcom/bbm/ui/gn;->b:Lcom/bbm/ui/gk;
invoke-virtual {v0, p1}, Lcom/bbm/ui/gk;->getItemViewType(I)I
move-result v0
return v0
.end method
.method public final getViewTypeCount()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/gn;->b:Lcom/bbm/ui/gk;
invoke-virtual {v0}, Lcom/bbm/ui/gk;->getViewTypeCount()I
move-result v0
return v0
.end method
.method public final hasStableIds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method