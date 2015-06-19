.class  Lco/vine/android/ConversationFragment$HeightAnimation$1;
.super Ljava/lang/Object;
.source "ConversationFragment.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$1:Lco/vine/android/ConversationFragment$HeightAnimation;
.field final synthetic val$onAnimationEnd:Ljava/lang/Runnable;
.field final synthetic val$this$0:Lco/vine/android/ConversationFragment;
.method constructor <init>(Lco/vine/android/ConversationFragment$HeightAnimation;Lco/vine/android/ConversationFragment;Ljava/lang/Runnable;)V
.registers 4
iput-object p1, p0, Lco/vine/android/ConversationFragment$HeightAnimation$1;->this$1:Lco/vine/android/ConversationFragment$HeightAnimation;
iput-object p2, p0, Lco/vine/android/ConversationFragment$HeightAnimation$1;->val$this$0:Lco/vine/android/ConversationFragment;
iput-object p3, p0, Lco/vine/android/ConversationFragment$HeightAnimation$1;->val$onAnimationEnd:Ljava/lang/Runnable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 3
iget-object v0, p0, Lco/vine/android/ConversationFragment$HeightAnimation$1;->val$onAnimationEnd:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
return-void
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method