.class synthetic Lcom/lenovo/anyshare/sdk/internal/bo$1;
.super Ljava/lang/Object;
.source "BaseContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/lenovo/content/base/ContentType;->values()[Lcom/lenovo/content/base/ContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I

    sget-object v1, Lcom/lenovo/content/base/ContentType;->CONTACT:Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_7f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I

    sget-object v1, Lcom/lenovo/content/base/ContentType;->CALLLOG:Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_7d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I

    sget-object v1, Lcom/lenovo/content/base/ContentType;->SMS:Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_7b

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I

    sget-object v1, Lcom/lenovo/content/base/ContentType;->MMS:Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_79

    :goto_35
    :try_start_35
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I

    sget-object v1, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_77

    :goto_40
    :try_start_40
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I

    sget-object v1, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_75

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I

    sget-object v1, Lcom/lenovo/content/base/ContentType;->VIDEO:Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_73

    :goto_56
    :try_start_56
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I

    sget-object v1, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_71

    :goto_62
    :try_start_62
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bo$1;->a:[I

    sget-object v1, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    :goto_6e
    return-void

    :catch_6f
    move-exception v0

    goto :goto_6e

    :catch_71
    move-exception v0

    goto :goto_62

    :catch_73
    move-exception v0

    goto :goto_56

    :catch_75
    move-exception v0

    goto :goto_4b

    :catch_77
    move-exception v0

    goto :goto_40

    :catch_79
    move-exception v0

    goto :goto_35

    :catch_7b
    move-exception v0

    goto :goto_2a

    :catch_7d
    move-exception v0

    goto :goto_1f

    :catch_7f
    move-exception v0

    goto :goto_14
.end method
