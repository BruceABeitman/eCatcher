.class Lcom/admarvel/android/ads/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    const-string v0, "LandscapeRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    const-string v0, "PortraitUpsideDown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_d
.end method
