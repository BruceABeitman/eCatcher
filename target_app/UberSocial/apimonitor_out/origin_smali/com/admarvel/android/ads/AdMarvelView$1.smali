.class final Lcom/admarvel/android/ads/AdMarvelView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelView;->initialize(Landroid/app/Activity;Ljava/util/Map;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelView$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->l(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/admarvel/android/util/e;->c(Landroid/content/Context;)Lcom/admarvel/android/util/e;

    return-void
.end method
