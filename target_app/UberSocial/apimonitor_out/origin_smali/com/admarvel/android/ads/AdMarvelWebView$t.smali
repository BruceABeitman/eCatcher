.class Lcom/admarvel/android/ads/AdMarvelWebView$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:I


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, -0x8000

    sput v0, Lcom/admarvel/android/ads/AdMarvelWebView$t;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$t;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()I
    .registers 2

    sget v0, Lcom/admarvel/android/ads/AdMarvelWebView$t;->a:I

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelWebView$t;)I
    .registers 2

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelWebView$t;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$t;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    sput v1, Lcom/admarvel/android/ads/AdMarvelWebView$t;->a:I

    sget v1, Lcom/admarvel/android/ads/AdMarvelWebView$t;->a:I

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;I)I

    goto :goto_a
.end method
