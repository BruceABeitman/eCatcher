.class Lcom/umeng/newxp/view/aF;
.super Ljava/lang/Object;
.source "PartnersBanner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aD;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aD;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/aF;->a:Lcom/umeng/newxp/view/aD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/controller/a$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->a:Lcom/umeng/newxp/view/aD;

    invoke-static {v1, v0, p2}, Lcom/umeng/newxp/view/aD;->a(Lcom/umeng/newxp/view/aD;Lcom/umeng/newxp/controller/a$a;Landroid/view/View;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method
