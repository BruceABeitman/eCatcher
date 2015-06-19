.class public final Lcom/instagram/android/maps/e/f;
.super Ljava/lang/Enum;
.source "PhotoMapsEditManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/maps/e/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/instagram/android/maps/e/f;->a:I

    sput v0, Lcom/instagram/android/maps/e/f;->b:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/instagram/android/maps/e/f;->a:I

    aput v2, v0, v1

    sget v1, Lcom/instagram/android/maps/e/f;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/instagram/android/maps/e/f;->c:[I

    return-void
.end method
