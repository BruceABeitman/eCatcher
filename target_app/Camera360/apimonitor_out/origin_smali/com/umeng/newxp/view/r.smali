.class Lcom/umeng/newxp/view/R;
.super Ljava/lang/Object;
.source "FImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/Q;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/Q;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/Q;

    iget-object v0, v0, Lcom/umeng/newxp/view/Q;->a:Lcom/umeng/newxp/Promoter;

    iget-object v1, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/Q;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/Q;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/Q;

    invoke-static {v2}, Lcom/umeng/newxp/view/Q;->a(Lcom/umeng/newxp/view/Q;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/Q;

    invoke-static {v3}, Lcom/umeng/newxp/view/Q;->a(Lcom/umeng/newxp/view/Q;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    iget v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/Promoter;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZ)V

    return-void
.end method
