.class  Lcom/umeng/newxp/view/u;
.super Ljava/lang/Object;
.source "EmbededContainer.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/umeng/newxp/view/t;
.field private final synthetic b:I
.method constructor <init>(Lcom/umeng/newxp/view/t;I)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/view/u;->a:Lcom/umeng/newxp/view/t;
iput p2, p0, Lcom/umeng/newxp/view/u;->b:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/umeng/newxp/view/u;->a:Lcom/umeng/newxp/view/t;
invoke-static {v0}, Lcom/umeng/newxp/view/t;->a(Lcom/umeng/newxp/view/t;)Lcom/umeng/newxp/view/EmbededContainer$a;
move-result-object v0
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;
move-result-object v0
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v0
if-nez v0, :cond_5d
iget v0, p0, Lcom/umeng/newxp/view/u;->b:I
iget-object v1, p0, Lcom/umeng/newxp/view/u;->a:Lcom/umeng/newxp/view/t;
invoke-static {v1}, Lcom/umeng/newxp/view/t;->a(Lcom/umeng/newxp/view/t;)Lcom/umeng/newxp/view/EmbededContainer$a;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->f(Lcom/umeng/newxp/view/EmbededContainer;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-gt v0, v1, :cond_5d
iget-object v0, p0, Lcom/umeng/newxp/view/u;->a:Lcom/umeng/newxp/view/t;
invoke-static {v0}, Lcom/umeng/newxp/view/t;->a(Lcom/umeng/newxp/view/t;)Lcom/umeng/newxp/view/EmbededContainer$a;
move-result-object v0
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/umeng/newxp/view/u;->a:Lcom/umeng/newxp/view/t;
invoke-static {v0}, Lcom/umeng/newxp/view/t;->a(Lcom/umeng/newxp/view/t;)Lcom/umeng/newxp/view/EmbededContainer$a;
move-result-object v0
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/u;->a:Lcom/umeng/newxp/view/t;
invoke-static {v0}, Lcom/umeng/newxp/view/t;->a(Lcom/umeng/newxp/view/t;)Lcom/umeng/newxp/view/EmbededContainer$a;
move-result-object v0
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->b(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/u;->a:Lcom/umeng/newxp/view/t;
invoke-static {v1}, Lcom/umeng/newxp/view/t;->a(Lcom/umeng/newxp/view/t;)Lcom/umeng/newxp/view/EmbededContainer$a;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->e(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/text/SpannableString;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_5d
return-void
.end method