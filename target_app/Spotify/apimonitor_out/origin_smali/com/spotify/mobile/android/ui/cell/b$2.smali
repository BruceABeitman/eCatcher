.class final Lcom/spotify/mobile/android/ui/cell/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/cell/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/discover/model/Story;

.field final synthetic b:Lcom/spotify/mobile/android/ui/cell/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/b;Lcom/spotify/mobile/android/spotlets/discover/model/Story;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/b$2;->b:Lcom/spotify/mobile/android/ui/cell/b;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/cell/b$2;->a:Lcom/spotify/mobile/android/spotlets/discover/model/Story;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/b$2;->b:Lcom/spotify/mobile/android/ui/cell/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/b;->a(Lcom/spotify/mobile/android/ui/cell/b;)Lcom/spotify/mobile/android/spotlets/discover/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/b$2;->a:Lcom/spotify/mobile/android/spotlets/discover/model/Story;

    invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/spotlets/discover/c/a;->a(Lcom/spotify/mobile/android/spotlets/discover/model/Story;Ljava/lang/String;)V

    return-void
.end method
