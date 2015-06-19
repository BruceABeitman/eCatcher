.class final synthetic Lcom/bbm/b/o;
.super Ljava/lang/Object;
.source "AdUtils.java"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/bbm/b/b;->values()[Lcom/bbm/b/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/b/o;->b:[I

    :try_start_9
    sget-object v0, Lcom/bbm/b/o;->b:[I

    sget-object v1, Lcom/bbm/b/b;->b:Lcom/bbm/b/b;

    invoke-virtual {v1}, Lcom/bbm/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/bbm/b/o;->b:[I

    sget-object v1, Lcom/bbm/b/b;->a:Lcom/bbm/b/b;

    invoke-virtual {v1}, Lcom/bbm/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a

    :goto_1f
    invoke-static {}, Lcom/bbm/b/p;->values()[Lcom/bbm/b/p;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/b/o;->a:[I

    :try_start_28
    sget-object v0, Lcom/bbm/b/o;->a:[I

    sget-object v1, Lcom/bbm/b/p;->b:Lcom/bbm/b/p;

    invoke-virtual {v1}, Lcom/bbm/b/p;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_68

    :goto_33
    :try_start_33
    sget-object v0, Lcom/bbm/b/o;->a:[I

    sget-object v1, Lcom/bbm/b/p;->d:Lcom/bbm/b/p;

    invoke-virtual {v1}, Lcom/bbm/b/p;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_66

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/bbm/b/o;->a:[I

    sget-object v1, Lcom/bbm/b/p;->e:Lcom/bbm/b/p;

    invoke-virtual {v1}, Lcom/bbm/b/p;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_64

    :goto_49
    :try_start_49
    sget-object v0, Lcom/bbm/b/o;->a:[I

    sget-object v1, Lcom/bbm/b/p;->c:Lcom/bbm/b/p;

    invoke-virtual {v1}, Lcom/bbm/b/p;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62

    :goto_54
    :try_start_54
    sget-object v0, Lcom/bbm/b/o;->a:[I

    sget-object v1, Lcom/bbm/b/p;->a:Lcom/bbm/b/p;

    invoke-virtual {v1}, Lcom/bbm/b/p;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_60

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    goto :goto_5f

    :catch_62
    move-exception v0

    goto :goto_54

    :catch_64
    move-exception v0

    goto :goto_49

    :catch_66
    move-exception v0

    goto :goto_3e

    :catch_68
    move-exception v0

    goto :goto_33

    :catch_6a
    move-exception v0

    goto :goto_1f

    :catch_6c
    move-exception v0

    goto :goto_14
.end method
