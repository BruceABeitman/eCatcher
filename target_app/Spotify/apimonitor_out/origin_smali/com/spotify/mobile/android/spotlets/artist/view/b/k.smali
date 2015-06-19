.class public final Lcom/spotify/mobile/android/spotlets/artist/view/b/k;
.super Lcom/spotify/mobile/android/spotlets/artist/view/b/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/a;-><init>(I)V

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()I
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/b/a;->a()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/a;->a(I)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b/e;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/b/e;->a(Lcom/spotify/mobile/android/spotlets/artist/view/b/k;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;->a:Ljava/lang/String;

    return-object v0
.end method
