.class  Lcom/umeng/newxp/view/O;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"
.implements Lcom/umeng/newxp/common/g$a;
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;
.field private final synthetic b:Landroid/view/View$OnClickListener;
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;Landroid/view/View$OnClickListener;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iput-object p2, p0, Lcom/umeng/newxp/view/O;->b:Landroid/view/View$OnClickListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(I)V
.registers 2
return-void
.end method
.method public a(Landroid/widget/ImageView;)V
.registers 2
return-void
.end method
.method public a(Ljava/util/List;)V
.registers 4
iget-object v0, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->e(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/O;->b:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method