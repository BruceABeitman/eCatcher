.class final enum Lcom/crashlytics/android/internal/W;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crashlytics/android/internal/W;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/crashlytics/android/internal/W;

.field public static final enum b:Lcom/crashlytics/android/internal/W;

.field public static final enum c:Lcom/crashlytics/android/internal/W;

.field public static final enum d:Lcom/crashlytics/android/internal/W;

.field public static final enum e:Lcom/crashlytics/android/internal/W;

.field public static final enum f:Lcom/crashlytics/android/internal/W;

.field public static final enum g:Lcom/crashlytics/android/internal/W;

.field public static final enum h:Lcom/crashlytics/android/internal/W;

.field public static final enum i:Lcom/crashlytics/android/internal/W;

.field public static final enum j:Lcom/crashlytics/android/internal/W;

.field private static final synthetic k:[Lcom/crashlytics/android/internal/W;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/crashlytics/android/internal/W;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/internal/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/W;->a:Lcom/crashlytics/android/internal/W;

    new-instance v0, Lcom/crashlytics/android/internal/W;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, Lcom/crashlytics/android/internal/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/W;->b:Lcom/crashlytics/android/internal/W;

    new-instance v0, Lcom/crashlytics/android/internal/W;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lcom/crashlytics/android/internal/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/W;->c:Lcom/crashlytics/android/internal/W;

    new-instance v0, Lcom/crashlytics/android/internal/W;

    const-string v1, "SAVE_INSTANCE_STATE"

    invoke-direct {v0, v1, v6}, Lcom/crashlytics/android/internal/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/W;->d:Lcom/crashlytics/android/internal/W;

    new-instance v0, Lcom/crashlytics/android/internal/W;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/crashlytics/android/internal/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/W;->e:Lcom/crashlytics/android/internal/W;

    new-instance v0, Lcom/crashlytics/android/internal/W;

    const-string v1, "STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/W;->f:Lcom/crashlytics/android/internal/W;

    new-instance v0, Lcom/crashlytics/android/internal/W;

    const-string v1, "DESTROY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/W;->g:Lcom/crashlytics/android/internal/W;

    new-instance v0, Lcom/crashlytics/android/internal/W;

    const-string v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/W;->h:Lcom/crashlytics/android/internal/W;

    new-instance v0, Lcom/crashlytics/android/internal/W;

    const-string v1, "CRASH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/W;->i:Lcom/crashlytics/android/internal/W;

    new-instance v0, Lcom/crashlytics/android/internal/W;

    const-string v1, "INSTALL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/W;->j:Lcom/crashlytics/android/internal/W;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/crashlytics/android/internal/W;

    sget-object v1, Lcom/crashlytics/android/internal/W;->a:Lcom/crashlytics/android/internal/W;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crashlytics/android/internal/W;->b:Lcom/crashlytics/android/internal/W;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crashlytics/android/internal/W;->c:Lcom/crashlytics/android/internal/W;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crashlytics/android/internal/W;->d:Lcom/crashlytics/android/internal/W;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crashlytics/android/internal/W;->e:Lcom/crashlytics/android/internal/W;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/crashlytics/android/internal/W;->f:Lcom/crashlytics/android/internal/W;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crashlytics/android/internal/W;->g:Lcom/crashlytics/android/internal/W;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crashlytics/android/internal/W;->h:Lcom/crashlytics/android/internal/W;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/crashlytics/android/internal/W;->i:Lcom/crashlytics/android/internal/W;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/crashlytics/android/internal/W;->j:Lcom/crashlytics/android/internal/W;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/internal/W;->k:[Lcom/crashlytics/android/internal/W;

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

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/internal/W;
    .registers 2

    const-class v0, Lcom/crashlytics/android/internal/W;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/W;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/internal/W;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/internal/W;->k:[Lcom/crashlytics/android/internal/W;

    invoke-virtual {v0}, [Lcom/crashlytics/android/internal/W;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/internal/W;

    return-object v0
.end method
