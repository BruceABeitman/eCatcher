.class public final Lcom/instagram/creation/video/i/c;
.super Ljava/lang/Enum;
.source "Clip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/creation/video/i/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/instagram/creation/video/i/c;->a:I

    sput v4, Lcom/instagram/creation/video/i/c;->b:I

    sput v5, Lcom/instagram/creation/video/i/c;->c:I

    sput v0, Lcom/instagram/creation/video/i/c;->d:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/instagram/creation/video/i/c;->a:I

    aput v2, v0, v1

    sget v1, Lcom/instagram/creation/video/i/c;->b:I

    aput v1, v0, v3

    sget v1, Lcom/instagram/creation/video/i/c;->c:I

    aput v1, v0, v4

    sget v1, Lcom/instagram/creation/video/i/c;->d:I

    aput v1, v0, v5

    sput-object v0, Lcom/instagram/creation/video/i/c;->e:[I

    return-void
.end method
