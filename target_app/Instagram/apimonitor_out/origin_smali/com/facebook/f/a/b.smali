.class final synthetic Lcom/facebook/f/a/b;
.super Ljava/lang/Object;
.source "AdvancedDragDetector.java"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/f/a/e;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/f/a/b;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/f/a/b;->a:[I

    sget v1, Lcom/facebook/f/a/e;->d:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    goto :goto_12
.end method
