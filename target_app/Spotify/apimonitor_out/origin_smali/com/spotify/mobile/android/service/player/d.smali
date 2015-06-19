.class public Lcom/spotify/mobile/android/service/player/d;
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

.method public static a(Landroid/content/Context;)Lcom/spotify/mobile/android/service/player/c;
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/service/player/c;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/player/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
