.class public final Lcom/facebook/f/a/g;
.super Ljava/lang/Enum;
.source "Axis.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/f/a/g;",
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

    sput v3, Lcom/facebook/f/a/g;->a:I

    sput v0, Lcom/facebook/f/a/g;->b:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/facebook/f/a/g;->a:I

    aput v2, v0, v1

    sget v1, Lcom/facebook/f/a/g;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/facebook/f/a/g;->c:[I

    return-void
.end method
