.class public final Lcom/spotify/mobile/android/service/media/b;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/media/MediaService;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/service/media/MediaService;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/media/b;->a:Lcom/spotify/mobile/android/service/media/MediaService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/service/media/MediaService;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/media/b;->a:Lcom/spotify/mobile/android/service/media/MediaService;

    return-object v0
.end method
