.class public final enum Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

.field public static final enum b:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

.field private static final synthetic c:[Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;


# instance fields
.field private final mPrefsKey:Lcom/spotify/mobile/android/util/cz;
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
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    const-string v1, "PLAYLIST_DISPLAYED"

    const-string v2, "onboarding.playlist.closed"

    invoke-static {v2}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/util/cz;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    const-string v1, "BROWSE_TOOLTIP_CLOSED"

    const-string v2, "onboarding.browse.tooltip.displayed"

    invoke-static {v2}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/util/cz;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->c:[Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/spotify/mobile/android/util/cz;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->mPrefsKey:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->c:[Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/util/cz;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->mPrefsKey:Lcom/spotify/mobile/android/util/cz;

    return-object v0
.end method
