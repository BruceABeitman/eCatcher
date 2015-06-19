.class public abstract Lcom/bbm/ui/ee;
.super Lcom/bbm/ui/dy;
.source "ObservableListAdapter.java"
.implements Landroid/widget/ListAdapter;
.implements Lcom/bbm/j/h;
.field private final b:Lcom/bbm/j/j;
.method public constructor <init>(Lcom/bbm/j/j;)V
.registers 3
invoke-direct {p0}, Lcom/bbm/ui/dy;-><init>()V
iput-object p1, p0, Lcom/bbm/ui/ee;->b:Lcom/bbm/j/j;
iget-object v0, p0, Lcom/bbm/ui/ee;->b:Lcom/bbm/j/j;
invoke-interface {v0, p0}, Lcom/bbm/j/j;->a(Lcom/bbm/j/h;)V
return-void
.end method
.method public final a()V
.registers 1
invoke-virtual {p0}, Lcom/bbm/ui/ee;->notifyDataSetChanged()V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ee;->b:Lcom/bbm/j/j;
invoke-interface {v0}, Lcom/bbm/j/j;->d()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/ee;->b:Lcom/bbm/j/j;
invoke-interface {v0, p1}, Lcom/bbm/j/j;->a(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x0
return v0
.end method