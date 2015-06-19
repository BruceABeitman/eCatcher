.class  Lcom/pinguo/album/views/FullImageView$1;
.super Ljava/lang/Object;
.source "FullImageView.java"
.implements Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
.field final synthetic this$0:Lcom/pinguo/album/views/FullImageView;
.method constructor <init>(Lcom/pinguo/album/views/FullImageView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/FullImageView$1;->this$0:Lcom/pinguo/album/views/FullImageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public invalidate()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$1;->this$0:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v0}, Lcom/pinguo/album/views/FullImageView;->invalidate()V
return-void
.end method
.method public isHoldingDelete()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$1;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$11(Lcom/pinguo/album/views/FullImageView;)I
move-result v0
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isHoldingDown()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$1;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$11(Lcom/pinguo/album/views/FullImageView;)I
move-result v0
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public onAbsorb(II)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$1;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mEdgeView:Lcom/pinguo/album/views/EdgeView;
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$39(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/EdgeView;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/pinguo/album/views/EdgeView;->onAbsorb(II)V
return-void
.end method
.method public onPull(II)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$1;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mEdgeView:Lcom/pinguo/album/views/EdgeView;
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$39(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/EdgeView;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/pinguo/album/views/EdgeView;->onPull(II)V
return-void
.end method
.method public onRelease()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$1;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mEdgeView:Lcom/pinguo/album/views/EdgeView;
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$39(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/EdgeView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/EdgeView;->onRelease()V
return-void
.end method