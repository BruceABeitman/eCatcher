.class public final Lcom/instagram/creation/photo/crop/l;
.super Ljava/lang/Object;
.source "CropUtil.java"


# direct methods
.method public static a(Lcom/instagram/creation/photo/crop/w;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .registers 8

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/w;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/instagram/creation/photo/crop/m;

    invoke-direct {v2, p0, p2, v0, p3}, Lcom/instagram/creation/photo/crop/m;-><init>(Lcom/instagram/creation/photo/crop/w;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
