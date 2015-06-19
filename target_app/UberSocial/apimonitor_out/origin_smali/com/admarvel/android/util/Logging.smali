.class public Lcom/admarvel/android/util/Logging;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "admarvel"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 3

    const-string v0, "admarvel"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_f
    const-string v0, "admarvel"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method
