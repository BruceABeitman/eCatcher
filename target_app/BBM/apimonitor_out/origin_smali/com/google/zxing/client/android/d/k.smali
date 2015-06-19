.class final Lcom/google/zxing/client/android/d/k;
.super Ljava/lang/Object;
.source "ResultHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/zxing/client/android/d/j;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/d/j;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/client/android/d/k;->a:Lcom/google/zxing/client/android/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/zxing/client/android/d/k;->a:Lcom/google/zxing/client/android/d/j;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/d/j;->b(Landroid/content/Intent;)V

    return-void
.end method
