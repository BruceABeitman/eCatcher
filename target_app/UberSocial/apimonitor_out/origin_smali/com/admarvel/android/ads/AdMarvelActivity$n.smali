.class Lcom/admarvel/android/ads/AdMarvelActivity$n;
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

    sput v0, Lcom/admarvel/android/ads/AdMarvelActivity$n;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$n;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()I
    .registers 2

    sget v0, Lcom/admarvel/android/ads/AdMarvelActivity$n;->a:I

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelActivity$n;)I
    .registers 2

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$n;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$n;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$n;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    sput v0, Lcom/admarvel/android/ads/AdMarvelActivity$n;->a:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_22
.end method
