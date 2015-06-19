.class public final Lcom/instagram/android/activity/a;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
