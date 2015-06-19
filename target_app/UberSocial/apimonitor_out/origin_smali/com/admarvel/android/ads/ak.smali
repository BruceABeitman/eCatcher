.class Lcom/admarvel/android/ads/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method static a(Landroid/webkit/WebView;)V
    .registers 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method static b(Landroid/webkit/WebView;)V
    .registers 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method
