.class final Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->buildTracksUriList()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b",
        "<",
        "Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getTrackUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
