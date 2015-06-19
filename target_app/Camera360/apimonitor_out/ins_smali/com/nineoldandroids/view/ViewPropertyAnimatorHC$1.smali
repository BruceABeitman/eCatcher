.class  Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorHC.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;
.method constructor <init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)V
.registers 2
iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$1;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$1;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;
#calls: Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->startAnimation()V
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->access$0(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)V
return-void
.end method