.class final Lcom/instagram/android/e/e;
.super Ljava/lang/Object;
.source "RegionPickDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/instagram/android/e/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/e/d;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/e/e;->b:Lcom/instagram/android/e/d;

    iput-object p2, p0, Lcom/instagram/android/e/e;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/e/c;

    iget-object v1, p0, Lcom/instagram/android/e/e;->b:Lcom/instagram/android/e/d;

    invoke-virtual {v1}, Lcom/instagram/android/e/d;->k()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/e/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/android/e/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/instagram/android/e/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/instagram/o/b;->aa:Lcom/instagram/o/b;

    invoke-virtual {v1}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "selected_country"

    invoke-virtual {v0}, Lcom/instagram/android/e/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "search_term"

    iget-object v2, p0, Lcom/instagram/android/e/e;->b:Lcom/instagram/android/e/d;

    invoke-static {v2}, Lcom/instagram/android/e/d;->a(Lcom/instagram/android/e/d;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    iget-object v0, p0, Lcom/instagram/android/e/e;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
