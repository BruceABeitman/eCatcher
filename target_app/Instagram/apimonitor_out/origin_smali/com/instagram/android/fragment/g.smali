.class final Lcom/instagram/android/fragment/g;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/g;->a:Lcom/instagram/android/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/android/fragment/g;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/instagram/android/fragment/g;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    iget-object v0, p0, Lcom/instagram/android/fragment/g;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/instagram/android/fragment/g;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/h;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/h;-><init>(Lcom/instagram/android/fragment/g;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2b
    return-void
.end method
