.class public final enum Lcom/gindin/zmanim/android/Activities;
.super Ljava/lang/Enum;
.source "Activities.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gindin/zmanim/android/Activities;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gindin/zmanim/android/Activities;

.field public static final enum EDIT_LOCATION_PREFERENCES:Lcom/gindin/zmanim/android/Activities;

.field public static final enum ENABLE_LOCATION_SERVICES:Lcom/gindin/zmanim/android/Activities;

.field public static final enum MAIN:Lcom/gindin/zmanim/android/Activities;

.field public static final enum PERSONAL_PREFERENCS:Lcom/gindin/zmanim/android/Activities;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/gindin/zmanim/android/Activities;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2}, Lcom/gindin/zmanim/android/Activities;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/Activities;->MAIN:Lcom/gindin/zmanim/android/Activities;

    new-instance v0, Lcom/gindin/zmanim/android/Activities;

    const-string v1, "EDIT_LOCATION_PREFERENCES"

    invoke-direct {v0, v1, v3}, Lcom/gindin/zmanim/android/Activities;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/Activities;->EDIT_LOCATION_PREFERENCES:Lcom/gindin/zmanim/android/Activities;

    new-instance v0, Lcom/gindin/zmanim/android/Activities;

    const-string v1, "ENABLE_LOCATION_SERVICES"

    invoke-direct {v0, v1, v4}, Lcom/gindin/zmanim/android/Activities;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/Activities;->ENABLE_LOCATION_SERVICES:Lcom/gindin/zmanim/android/Activities;

    new-instance v0, Lcom/gindin/zmanim/android/Activities;

    const-string v1, "PERSONAL_PREFERENCS"

    invoke-direct {v0, v1, v5}, Lcom/gindin/zmanim/android/Activities;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/Activities;->PERSONAL_PREFERENCS:Lcom/gindin/zmanim/android/Activities;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/gindin/zmanim/android/Activities;

    sget-object v1, Lcom/gindin/zmanim/android/Activities;->MAIN:Lcom/gindin/zmanim/android/Activities;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gindin/zmanim/android/Activities;->EDIT_LOCATION_PREFERENCES:Lcom/gindin/zmanim/android/Activities;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gindin/zmanim/android/Activities;->ENABLE_LOCATION_SERVICES:Lcom/gindin/zmanim/android/Activities;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gindin/zmanim/android/Activities;->PERSONAL_PREFERENCS:Lcom/gindin/zmanim/android/Activities;

    aput-object v1, v0, v5

    sput-object v0, Lcom/gindin/zmanim/android/Activities;->$VALUES:[Lcom/gindin/zmanim/android/Activities;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gindin/zmanim/android/Activities;
    .registers 2

    const-class v0, Lcom/gindin/zmanim/android/Activities;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/android/Activities;

    return-object p0
.end method

.method public static values()[Lcom/gindin/zmanim/android/Activities;
    .registers 1

    sget-object v0, Lcom/gindin/zmanim/android/Activities;->$VALUES:[Lcom/gindin/zmanim/android/Activities;

    invoke-virtual {v0}, [Lcom/gindin/zmanim/android/Activities;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gindin/zmanim/android/Activities;

    return-object v0
.end method
