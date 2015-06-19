.class public final Lcom/spotify/music/spotlets/situationalcontent/b/a;
.super Lcom/spotify/music/spotlets/situationalcontent/a/a;
.source "SourceFile"


# static fields
.field public static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "enable_context_recognition"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/music/spotlets/situationalcontent/b/a;->a:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method
