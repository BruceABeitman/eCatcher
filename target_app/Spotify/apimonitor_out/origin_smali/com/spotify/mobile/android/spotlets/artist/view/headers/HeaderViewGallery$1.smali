.class final Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/artist/view/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const-string v0, "Not called from main loop"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;

    :cond_12
    return-void
.end method
