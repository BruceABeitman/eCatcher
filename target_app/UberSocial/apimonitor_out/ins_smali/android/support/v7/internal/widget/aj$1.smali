.class  Landroid/support/v7/internal/widget/aj$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v7/internal/widget/q;
.field final synthetic a:Landroid/support/v7/internal/widget/ag;
.field final synthetic b:Landroid/support/v7/internal/widget/aj;
.method constructor <init>(Landroid/support/v7/internal/widget/aj;Landroid/support/v7/internal/widget/ag;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;
iput-object p2, p0, Landroid/support/v7/internal/widget/aj$1;->a:Landroid/support/v7/internal/widget/ag;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/support/v7/internal/widget/n;Landroid/view/View;IJ)V
.registers 9
iget-object v0, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;
iget-object v0, v0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;
invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/ag;->a(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;
iget-object v0, v0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;
iget-object v0, v0, Landroid/support/v7/internal/widget/ag;->y:Landroid/support/v7/internal/widget/q;
if-eqz v0, :cond_20
iget-object v0, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;
iget-object v0, v0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;
iget-object v1, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;
invoke-static {v1}, Landroid/support/v7/internal/widget/aj;->a(Landroid/support/v7/internal/widget/aj;)Landroid/widget/ListAdapter;
move-result-object v1
invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v1
invoke-virtual {v0, p2, p3, v1, v2}, Landroid/support/v7/internal/widget/ag;->a(Landroid/view/View;IJ)Z
:cond_20
iget-object v0, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->n()V
return-void
.end method