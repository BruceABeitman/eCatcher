.class public final Lcom/fasterxml/jackson/a/g/h;
.super Lcom/fasterxml/jackson/a/g/i;
.source "DefaultPrettyPrinter.java"


# static fields
.field public static final a:Lcom/fasterxml/jackson/a/g/h;

.field static final b:[C

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/a/g/h;

    invoke-direct {v0}, Lcom/fasterxml/jackson/a/g/h;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/a/g/h;->a:Lcom/fasterxml/jackson/a/g/h;

    const/4 v0, 0x0

    :try_start_8
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_20

    move-result-object v0

    :goto_e
    if-nez v0, :cond_12

    const-string v0, "\n"

    :cond_12
    sput-object v0, Lcom/fasterxml/jackson/a/g/h;->d:Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lcom/fasterxml/jackson/a/g/h;->b:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    return-void

    :catch_20
    move-exception v1

    goto :goto_e
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/h;I)V
    .registers 7

    const/16 v3, 0x40

    const/4 v2, 0x0

    sget-object v0, Lcom/fasterxml/jackson/a/g/h;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(Ljava/lang/String;)V

    if-lez p2, :cond_1d

    add-int v0, p2, p2

    :goto_c
    if-le v0, v3, :cond_18

    sget-object v1, Lcom/fasterxml/jackson/a/g/h;->b:[C

    invoke-virtual {p1, v1, v2, v3}, Lcom/fasterxml/jackson/a/h;->writeRaw([CII)V

    sget-object v1, Lcom/fasterxml/jackson/a/g/h;->b:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_c

    :cond_18
    sget-object v1, Lcom/fasterxml/jackson/a/g/h;->b:[C

    invoke-virtual {p1, v1, v2, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw([CII)V

    :cond_1d
    return-void
.end method

.method public final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
