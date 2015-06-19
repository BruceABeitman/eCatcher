.class public final enum Lco/vine/android/views/SquareMatch$SquareMatchRules;
.super Ljava/lang/Enum;
.source "SquareMatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/views/SquareMatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SquareMatchRules"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lco/vine/android/views/SquareMatch$SquareMatchRules;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/vine/android/views/SquareMatch$SquareMatchRules;

.field public static final enum MATCH_GREATER:Lco/vine/android/views/SquareMatch$SquareMatchRules;

.field public static final enum MATCH_HEIGHT:Lco/vine/android/views/SquareMatch$SquareMatchRules;

.field public static final enum MATCH_LESS:Lco/vine/android/views/SquareMatch$SquareMatchRules;

.field public static final enum MATCH_WIDTH:Lco/vine/android/views/SquareMatch$SquareMatchRules;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;

    const-string v1, "MATCH_WIDTH"

    invoke-direct {v0, v1, v2}, Lco/vine/android/views/SquareMatch$SquareMatchRules;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;->MATCH_WIDTH:Lco/vine/android/views/SquareMatch$SquareMatchRules;

    new-instance v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;

    const-string v1, "MATCH_HEIGHT"

    invoke-direct {v0, v1, v3}, Lco/vine/android/views/SquareMatch$SquareMatchRules;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;->MATCH_HEIGHT:Lco/vine/android/views/SquareMatch$SquareMatchRules;

    new-instance v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;

    const-string v1, "MATCH_GREATER"

    invoke-direct {v0, v1, v4}, Lco/vine/android/views/SquareMatch$SquareMatchRules;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;->MATCH_GREATER:Lco/vine/android/views/SquareMatch$SquareMatchRules;

    new-instance v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;

    const-string v1, "MATCH_LESS"

    invoke-direct {v0, v1, v5}, Lco/vine/android/views/SquareMatch$SquareMatchRules;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;->MATCH_LESS:Lco/vine/android/views/SquareMatch$SquareMatchRules;

    const/4 v0, 0x4

    new-array v0, v0, [Lco/vine/android/views/SquareMatch$SquareMatchRules;

    sget-object v1, Lco/vine/android/views/SquareMatch$SquareMatchRules;->MATCH_WIDTH:Lco/vine/android/views/SquareMatch$SquareMatchRules;

    aput-object v1, v0, v2

    sget-object v1, Lco/vine/android/views/SquareMatch$SquareMatchRules;->MATCH_HEIGHT:Lco/vine/android/views/SquareMatch$SquareMatchRules;

    aput-object v1, v0, v3

    sget-object v1, Lco/vine/android/views/SquareMatch$SquareMatchRules;->MATCH_GREATER:Lco/vine/android/views/SquareMatch$SquareMatchRules;

    aput-object v1, v0, v4

    sget-object v1, Lco/vine/android/views/SquareMatch$SquareMatchRules;->MATCH_LESS:Lco/vine/android/views/SquareMatch$SquareMatchRules;

    aput-object v1, v0, v5

    sput-object v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;->$VALUES:[Lco/vine/android/views/SquareMatch$SquareMatchRules;

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

.method public static valueOf(Ljava/lang/String;)Lco/vine/android/views/SquareMatch$SquareMatchRules;
    .registers 2

    const-class v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;

    return-object v0
.end method

.method public static values()[Lco/vine/android/views/SquareMatch$SquareMatchRules;
    .registers 1

    sget-object v0, Lco/vine/android/views/SquareMatch$SquareMatchRules;->$VALUES:[Lco/vine/android/views/SquareMatch$SquareMatchRules;

    invoke-virtual {v0}, [Lco/vine/android/views/SquareMatch$SquareMatchRules;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/vine/android/views/SquareMatch$SquareMatchRules;

    return-object v0
.end method
