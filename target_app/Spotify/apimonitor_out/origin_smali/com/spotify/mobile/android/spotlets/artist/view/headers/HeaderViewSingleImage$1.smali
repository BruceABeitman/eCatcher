.class final Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;->a(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;->a(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;

    :cond_d
    return-void
.end method
