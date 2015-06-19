.class final Lcom/instagram/android/fragment/cv;
.super Landroid/database/DataSetObserver;
.source "MainFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ct;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ct;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/cv;->a:Lcom/instagram/android/fragment/ct;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/cv;->a:Lcom/instagram/android/fragment/ct;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ct;->D()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v0, p0, Lcom/instagram/android/fragment/cv;->a:Lcom/instagram/android/fragment/ct;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ct;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/l;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/l;->p()I

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_17
    iget-object v2, p0, Lcom/instagram/android/fragment/cv;->a:Lcom/instagram/android/fragment/ct;

    invoke-static {v2}, Lcom/instagram/android/fragment/ct;->c(Lcom/instagram/android/fragment/ct;)Lcom/instagram/ui/e/a;

    move-result-object v2

    if-eqz v0, :cond_27

    sget v0, Lcom/instagram/ui/e/b;->d:I

    :goto_21
    invoke-virtual {v2, v1, v0}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;I)V

    :cond_24
    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_17

    :cond_27
    sget v0, Lcom/instagram/ui/e/b;->e:I

    goto :goto_21
.end method
