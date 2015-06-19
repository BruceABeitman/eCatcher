.class public final enum Lcom/mapquest/android/maps/cc;
.super Ljava/lang/Enum;
.source "TileCacher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mapquest/android/maps/cc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mapquest/android/maps/cc;

.field public static final enum b:Lcom/mapquest/android/maps/cc;

.field public static final enum c:Lcom/mapquest/android/maps/cc;

.field private static final synthetic d:[Lcom/mapquest/android/maps/cc;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mapquest/android/maps/cc;

    const-string v1, "DB"

    invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/cc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapquest/android/maps/cc;->a:Lcom/mapquest/android/maps/cc;

    new-instance v0, Lcom/mapquest/android/maps/cc;

    const-string v1, "MEMORY"

    invoke-direct {v0, v1, v3}, Lcom/mapquest/android/maps/cc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;

    new-instance v0, Lcom/mapquest/android/maps/cc;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/mapquest/android/maps/cc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapquest/android/maps/cc;->c:Lcom/mapquest/android/maps/cc;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mapquest/android/maps/cc;

    sget-object v1, Lcom/mapquest/android/maps/cc;->a:Lcom/mapquest/android/maps/cc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mapquest/android/maps/cc;->c:Lcom/mapquest/android/maps/cc;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mapquest/android/maps/cc;->d:[Lcom/mapquest/android/maps/cc;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mapquest/android/maps/cc;
    .registers 2

    const-class v0, Lcom/mapquest/android/maps/cc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/cc;

    return-object v0
.end method

.method public static values()[Lcom/mapquest/android/maps/cc;
    .registers 1

    sget-object v0, Lcom/mapquest/android/maps/cc;->d:[Lcom/mapquest/android/maps/cc;

    invoke-virtual {v0}, [Lcom/mapquest/android/maps/cc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapquest/android/maps/cc;

    return-object v0
.end method
