.class public final Lcom/instagram/android/f/c;
.super Ljava/lang/Enum;
.source "TrimmingTextWatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/f/c;",
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

    sput v3, Lcom/instagram/android/f/c;->a:I

    sput v4, Lcom/instagram/android/f/c;->b:I

    sput v0, Lcom/instagram/android/f/c;->c:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/instagram/android/f/c;->a:I

    aput v2, v0, v1

    sget v1, Lcom/instagram/android/f/c;->b:I

    aput v1, v0, v3

    sget v1, Lcom/instagram/android/f/c;->c:I

    aput v1, v0, v4

    sput-object v0, Lcom/instagram/android/f/c;->d:[I

    return-void
.end method

.method public static a()[I
    .registers 1

    sget-object v0, Lcom/instagram/android/f/c;->d:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
