.class synthetic Lcom/google/android/gms/tagmanager/ap$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/ap;
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/tagmanager/aq;->values()[Lcom/google/android/gms/tagmanager/aq;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/tagmanager/ap$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/google/android/gms/tagmanager/ap$1;->a:[I

    sget-object v1, Lcom/google/android/gms/tagmanager/aq;->b:Lcom/google/android/gms/tagmanager/aq;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/aq;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/gms/tagmanager/ap$1;->a:[I

    sget-object v1, Lcom/google/android/gms/tagmanager/aq;->c:Lcom/google/android/gms/tagmanager/aq;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/aq;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/tagmanager/ap$1;->a:[I

    sget-object v1, Lcom/google/android/gms/tagmanager/aq;->a:Lcom/google/android/gms/tagmanager/aq;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/aq;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
