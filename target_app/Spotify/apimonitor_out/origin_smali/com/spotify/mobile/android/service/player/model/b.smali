.class public interface abstract Lcom/spotify/mobile/android/service/player/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/spotify/mobile/android/service/player/model/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/service/player/model/b$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/service/player/model/b$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/service/player/model/b;->a:Lcom/spotify/mobile/android/service/player/model/b;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()V
.end method
