.class final Lcom/instagram/android/creation/a/ba;
.super Ljava/lang/Object;
.source "ThumbnailPhotoPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/az;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/az;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/ba;->a:Lcom/instagram/android/creation/a/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/creation/a/ba;->a:Lcom/instagram/android/creation/a/az;

    iget-object v0, v0, Lcom/instagram/android/creation/a/az;->b:Lcom/instagram/android/creation/a/ax;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ax;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    return-void
.end method
