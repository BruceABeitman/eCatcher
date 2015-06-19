.class public final enum Lco/vine/android/recorder/Processor$Preset;
.super Ljava/lang/Enum;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Preset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lco/vine/android/recorder/Processor$Preset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/vine/android/recorder/Processor$Preset;

.field public static final enum FAST:Lco/vine/android/recorder/Processor$Preset;

.field public static final enum FASTER:Lco/vine/android/recorder/Processor$Preset;

.field public static final enum MEDIUM:Lco/vine/android/recorder/Processor$Preset;

.field public static final enum SLOW:Lco/vine/android/recorder/Processor$Preset;

.field public static final enum SLOWER:Lco/vine/android/recorder/Processor$Preset;

.field public static final enum SUPERFAST:Lco/vine/android/recorder/Processor$Preset;

.field public static final enum ULTRAFAST:Lco/vine/android/recorder/Processor$Preset;

.field public static final enum VERYFAST:Lco/vine/android/recorder/Processor$Preset;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lco/vine/android/recorder/Processor$Preset;

    const-string v1, "ULTRAFAST"

    invoke-direct {v0, v1, v3}, Lco/vine/android/recorder/Processor$Preset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/recorder/Processor$Preset;->ULTRAFAST:Lco/vine/android/recorder/Processor$Preset;

    new-instance v0, Lco/vine/android/recorder/Processor$Preset;

    const-string v1, "SUPERFAST"

    invoke-direct {v0, v1, v4}, Lco/vine/android/recorder/Processor$Preset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/recorder/Processor$Preset;->SUPERFAST:Lco/vine/android/recorder/Processor$Preset;

    new-instance v0, Lco/vine/android/recorder/Processor$Preset;

    const-string v1, "VERYFAST"

    invoke-direct {v0, v1, v5}, Lco/vine/android/recorder/Processor$Preset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/recorder/Processor$Preset;->VERYFAST:Lco/vine/android/recorder/Processor$Preset;

    new-instance v0, Lco/vine/android/recorder/Processor$Preset;

    const-string v1, "FASTER"

    invoke-direct {v0, v1, v6}, Lco/vine/android/recorder/Processor$Preset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/recorder/Processor$Preset;->FASTER:Lco/vine/android/recorder/Processor$Preset;

    new-instance v0, Lco/vine/android/recorder/Processor$Preset;

    const-string v1, "FAST"

    invoke-direct {v0, v1, v7}, Lco/vine/android/recorder/Processor$Preset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/recorder/Processor$Preset;->FAST:Lco/vine/android/recorder/Processor$Preset;

    new-instance v0, Lco/vine/android/recorder/Processor$Preset;

    const-string v1, "MEDIUM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lco/vine/android/recorder/Processor$Preset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/recorder/Processor$Preset;->MEDIUM:Lco/vine/android/recorder/Processor$Preset;

    new-instance v0, Lco/vine/android/recorder/Processor$Preset;

    const-string v1, "SLOW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lco/vine/android/recorder/Processor$Preset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/recorder/Processor$Preset;->SLOW:Lco/vine/android/recorder/Processor$Preset;

    new-instance v0, Lco/vine/android/recorder/Processor$Preset;

    const-string v1, "SLOWER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lco/vine/android/recorder/Processor$Preset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/recorder/Processor$Preset;->SLOWER:Lco/vine/android/recorder/Processor$Preset;

    const/16 v0, 0x8

    new-array v0, v0, [Lco/vine/android/recorder/Processor$Preset;

    sget-object v1, Lco/vine/android/recorder/Processor$Preset;->ULTRAFAST:Lco/vine/android/recorder/Processor$Preset;

    aput-object v1, v0, v3

    sget-object v1, Lco/vine/android/recorder/Processor$Preset;->SUPERFAST:Lco/vine/android/recorder/Processor$Preset;

    aput-object v1, v0, v4

    sget-object v1, Lco/vine/android/recorder/Processor$Preset;->VERYFAST:Lco/vine/android/recorder/Processor$Preset;

    aput-object v1, v0, v5

    sget-object v1, Lco/vine/android/recorder/Processor$Preset;->FASTER:Lco/vine/android/recorder/Processor$Preset;

    aput-object v1, v0, v6

    sget-object v1, Lco/vine/android/recorder/Processor$Preset;->FAST:Lco/vine/android/recorder/Processor$Preset;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lco/vine/android/recorder/Processor$Preset;->MEDIUM:Lco/vine/android/recorder/Processor$Preset;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lco/vine/android/recorder/Processor$Preset;->SLOW:Lco/vine/android/recorder/Processor$Preset;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lco/vine/android/recorder/Processor$Preset;->SLOWER:Lco/vine/android/recorder/Processor$Preset;

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/recorder/Processor$Preset;->$VALUES:[Lco/vine/android/recorder/Processor$Preset;

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

.method public static valueOf(Ljava/lang/String;)Lco/vine/android/recorder/Processor$Preset;
    .registers 2

    const-class v0, Lco/vine/android/recorder/Processor$Preset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/Processor$Preset;

    return-object v0
.end method

.method public static values()[Lco/vine/android/recorder/Processor$Preset;
    .registers 1

    sget-object v0, Lco/vine/android/recorder/Processor$Preset;->$VALUES:[Lco/vine/android/recorder/Processor$Preset;

    invoke-virtual {v0}, [Lco/vine/android/recorder/Processor$Preset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/vine/android/recorder/Processor$Preset;

    return-object v0
.end method
