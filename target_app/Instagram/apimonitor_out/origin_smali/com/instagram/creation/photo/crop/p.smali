.class final Lcom/instagram/creation/photo/crop/p;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/creation/photo/crop/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/instagram/creation/photo/crop/p;->a:I

    sput v4, Lcom/instagram/creation/photo/crop/p;->b:I

    sput v0, Lcom/instagram/creation/photo/crop/p;->c:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/instagram/creation/photo/crop/p;->a:I

    aput v2, v0, v1

    sget v1, Lcom/instagram/creation/photo/crop/p;->b:I

    aput v1, v0, v3

    sget v1, Lcom/instagram/creation/photo/crop/p;->c:I

    aput v1, v0, v4

    sput-object v0, Lcom/instagram/creation/photo/crop/p;->d:[I

    return-void
.end method
