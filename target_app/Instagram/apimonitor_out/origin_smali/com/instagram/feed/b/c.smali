.class final Lcom/instagram/feed/b/c;
.super Ljava/lang/Enum;
.source "FeedAutoLoadMoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/feed/b/c;",
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

    sput v3, Lcom/instagram/feed/b/c;->a:I

    sput v0, Lcom/instagram/feed/b/c;->b:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/instagram/feed/b/c;->a:I

    aput v2, v0, v1

    sget v1, Lcom/instagram/feed/b/c;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/instagram/feed/b/c;->c:[I

    return-void
.end method
