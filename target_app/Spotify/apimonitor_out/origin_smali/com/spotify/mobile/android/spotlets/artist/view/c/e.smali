.class public Lcom/spotify/mobile/android/spotlets/artist/view/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/b/a;)Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
    .registers 3

    invoke-static {p0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/b/a;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/c/d;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/d;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/b/a;)V

    goto :goto_b
.end method
