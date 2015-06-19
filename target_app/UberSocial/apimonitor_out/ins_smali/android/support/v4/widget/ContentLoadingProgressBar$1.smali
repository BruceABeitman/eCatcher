.class  Landroid/support/v4/widget/ContentLoadingProgressBar$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;
.method constructor <init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$1;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$1;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;
const/4 v1, 0x0
#setter for: Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z
invoke-static {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->access$002(Landroid/support/v4/widget/ContentLoadingProgressBar;Z)Z
iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$1;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;
const-wide/16 v1, -0x1
#setter for: Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J
invoke-static {v0, v1, v2}, Landroid/support/v4/widget/ContentLoadingProgressBar;->access$102(Landroid/support/v4/widget/ContentLoadingProgressBar;J)J
iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$1;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V
return-void
.end method