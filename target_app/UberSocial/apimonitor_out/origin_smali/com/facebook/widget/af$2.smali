.class Lcom/facebook/widget/af$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/af;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/af;


# direct methods
.method constructor <init>(Lcom/facebook/widget/af;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/af$2;->a:Lcom/facebook/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/widget/af$2;->a:Lcom/facebook/widget/af;

    check-cast p1, Landroid/widget/ListView;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/widget/af;->a(Lcom/facebook/widget/af;Landroid/widget/ListView;Landroid/view/View;I)V

    return-void
.end method
