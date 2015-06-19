.class final enum Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter$1;
.super Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    invoke-interface {p1, p2}, Lcom/spotify/mobile/android/spotlets/search/a;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
