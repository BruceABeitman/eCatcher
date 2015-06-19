.class final Lcom/spotify/mobile/android/spotlets/openaccess/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/openaccess/util/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/openaccess/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;F)V
    .registers 4

    invoke-virtual {p1, p2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->setProgress(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->a(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/openaccess/util/g;->a(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;F)V

    return-void
.end method
