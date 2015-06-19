.class public final Lcom/instagram/user/c/g;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/user/c/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field private static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/instagram/user/c/g;->a:I

    sput v4, Lcom/instagram/user/c/g;->b:I

    sput v5, Lcom/instagram/user/c/g;->c:I

    sput v6, Lcom/instagram/user/c/g;->d:I

    sput v0, Lcom/instagram/user/c/g;->e:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/instagram/user/c/g;->a:I

    aput v2, v0, v1

    sget v1, Lcom/instagram/user/c/g;->b:I

    aput v1, v0, v3

    sget v1, Lcom/instagram/user/c/g;->c:I

    aput v1, v0, v4

    sget v1, Lcom/instagram/user/c/g;->d:I

    aput v1, v0, v5

    sget v1, Lcom/instagram/user/c/g;->e:I

    aput v1, v0, v6

    sput-object v0, Lcom/instagram/user/c/g;->f:[I

    return-void
.end method

.method public static a()[I
    .registers 1

    sget-object v0, Lcom/instagram/user/c/g;->f:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
