.class final Lcom/instagram/android/fragment/i;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/i;->a:Lcom/instagram/android/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/android/fragment/i;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/instagram/android/fragment/i;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/i;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/instagram/android/feed/a/a;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_18
    return-void
.end method
