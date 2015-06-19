.class final Lcom/spotify/mobile/android/spotlets/artist/h$1;
.super Lcom/spotify/mobile/android/ui/menus/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/h;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/h;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/h;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/h$1;->a:Lcom/spotify/mobile/android/spotlets/artist/h;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/h$1;->a:Lcom/spotify/mobile/android/spotlets/artist/h;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/h;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 4

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->L:Lcom/spotify/mobile/android/util/ea;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/h$1;->a:Lcom/spotify/mobile/android/spotlets/artist/h;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/h;->c()Lcom/spotify/mobile/android/spotlets/artist/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":similar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    return-object v0
.end method
