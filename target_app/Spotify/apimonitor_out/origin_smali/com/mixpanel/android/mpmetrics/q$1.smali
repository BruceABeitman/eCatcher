.class final Lcom/mixpanel/android/mpmetrics/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/q;->a(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/mixpanel/android/mpmetrics/q;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/q;JLandroid/app/Activity;)V
    .registers 5

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/q$1;->c:Lcom/mixpanel/android/mpmetrics/q;

    iput-wide p2, p0, Lcom/mixpanel/android/mpmetrics/q$1;->a:J

    iput-object p4, p0, Lcom/mixpanel/android/mpmetrics/q$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mixpanel/android/mpmetrics/Survey;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/q$1;->a:J

    sub-long/2addr v0, v2

    if-nez p1, :cond_a

    :goto_9
    return-void

    :cond_a
    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_20

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/q$1;->c:Lcom/mixpanel/android/mpmetrics/q;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/q;->a(Lcom/mixpanel/android/mpmetrics/q;)Lcom/mixpanel/android/mpmetrics/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/l;->b()Lcom/mixpanel/android/mpmetrics/o;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/q$1;->b:Landroid/app/Activity;

    invoke-interface {v0, p1, v1}, Lcom/mixpanel/android/mpmetrics/o;->a(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V

    goto :goto_9

    :cond_20
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/q$1;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "We\'d love your feedback!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Mind taking a quick survey?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Sure"

    new-instance v2, Lcom/mixpanel/android/mpmetrics/q$1$1;

    invoke-direct {v2, p0, p1}, Lcom/mixpanel/android/mpmetrics/q$1$1;-><init>(Lcom/mixpanel/android/mpmetrics/q$1;Lcom/mixpanel/android/mpmetrics/Survey;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "No, Thanks"

    new-instance v2, Lcom/mixpanel/android/mpmetrics/q$1$2;

    invoke-direct {v2, p0, p1}, Lcom/mixpanel/android/mpmetrics/q$1$2;-><init>(Lcom/mixpanel/android/mpmetrics/q$1;Lcom/mixpanel/android/mpmetrics/Survey;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/q$1;->b:Landroid/app/Activity;

    new-instance v2, Lcom/mixpanel/android/mpmetrics/q$1$3;

    invoke-direct {v2, p0, v0}, Lcom/mixpanel/android/mpmetrics/q$1$3;-><init>(Lcom/mixpanel/android/mpmetrics/q$1;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9
.end method
