.class final Lcom/instagram/android/fragment/e;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/e;->a:Lcom/instagram/android/fragment/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/e;->a:Lcom/instagram/android/fragment/d;

    iget-object v0, v0, Lcom/instagram/android/fragment/d;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/instagram/android/fragment/e;->a:Lcom/instagram/android/fragment/d;

    iget-object v0, v0, Lcom/instagram/android/fragment/d;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->V()V

    :cond_11
    return-void
.end method
