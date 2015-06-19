.class final Landroid/support/v4/widget/ContentLoadingProgressBar$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/support/v4/widget/ContentLoadingProgressBar;
.method constructor <init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;
invoke-static {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->b(Landroid/support/v4/widget/ContentLoadingProgressBar;)Z
iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;
invoke-static {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->c(Landroid/support/v4/widget/ContentLoadingProgressBar;)Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v0, v1, v2}, Landroid/support/v4/widget/ContentLoadingProgressBar;->a(Landroid/support/v4/widget/ContentLoadingProgressBar;J)J
iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V
:cond_1c
return-void
.end method