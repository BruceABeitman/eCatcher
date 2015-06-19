.class public final enum Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

.field public static final enum b:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

.field public static final enum c:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

.field private static final synthetic d:[Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->a:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    const-string v1, "OFFER_AD"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->b:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    const-string v1, "END_CARD_AD"

    invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->c:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->a:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->b:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->c:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->d:[Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->d:[Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    return-object v0
.end method
