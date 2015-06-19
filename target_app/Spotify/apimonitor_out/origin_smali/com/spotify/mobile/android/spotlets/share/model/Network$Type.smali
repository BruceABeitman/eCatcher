.class public final enum Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

.field public static final enum b:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

.field public static final enum c:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

.field private static final synthetic d:[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;->a:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    const-string v1, "TWITTER"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;->b:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    const-string v1, "TUMBLR"

    invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;->c:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;->a:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;->b:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;->c:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;->d:[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;->d:[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    return-object v0
.end method
