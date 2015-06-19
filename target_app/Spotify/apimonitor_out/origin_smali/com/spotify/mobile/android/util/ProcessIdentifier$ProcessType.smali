.class public final enum Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

.field public static final enum b:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

.field public static final enum c:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

.field public static final enum d:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

.field private static final synthetic e:[Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    const-string v1, "UI"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->a:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    new-instance v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    const-string v1, "SERVICE"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->b:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    new-instance v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    const-string v1, "ROBOLECTRIC"

    invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->c:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    new-instance v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    const-string v1, "GDBPROCESS"

    invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->d:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    sget-object v1, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->a:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->b:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->c:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->d:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->e:[Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->e:[Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;

    return-object v0
.end method
