.class final synthetic Lcom/fasterxml/jackson/a/m;
.super Ljava/lang/Object;
.source "JsonParser.java"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/fasterxml/jackson/a/r;->values()[Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fasterxml/jackson/a/m;->a:[I

    :try_start_9
    sget-object v0, Lcom/fasterxml/jackson/a/m;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/fasterxml/jackson/a/m;->a:[I

    sget-object v1, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
