.class final Lcom/spotify/mobile/android/spotlets/browse/util/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/browse/util/e;->c(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    check-cast p2, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
