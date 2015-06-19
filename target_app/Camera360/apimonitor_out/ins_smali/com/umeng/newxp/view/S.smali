.class  Lcom/umeng/newxp/view/S;
.super Ljava/lang/Object;
.source "FImageView.java"
.implements Lcom/umeng/common/net/p$a;
.field final synthetic a:Lcom/umeng/newxp/view/Q;
.field private final synthetic b:Landroid/widget/ImageView;
.method constructor <init>(Lcom/umeng/newxp/view/Q;Landroid/widget/ImageView;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/view/S;->a:Lcom/umeng/newxp/view/Q;
iput-object p2, p0, Lcom/umeng/newxp/view/S;->b:Landroid/widget/ImageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/umeng/common/net/o$a;)V
.registers 5
sget-object v0, Lcom/umeng/common/net/o$a;->a:Lcom/umeng/common/net/o$a;
if-ne p1, v0, :cond_30
iget-object v0, p0, Lcom/umeng/newxp/view/S;->a:Lcom/umeng/newxp/view/Q;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/umeng/newxp/view/Q;->a(Lcom/umeng/newxp/view/Q;Z)V
iget-object v0, p0, Lcom/umeng/newxp/view/S;->a:Lcom/umeng/newxp/view/Q;
iget-object v1, p0, Lcom/umeng/newxp/view/S;->b:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/newxp/view/Q;->a(Lcom/umeng/newxp/view/Q;Landroid/graphics/drawable/Drawable;)V
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "FImageView readyflag="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/umeng/newxp/view/S;->a:Lcom/umeng/newxp/view/Q;
invoke-static {v2}, Lcom/umeng/newxp/view/Q;->c(Lcom/umeng/newxp/view/Q;)Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_30
iget-object v0, p0, Lcom/umeng/newxp/view/S;->a:Lcom/umeng/newxp/view/Q;
invoke-static {v0}, Lcom/umeng/newxp/view/Q;->b(Lcom/umeng/newxp/view/Q;)Lcom/umeng/common/net/p$a;
move-result-object v0
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/umeng/newxp/view/S;->a:Lcom/umeng/newxp/view/Q;
invoke-static {v0}, Lcom/umeng/newxp/view/Q;->b(Lcom/umeng/newxp/view/Q;)Lcom/umeng/common/net/p$a;
move-result-object v0
invoke-interface {v0, p1}, Lcom/umeng/common/net/p$a;->a(Lcom/umeng/common/net/o$a;)V
:cond_41
return-void
.end method
.method public a(Lcom/umeng/common/net/p$b;)V
.registers 3
iget-object v0, p0, Lcom/umeng/newxp/view/S;->a:Lcom/umeng/newxp/view/Q;
invoke-static {v0}, Lcom/umeng/newxp/view/Q;->b(Lcom/umeng/newxp/view/Q;)Lcom/umeng/common/net/p$a;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/umeng/newxp/view/S;->a:Lcom/umeng/newxp/view/Q;
invoke-static {v0}, Lcom/umeng/newxp/view/Q;->b(Lcom/umeng/newxp/view/Q;)Lcom/umeng/common/net/p$a;
move-result-object v0
invoke-interface {v0, p1}, Lcom/umeng/common/net/p$a;->a(Lcom/umeng/common/net/p$b;)V
:cond_11
return-void
.end method