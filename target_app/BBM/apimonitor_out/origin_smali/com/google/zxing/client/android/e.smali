.class final enum Lcom/google/zxing/client/android/e;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/client/android/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/client/android/e;

.field public static final enum b:Lcom/google/zxing/client/android/e;

.field public static final enum c:Lcom/google/zxing/client/android/e;

.field private static final synthetic d:[Lcom/google/zxing/client/android/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/zxing/client/android/e;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/e;->a:Lcom/google/zxing/client/android/e;

    new-instance v0, Lcom/google/zxing/client/android/e;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/client/android/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/e;->b:Lcom/google/zxing/client/android/e;

    new-instance v0, Lcom/google/zxing/client/android/e;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/client/android/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/e;->c:Lcom/google/zxing/client/android/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/zxing/client/android/e;

    sget-object v1, Lcom/google/zxing/client/android/e;->a:Lcom/google/zxing/client/android/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/client/android/e;->b:Lcom/google/zxing/client/android/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/client/android/e;->c:Lcom/google/zxing/client/android/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/zxing/client/android/e;->d:[Lcom/google/zxing/client/android/e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/android/e;
    .registers 2

    const-class v0, Lcom/google/zxing/client/android/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/android/e;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/client/android/e;
    .registers 1

    sget-object v0, Lcom/google/zxing/client/android/e;->d:[Lcom/google/zxing/client/android/e;

    invoke-virtual {v0}, [Lcom/google/zxing/client/android/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/android/e;

    return-object v0
.end method
