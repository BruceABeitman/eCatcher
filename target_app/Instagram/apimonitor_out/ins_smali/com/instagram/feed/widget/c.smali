.class final Lcom/instagram/feed/widget/c;
.super Ljava/lang/Object;
.source "IgProgressImageView.java"
.implements Lcom/instagram/common/ui/widget/imageview/g;
.field final synthetic a:Lcom/instagram/feed/widget/a;
.method constructor <init>(Lcom/instagram/feed/widget/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/feed/widget/c;->a:Lcom/instagram/feed/widget/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 4
const/4 v1, 0x1
iget-object v0, p0, Lcom/instagram/feed/widget/c;->a:Lcom/instagram/feed/widget/a;
invoke-virtual {v0}, Lcom/instagram/feed/widget/a;->getDisplayedChild()I
move-result v0
if-eq v0, v1, :cond_e
iget-object v0, p0, Lcom/instagram/feed/widget/c;->a:Lcom/instagram/feed/widget/a;
invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->setDisplayedChild(I)V
:cond_e
iget-object v0, p0, Lcom/instagram/feed/widget/c;->a:Lcom/instagram/feed/widget/a;
invoke-static {v0}, Lcom/instagram/feed/widget/a;->c(Lcom/instagram/feed/widget/a;)Landroid/widget/ProgressBar;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
return-void
.end method