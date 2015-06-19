.class public Lco/vine/android/views/SdkWebView;
.super Landroid/webkit/WebView;
.source "SdkWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lco/vine/android/views/SdkWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lco/vine/android/views/SdkWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lco/vine/android/views/SdkWebView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-gt v0, v1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/views/SdkWebView;->setScrollBarStyle(I)V

    :cond_a
    return-void
.end method
