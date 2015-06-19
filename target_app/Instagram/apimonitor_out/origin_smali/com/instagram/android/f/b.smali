.class final synthetic Lcom/instagram/android/f/b;
.super Ljava/lang/Object;
.source "TrimmingTextWatcher.java"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/instagram/android/f/c;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/instagram/android/f/b;->a:[I

    :try_start_9
    sget-object v0, Lcom/instagram/android/f/b;->a:[I

    sget v1, Lcom/instagram/android/f/c;->c:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_29

    :goto_12
    :try_start_12
    sget-object v0, Lcom/instagram/android/f/b;->a:[I

    sget v1, Lcom/instagram/android/f/c;->b:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_27

    :goto_1b
    :try_start_1b
    sget-object v0, Lcom/instagram/android/f/b;->a:[I

    sget v1, Lcom/instagram/android/f/c;->a:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_24

    :catch_27
    move-exception v0

    goto :goto_1b

    :catch_29
    move-exception v0

    goto :goto_12
.end method
