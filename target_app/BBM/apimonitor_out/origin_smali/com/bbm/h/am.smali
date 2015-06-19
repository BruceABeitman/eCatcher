.class final synthetic Lcom/bbm/h/am;
.super Ljava/lang/Object;
.source "AddContactsModelWrapper.java"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/bbm/h/ap;->values()[Lcom/bbm/h/ap;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/h/am;->b:[I

    :try_start_9
    sget-object v0, Lcom/bbm/h/am;->b:[I

    sget-object v1, Lcom/bbm/h/ap;->a:Lcom/bbm/h/ap;

    invoke-virtual {v1}, Lcom/bbm/h/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_93

    :goto_14
    :try_start_14
    sget-object v0, Lcom/bbm/h/am;->b:[I

    sget-object v1, Lcom/bbm/h/ap;->b:Lcom/bbm/h/ap;

    invoke-virtual {v1}, Lcom/bbm/h/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_91

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/bbm/h/am;->b:[I

    sget-object v1, Lcom/bbm/h/ap;->c:Lcom/bbm/h/ap;

    invoke-virtual {v1}, Lcom/bbm/h/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_8f

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/bbm/h/am;->b:[I

    sget-object v1, Lcom/bbm/h/ap;->d:Lcom/bbm/h/ap;

    invoke-virtual {v1}, Lcom/bbm/h/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_8d

    :goto_35
    invoke-static {}, Lcom/bbm/h/an;->values()[Lcom/bbm/h/an;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/h/am;->a:[I

    :try_start_3e
    sget-object v0, Lcom/bbm/h/am;->a:[I

    sget-object v1, Lcom/bbm/h/an;->a:Lcom/bbm/h/an;

    invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_8b

    :goto_49
    :try_start_49
    sget-object v0, Lcom/bbm/h/am;->a:[I

    sget-object v1, Lcom/bbm/h/an;->b:Lcom/bbm/h/an;

    invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_89

    :goto_54
    :try_start_54
    sget-object v0, Lcom/bbm/h/am;->a:[I

    sget-object v1, Lcom/bbm/h/an;->c:Lcom/bbm/h/an;

    invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_87

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/bbm/h/am;->a:[I

    sget-object v1, Lcom/bbm/h/an;->f:Lcom/bbm/h/an;

    invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_85

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/bbm/h/am;->a:[I

    sget-object v1, Lcom/bbm/h/an;->d:Lcom/bbm/h/an;

    invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_83

    :goto_75
    :try_start_75
    sget-object v0, Lcom/bbm/h/am;->a:[I

    sget-object v1, Lcom/bbm/h/an;->e:Lcom/bbm/h/an;

    invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_81

    :goto_80
    return-void

    :catch_81
    move-exception v0

    goto :goto_80

    :catch_83
    move-exception v0

    goto :goto_75

    :catch_85
    move-exception v0

    goto :goto_6a

    :catch_87
    move-exception v0

    goto :goto_5f

    :catch_89
    move-exception v0

    goto :goto_54

    :catch_8b
    move-exception v0

    goto :goto_49

    :catch_8d
    move-exception v0

    goto :goto_35

    :catch_8f
    move-exception v0

    goto :goto_2a

    :catch_91
    move-exception v0

    goto :goto_1f

    :catch_93
    move-exception v0

    goto :goto_14
.end method
