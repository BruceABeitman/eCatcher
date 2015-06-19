.class public final enum Lcom/google/analytics/tracking/android/as;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/analytics/tracking/android/as;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/analytics/tracking/android/as;

.field public static final enum b:Lcom/google/analytics/tracking/android/as;

.field public static final enum c:Lcom/google/analytics/tracking/android/as;

.field public static final enum d:Lcom/google/analytics/tracking/android/as;

.field private static final synthetic e:[Lcom/google/analytics/tracking/android/as;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/analytics/tracking/android/as;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/as;->a:Lcom/google/analytics/tracking/android/as;

    new-instance v0, Lcom/google/analytics/tracking/android/as;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcom/google/analytics/tracking/android/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/as;->b:Lcom/google/analytics/tracking/android/as;

    new-instance v0, Lcom/google/analytics/tracking/android/as;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lcom/google/analytics/tracking/android/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/as;

    new-instance v0, Lcom/google/analytics/tracking/android/as;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/analytics/tracking/android/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/as;->d:Lcom/google/analytics/tracking/android/as;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/analytics/tracking/android/as;

    sget-object v1, Lcom/google/analytics/tracking/android/as;->a:Lcom/google/analytics/tracking/android/as;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/analytics/tracking/android/as;->b:Lcom/google/analytics/tracking/android/as;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/as;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/analytics/tracking/android/as;->d:Lcom/google/analytics/tracking/android/as;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/analytics/tracking/android/as;->e:[Lcom/google/analytics/tracking/android/as;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/tracking/android/as;
    .registers 2

    const-class v0, Lcom/google/analytics/tracking/android/as;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/as;

    return-object v0
.end method

.method public static values()[Lcom/google/analytics/tracking/android/as;
    .registers 1

    sget-object v0, Lcom/google/analytics/tracking/android/as;->e:[Lcom/google/analytics/tracking/android/as;

    invoke-virtual {v0}, [Lcom/google/analytics/tracking/android/as;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/tracking/android/as;

    return-object v0
.end method
