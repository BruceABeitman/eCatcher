.class  Lcom/pinguo/share/ui/ShareHorizontalListView$3;
.super Ljava/lang/Object;
.source "ShareHorizontalListView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;
.method constructor <init>(Lcom/pinguo/share/ui/ShareHorizontalListView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$3;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$3;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;
invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareHorizontalListView;->requestLayout()V
return-void
.end method