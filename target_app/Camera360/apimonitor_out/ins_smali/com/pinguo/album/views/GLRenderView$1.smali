.class  Lcom/pinguo/album/views/GLRenderView$1;
.super Ljava/lang/Object;
.source "GLRenderView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/album/views/GLRenderView;
.method constructor <init>(Lcom/pinguo/album/views/GLRenderView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/GLRenderView$1;->this$0:Lcom/pinguo/album/views/GLRenderView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/GLRenderView$1;->this$0:Lcom/pinguo/album/views/GLRenderView;
#calls: Lcom/pinguo/album/views/GLRenderView;->superRequestRender()V
invoke-static {v0}, Lcom/pinguo/album/views/GLRenderView;->access$0(Lcom/pinguo/album/views/GLRenderView;)V
return-void
.end method