.class final Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/loader/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;-><init>(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/mobile/android/spotlets/search/a;Lcom/spotify/mobile/android/spotlets/search/loader/d;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/c",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/loader/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$1;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/loader/e;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$1;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a(Lcom/spotify/mobile/android/spotlets/search/loader/e;)V

    return-void
.end method
