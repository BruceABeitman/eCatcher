.class  Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "PGEditRotateView.java"
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditRotateView;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V
return-void
.end method
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
const/4 v1, 0x1
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z
invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditRotateView;Z)V
return-void
.end method