.class  Landroid/support/v7/internal/widget/ad;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/support/v7/internal/widget/ProgressBarICS;
.field private b:I
.field private c:I
.field private d:Z
.method constructor <init>(Landroid/support/v7/internal/widget/ProgressBarICS;IIZ)V
.registers 5
iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Landroid/support/v7/internal/widget/ad;->b:I
iput p3, p0, Landroid/support/v7/internal/widget/ad;->c:I
iput-boolean p4, p0, Landroid/support/v7/internal/widget/ad;->d:Z
return-void
.end method
.method public a(IIZ)V
.registers 4
iput p1, p0, Landroid/support/v7/internal/widget/ad;->b:I
iput p2, p0, Landroid/support/v7/internal/widget/ad;->c:I
iput-boolean p3, p0, Landroid/support/v7/internal/widget/ad;->d:Z
return-void
.end method
.method public run()V
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/internal/widget/ProgressBarICS;
iget v1, p0, Landroid/support/v7/internal/widget/ad;->b:I
iget v2, p0, Landroid/support/v7/internal/widget/ad;->c:I
iget-boolean v3, p0, Landroid/support/v7/internal/widget/ad;->d:Z
const/4 v4, 0x1
invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/support/v7/internal/widget/ProgressBarICS;IIZZ)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-static {v0, p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ad;)Landroid/support/v7/internal/widget/ad;
return-void
.end method