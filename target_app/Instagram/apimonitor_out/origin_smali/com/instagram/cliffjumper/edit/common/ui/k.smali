.class public final Lcom/instagram/cliffjumper/edit/common/ui/k;
.super Ljava/lang/Enum;
.source "TileButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/cliffjumper/edit/common/ui/k;",
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

    sput v3, Lcom/instagram/cliffjumper/edit/common/ui/k;->a:I

    sput v4, Lcom/instagram/cliffjumper/edit/common/ui/k;->b:I

    sput v5, Lcom/instagram/cliffjumper/edit/common/ui/k;->c:I

    sput v0, Lcom/instagram/cliffjumper/edit/common/ui/k;->d:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/instagram/cliffjumper/edit/common/ui/k;->a:I

    aput v2, v0, v1

    sget v1, Lcom/instagram/cliffjumper/edit/common/ui/k;->b:I

    aput v1, v0, v3

    sget v1, Lcom/instagram/cliffjumper/edit/common/ui/k;->c:I

    aput v1, v0, v4

    sget v1, Lcom/instagram/cliffjumper/edit/common/ui/k;->d:I

    aput v1, v0, v5

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/ui/k;->e:[I

    return-void
.end method
