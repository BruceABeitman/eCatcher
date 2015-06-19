.class public final enum Lcom/bbm/ui/activities/zr;
.super Ljava/lang/Enum;
.source "NewListItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/ui/activities/zr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/ui/activities/zr;

.field public static final enum b:Lcom/bbm/ui/activities/zr;

.field private static final synthetic d:[Lcom/bbm/ui/activities/zr;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/ui/activities/zr;

    const-string v1, "ADD_NEW"

    const v2, 0x7f0e03bd

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/ui/activities/zr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/ui/activities/zr;->a:Lcom/bbm/ui/activities/zr;

    new-instance v0, Lcom/bbm/ui/activities/zr;

    const-string v1, "NOT_ASSIGNED"

    const v2, 0x7f0e03be

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/ui/activities/zr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bbm/ui/activities/zr;->b:Lcom/bbm/ui/activities/zr;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bbm/ui/activities/zr;

    sget-object v1, Lcom/bbm/ui/activities/zr;->a:Lcom/bbm/ui/activities/zr;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/ui/activities/zr;->b:Lcom/bbm/ui/activities/zr;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bbm/ui/activities/zr;->d:[Lcom/bbm/ui/activities/zr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bbm/ui/activities/zr;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/activities/zr;
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/zr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/zr;

    return-object v0
.end method

.method public static values()[Lcom/bbm/ui/activities/zr;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/zr;->d:[Lcom/bbm/ui/activities/zr;

    invoke-virtual {v0}, [Lcom/bbm/ui/activities/zr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/ui/activities/zr;

    return-object v0
.end method
