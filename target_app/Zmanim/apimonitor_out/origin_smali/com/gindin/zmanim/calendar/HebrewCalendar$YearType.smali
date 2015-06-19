.class final enum Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;
.super Ljava/lang/Enum;
.source "HebrewCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/calendar/HebrewCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "YearType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

.field public static final enum Haser:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

.field public static final enum Qesidrah:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

.field public static final enum Shalem:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    const-string v1, "Haser"

    invoke-direct {v0, v1, v2}, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->Haser:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    new-instance v0, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    const-string v1, "Qesidrah"

    invoke-direct {v0, v1, v3}, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->Qesidrah:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    new-instance v0, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    const-string v1, "Shalem"

    invoke-direct {v0, v1, v4}, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->Shalem:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    sget-object v1, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->Haser:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->Qesidrah:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->Shalem:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->$VALUES:[Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;
    .registers 2

    const-class v0, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    return-object p0
.end method

.method public static values()[Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;
    .registers 1

    sget-object v0, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->$VALUES:[Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    invoke-virtual {v0}, [Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;

    return-object v0
.end method
