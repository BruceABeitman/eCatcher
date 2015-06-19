.class final synthetic Lcom/bbm/ui/a/af;
.super Ljava/lang/Object;
.source "UpdatesAdapter.java"


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

    sput-object v0, Lcom/bbm/ui/a/af;->b:[I

    :try_start_9
    sget-object v0, Lcom/bbm/ui/a/af;->b:[I

    sget-object v1, Lcom/bbm/b/b;->b:Lcom/bbm/b/b;

    invoke-virtual {v1}, Lcom/bbm/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_79

    :goto_14
    :try_start_14
    sget-object v0, Lcom/bbm/ui/a/af;->b:[I

    sget-object v1, Lcom/bbm/b/b;->a:Lcom/bbm/b/b;

    invoke-virtual {v1}, Lcom/bbm/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_77

    :goto_1f
    invoke-static {}, Lcom/bbm/util/ex;->values()[Lcom/bbm/util/ex;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/ui/a/af;->a:[I

    :try_start_28
    sget-object v0, Lcom/bbm/ui/a/af;->a:[I

    sget-object v1, Lcom/bbm/util/ex;->c:Lcom/bbm/util/ex;

    invoke-virtual {v1}, Lcom/bbm/util/ex;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_75

    :goto_33
    :try_start_33
    sget-object v0, Lcom/bbm/ui/a/af;->a:[I

    sget-object v1, Lcom/bbm/util/ex;->d:Lcom/bbm/util/ex;

    invoke-virtual {v1}, Lcom/bbm/util/ex;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_73

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/bbm/ui/a/af;->a:[I

    sget-object v1, Lcom/bbm/util/ex;->e:Lcom/bbm/util/ex;

    invoke-virtual {v1}, Lcom/bbm/util/ex;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_71

    :goto_49
    :try_start_49
    sget-object v0, Lcom/bbm/ui/a/af;->a:[I

    sget-object v1, Lcom/bbm/util/ex;->f:Lcom/bbm/util/ex;

    invoke-virtual {v1}, Lcom/bbm/util/ex;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_6f

    :goto_54
    :try_start_54
    sget-object v0, Lcom/bbm/ui/a/af;->a:[I

    sget-object v1, Lcom/bbm/util/ex;->a:Lcom/bbm/util/ex;

    invoke-virtual {v1}, Lcom/bbm/util/ex;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_6d

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/bbm/ui/a/af;->a:[I

    sget-object v1, Lcom/bbm/util/ex;->b:Lcom/bbm/util/ex;

    invoke-virtual {v1}, Lcom/bbm/util/ex;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_6b

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    goto :goto_6a

    :catch_6d
    move-exception v0

    goto :goto_5f

    :catch_6f
    move-exception v0

    goto :goto_54

    :catch_71
    move-exception v0

    goto :goto_49

    :catch_73
    move-exception v0

    goto :goto_3e

    :catch_75
    move-exception v0

    goto :goto_33

    :catch_77
    move-exception v0

    goto :goto_1f

    :catch_79
    move-exception v0

    goto :goto_14
.end method
