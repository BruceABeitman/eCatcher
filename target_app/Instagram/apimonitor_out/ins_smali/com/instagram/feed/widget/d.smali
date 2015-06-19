.class final Lcom/instagram/feed/widget/d;
.super Ljava/lang/Object;
.source "IgProgressImageView.java"
.implements Lcom/instagram/common/ui/widget/imageview/f;
.field final synthetic a:Lcom/instagram/feed/widget/a;
.method constructor <init>(Lcom/instagram/feed/widget/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/feed/widget/d;->a:Lcom/instagram/feed/widget/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;)V
.registers 5
if-eqz p1, :cond_2f
iget-object v0, p0, Lcom/instagram/feed/widget/d;->a:Lcom/instagram/feed/widget/a;
invoke-static {v0}, Lcom/instagram/feed/widget/a;->d(Lcom/instagram/feed/widget/a;)Lcom/instagram/ui/e/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/feed/widget/d;->a:Lcom/instagram/feed/widget/a;
sget v2, Lcom/instagram/ui/e/b;->e:I
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;I)V
iget-object v0, p0, Lcom/instagram/feed/widget/d;->a:Lcom/instagram/feed/widget/a;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->setDisplayedChild(I)V
:goto_15
iget-object v0, p0, Lcom/instagram/feed/widget/d;->a:Lcom/instagram/feed/widget/a;
invoke-static {v0}, Lcom/instagram/feed/widget/a;->e(Lcom/instagram/feed/widget/a;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_43
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/widget/e;
invoke-interface {v0, p1}, Lcom/instagram/feed/widget/e;->a(Landroid/graphics/Bitmap;)V
goto :goto_1f
:cond_2f
iget-object v0, p0, Lcom/instagram/feed/widget/d;->a:Lcom/instagram/feed/widget/a;
invoke-static {v0}, Lcom/instagram/feed/widget/a;->d(Lcom/instagram/feed/widget/a;)Lcom/instagram/ui/e/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/feed/widget/d;->a:Lcom/instagram/feed/widget/a;
sget v2, Lcom/instagram/ui/e/b;->d:I
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;I)V
iget-object v0, p0, Lcom/instagram/feed/widget/d;->a:Lcom/instagram/feed/widget/a;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->setDisplayedChild(I)V
goto :goto_15
:cond_43
return-void
.end method