.class  Lcom/twidroid/ui/widgets/HorizontialListView$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/ui/widgets/HorizontialListView;
.method constructor <init>(Lcom/twidroid/ui/widgets/HorizontialListView;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/widgets/HorizontialListView$2;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$2;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->requestLayout()V
return-void
.end method