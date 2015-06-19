.class final Lcom/tonicartos/widget/stickygridheaders/p;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersListAdapterWrapper.java"
.field final synthetic a:Lcom/tonicartos/widget/stickygridheaders/o;
.method constructor <init>(Lcom/tonicartos/widget/stickygridheaders/o;)V
.registers 2
iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/p;->a:Lcom/tonicartos/widget/stickygridheaders/o;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public final onChanged()V
.registers 2
iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/p;->a:Lcom/tonicartos/widget/stickygridheaders/o;
invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/o;->notifyDataSetChanged()V
return-void
.end method
.method public final onInvalidated()V
.registers 2
iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/p;->a:Lcom/tonicartos/widget/stickygridheaders/o;
invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/o;->notifyDataSetInvalidated()V
return-void
.end method