.class final enum Lcom/spotify/mobile/android/ui/ActionBarManager$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/ui/ActionBarManager$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/ui/ActionBarManager$State;

.field public static final enum b:Lcom/spotify/mobile/android/ui/ActionBarManager$State;

.field private static final synthetic c:[Lcom/spotify/mobile/android/ui/ActionBarManager$State;


# instance fields
.field private final mAlpha:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;

    const-string v1, "TRANSPARENT"

    invoke-direct {v0, v1, v3, v3}, Lcom/spotify/mobile/android/ui/ActionBarManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->a:Lcom/spotify/mobile/android/ui/ActionBarManager$State;

    new-instance v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;

    const-string v1, "OPAQUE"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/ui/ActionBarManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->b:Lcom/spotify/mobile/android/ui/ActionBarManager$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spotify/mobile/android/ui/ActionBarManager$State;

    sget-object v1, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->a:Lcom/spotify/mobile/android/ui/ActionBarManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->b:Lcom/spotify/mobile/android/ui/ActionBarManager$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->c:[Lcom/spotify/mobile/android/ui/ActionBarManager$State;

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

    iput p3, p0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->mAlpha:I

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/ActionBarManager$State;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->mAlpha:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/ActionBarManager$State;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/ui/ActionBarManager$State;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/ActionBarManager$State;->c:[Lcom/spotify/mobile/android/ui/ActionBarManager$State;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/ActionBarManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/ui/ActionBarManager$State;

    return-object v0
.end method
