.class public final enum Lcom/crashlytics/android/internal/aV;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crashlytics/android/internal/aV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/crashlytics/android/internal/aV;

.field public static final enum b:Lcom/crashlytics/android/internal/aV;

.field public static final enum c:Lcom/crashlytics/android/internal/aV;

.field private static final synthetic d:[Lcom/crashlytics/android/internal/aV;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/crashlytics/android/internal/aV;

    const-string v1, "USE_CACHE"

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/aV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/aV;->a:Lcom/crashlytics/android/internal/aV;

    new-instance v0, Lcom/crashlytics/android/internal/aV;

    const-string v1, "SKIP_CACHE_LOOKUP"

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/internal/aV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/aV;->b:Lcom/crashlytics/android/internal/aV;

    new-instance v0, Lcom/crashlytics/android/internal/aV;

    const-string v1, "IGNORE_CACHE_EXPIRATION"

    invoke-direct {v0, v1, v4}, Lcom/crashlytics/android/internal/aV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/aV;->c:Lcom/crashlytics/android/internal/aV;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/crashlytics/android/internal/aV;

    sget-object v1, Lcom/crashlytics/android/internal/aV;->a:Lcom/crashlytics/android/internal/aV;

    aput-object v1, v0, v2

    sget-object v1, Lcom/crashlytics/android/internal/aV;->b:Lcom/crashlytics/android/internal/aV;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crashlytics/android/internal/aV;->c:Lcom/crashlytics/android/internal/aV;

    aput-object v1, v0, v4

    sput-object v0, Lcom/crashlytics/android/internal/aV;->d:[Lcom/crashlytics/android/internal/aV;

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

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/internal/aV;
    .registers 2

    const-class v0, Lcom/crashlytics/android/internal/aV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/aV;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/internal/aV;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/internal/aV;->d:[Lcom/crashlytics/android/internal/aV;

    invoke-virtual {v0}, [Lcom/crashlytics/android/internal/aV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/internal/aV;

    return-object v0
.end method
