.class final Lcom/instagram/android/fragment/eh;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ee;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ee;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/eh;->a:Lcom/instagram/android/fragment/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/eh;->a:Lcom/instagram/android/fragment/ee;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ee;->b()I

    move-result v0

    sget v1, Lcom/instagram/android/fragment/ei;->b:I

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/instagram/android/fragment/eh;->a:Lcom/instagram/android/fragment/ee;

    invoke-static {v0}, Lcom/instagram/android/fragment/ee;->d(Lcom/instagram/android/fragment/ee;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/instagram/android/fragment/eh;->a:Lcom/instagram/android/fragment/ee;

    invoke-static {v0}, Lcom/instagram/android/fragment/ee;->b(Lcom/instagram/android/fragment/ee;)Lcom/instagram/android/fragment/y;

    move-result-object v0

    sget v1, Lcom/instagram/android/fragment/ei;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/y;->a(I)V

    goto :goto_14
.end method
