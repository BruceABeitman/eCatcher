.class abstract enum Lcom/spotify/mobile/android/util/TouchLifecycle$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/util/TouchLifecycle$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

.field public static final enum b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

.field public static final enum c:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

.field public static final enum d:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

.field private static final synthetic e:[Lcom/spotify/mobile/android/util/TouchLifecycle$State;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State$1;

    const-string v1, "IDLE"

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/TouchLifecycle$State$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->a:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    new-instance v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State$2;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/TouchLifecycle$State$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    new-instance v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State$3;

    const-string v1, "CAPTURED"

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/TouchLifecycle$State$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->c:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    new-instance v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State$4;

    const-string v1, "IGNORED"

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/TouchLifecycle$State$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->d:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->a:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->b:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->c:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->d:Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->e:[Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/util/TouchLifecycle$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/util/TouchLifecycle$State;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/util/TouchLifecycle$State;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State;->e:[Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/util/TouchLifecycle$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/util/TouchLifecycle$State;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
.end method

.method abstract b(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
.end method

.method abstract c(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
.end method

.method abstract d(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
.end method
