.class  Lcom/twidroid/fragments/base/e$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/fragments/base/e;
.method constructor <init>(Lcom/twidroid/fragments/base/e;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/base/e$6;->a:Lcom/twidroid/fragments/base/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/base/e$6;->a:Lcom/twidroid/fragments/base/e;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/e;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
return-void
.end method