.class final enum Lcom/bbm/ui/activities/rf;
.super Ljava/lang/Enum;
.source "GroupPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/ui/activities/rf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/ui/activities/rf;

.field public static final enum b:Lcom/bbm/ui/activities/rf;

.field private static final synthetic c:[Lcom/bbm/ui/activities/rf;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/ui/activities/rf;

    const-string v1, "RecentPictures"

    invoke-direct {v0, v1, v2}, Lcom/bbm/ui/activities/rf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/activities/rf;->a:Lcom/bbm/ui/activities/rf;

    new-instance v0, Lcom/bbm/ui/activities/rf;

    const-string v1, "AllPictures"

    invoke-direct {v0, v1, v3}, Lcom/bbm/ui/activities/rf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/activities/rf;->b:Lcom/bbm/ui/activities/rf;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bbm/ui/activities/rf;

    sget-object v1, Lcom/bbm/ui/activities/rf;->a:Lcom/bbm/ui/activities/rf;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/ui/activities/rf;->b:Lcom/bbm/ui/activities/rf;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bbm/ui/activities/rf;->c:[Lcom/bbm/ui/activities/rf;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/activities/rf;
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/rf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/rf;

    return-object v0
.end method

.method public static values()[Lcom/bbm/ui/activities/rf;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/rf;->c:[Lcom/bbm/ui/activities/rf;

    invoke-virtual {v0}, [Lcom/bbm/ui/activities/rf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/ui/activities/rf;

    return-object v0
.end method
