.class public final Lcom/instagram/feed/d/o;
.super Ljava/lang/Enum;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/feed/d/o;",
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

    sput v3, Lcom/instagram/feed/d/o;->a:I

    sput v0, Lcom/instagram/feed/d/o;->b:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/instagram/feed/d/o;->a:I

    aput v2, v0, v1

    sget v1, Lcom/instagram/feed/d/o;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/instagram/feed/d/o;->c:[I

    return-void
.end method

.method public static a(Z)I
    .registers 2

    if-eqz p0, :cond_5

    sget v0, Lcom/instagram/feed/d/o;->a:I

    :goto_4
    return v0

    :cond_5
    sget v0, Lcom/instagram/feed/d/o;->b:I

    goto :goto_4
.end method
