.class final synthetic Lcom/bbm/ui/c/di;
.super Ljava/lang/Object;
.source "GroupsFragment.java"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/bbm/g/aj;->values()[Lcom/bbm/g/aj;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/ui/c/di;->b:[I

    :try_start_9
    sget-object v0, Lcom/bbm/ui/c/di;->b:[I

    sget-object v1, Lcom/bbm/g/aj;->b:Lcom/bbm/g/aj;

    invoke-virtual {v1}, Lcom/bbm/g/aj;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/bbm/ui/c/di;->b:[I

    sget-object v1, Lcom/bbm/g/aj;->a:Lcom/bbm/g/aj;

    invoke-virtual {v1}, Lcom/bbm/g/aj;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/bbm/ui/c/di;->b:[I

    sget-object v1, Lcom/bbm/g/aj;->e:Lcom/bbm/g/aj;

    invoke-virtual {v1}, Lcom/bbm/g/aj;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_68

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/bbm/ui/c/di;->b:[I

    sget-object v1, Lcom/bbm/g/aj;->c:Lcom/bbm/g/aj;

    invoke-virtual {v1}, Lcom/bbm/g/aj;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_66

    :goto_35
    :try_start_35
    sget-object v0, Lcom/bbm/ui/c/di;->b:[I

    sget-object v1, Lcom/bbm/g/aj;->d:Lcom/bbm/g/aj;

    invoke-virtual {v1}, Lcom/bbm/g/aj;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_64

    :goto_40
    invoke-static {}, Lcom/bbm/ui/c/dt;->values()[Lcom/bbm/ui/c/dt;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/ui/c/di;->a:[I

    :try_start_49
    sget-object v0, Lcom/bbm/ui/c/di;->a:[I

    sget-object v1, Lcom/bbm/ui/c/dt;->a:Lcom/bbm/ui/c/dt;

    invoke-virtual {v1}, Lcom/bbm/ui/c/dt;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62

    :goto_54
    :try_start_54
    sget-object v0, Lcom/bbm/ui/c/di;->a:[I

    sget-object v1, Lcom/bbm/ui/c/dt;->b:Lcom/bbm/ui/c/dt;

    invoke-virtual {v1}, Lcom/bbm/ui/c/dt;->ordinal()I

    move-result v1

    const/4 v2, 0x2

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

    goto :goto_40

    :catch_66
    move-exception v0

    goto :goto_35

    :catch_68
    move-exception v0

    goto :goto_2a

    :catch_6a
    move-exception v0

    goto :goto_1f

    :catch_6c
    move-exception v0

    goto :goto_14
.end method
