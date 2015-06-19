.class public final enum Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;
.super Ljava/lang/Enum;
.source "PersonalPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/android/prefs/PersonalPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Prefs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

.field public static final enum SHOW_SECONDS:Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

.field public static final enum USE_ELEVATION:Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

    const-string v1, "SHOW_SECONDS"

    invoke-direct {v0, v1, v2}, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->SHOW_SECONDS:Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

    new-instance v0, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

    const-string v1, "USE_ELEVATION"

    invoke-direct {v0, v1, v3}, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->USE_ELEVATION:Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

    sget-object v1, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->SHOW_SECONDS:Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->USE_ELEVATION:Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

    aput-object v1, v0, v3

    sput-object v0, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->$VALUES:[Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;
    .registers 2

    const-class v0, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

    return-object p0
.end method

.method public static values()[Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;
    .registers 1

    sget-object v0, Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->$VALUES:[Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

    invoke-virtual {v0}, [Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gindin/zmanim/android/prefs/PersonalPreferences$Prefs;

    return-object v0
.end method
