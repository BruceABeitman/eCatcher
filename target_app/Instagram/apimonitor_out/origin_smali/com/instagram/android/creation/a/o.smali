.class final Lcom/instagram/android/creation/a/o;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/o;->a:Lcom/instagram/android/creation/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 7

    const/4 v3, 0x2

    if-nez p2, :cond_f

    iget-object v0, p0, Lcom/instagram/android/creation/a/o;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->n(Lcom/instagram/android/creation/a/d;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/instagram/android/creation/a/o;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->n(Lcom/instagram/android/creation/a/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_e
.end method
