.class  Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorPreHC.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
.method constructor <init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)V
.registers 2
iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$1;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$1;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#calls: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->startAnimation()V
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$0(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)V
return-void
.end method