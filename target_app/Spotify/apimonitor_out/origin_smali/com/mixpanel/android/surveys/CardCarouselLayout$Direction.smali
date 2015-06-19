.class public final enum Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

.field public static final enum b:Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

.field private static final synthetic c:[Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    new-instance v0, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    const-string v1, "BACKWARD"

    invoke-direct {v0, v1, v3}, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->b:Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    sget-object v1, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->b:Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->c:[Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;
    .registers 2

    const-class v0, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    return-object v0
.end method

.method public static values()[Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;
    .registers 1

    sget-object v0, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->c:[Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    invoke-virtual {v0}, [Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;

    return-object v0
.end method
