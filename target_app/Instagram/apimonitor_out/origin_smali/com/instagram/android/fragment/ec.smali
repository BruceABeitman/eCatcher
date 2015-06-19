.class final Lcom/instagram/android/fragment/ec;
.super Ljava/lang/Object;
.source "ReportProblemFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/eb;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/eb;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/eb;

    iget-object v0, v0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/dy;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/dy;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    return-void
.end method
