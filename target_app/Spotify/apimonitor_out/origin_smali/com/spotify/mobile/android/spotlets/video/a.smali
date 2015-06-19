.class public final Lcom/spotify/mobile/android/spotlets/video/a;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/a;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/a;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;

    return-object v0
.end method
