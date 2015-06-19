.class  Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBarICS.java"
.implements Ljava/lang/Runnable;
.field private mFromUser:Z
.field private mId:I
.field private mProgress:I
.field final synthetic this$0:Landroid/support/v7/internal/widget/ProgressBarICS;
.method constructor <init>(Landroid/support/v7/internal/widget/ProgressBarICS;IIZ)V
.registers 5
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->this$0:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->mId:I
iput p3, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->mProgress:I
iput-boolean p4, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->mFromUser:Z
return-void
.end method
.method public run()V
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->this$0:Landroid/support/v7/internal/widget/ProgressBarICS;
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->mId:I
iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->mProgress:I
iget-boolean v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->mFromUser:Z
const/4 v4, 0x1
#calls: Landroid/support/v7/internal/widget/ProgressBarICS;->doRefreshProgress(IIZZ)V
invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->access$000(Landroid/support/v7/internal/widget/ProgressBarICS;IIZZ)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->this$0:Landroid/support/v7/internal/widget/ProgressBarICS;
#setter for: Landroid/support/v7/internal/widget/ProgressBarICS;->mRefreshProgressRunnable:Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
invoke-static {v0, p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->access$102(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;)Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;
return-void
.end method
.method public setup(IIZ)V
.registers 4
iput p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->mId:I
iput p2, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->mProgress:I
iput-boolean p3, p0, Landroid/support/v7/internal/widget/ProgressBarICS$RefreshProgressRunnable;->mFromUser:Z
return-void
.end method