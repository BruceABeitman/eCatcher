.class public final enum Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

.field public static final enum b:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

.field public static final enum c:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

.field public static final enum d:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

.field private static final synthetic e:[Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;


# instance fields
.field private final mPriority:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    const-string v1, "NO_NETWORK"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v3, v2}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    new-instance v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    const-string v1, "SERVICE_ERROR"

    const v2, 0x7ffffffe

    invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->b:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    new-instance v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    const-string v1, "SERVICE_WARNING"

    const v2, 0x7ffffffd

    invoke-direct {v0, v1, v5, v2}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->c:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    new-instance v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    const-string v1, "EMPTY_CONTENT"

    const v2, 0x7ffffffc

    invoke-direct {v0, v1, v6, v2}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->d:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    sget-object v1, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->b:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->c:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->d:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->e:[Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->mPriority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->e:[Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->mPriority:I

    return v0
.end method
