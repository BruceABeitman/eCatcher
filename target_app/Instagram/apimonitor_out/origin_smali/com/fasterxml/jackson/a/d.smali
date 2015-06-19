.class public final enum Lcom/fasterxml/jackson/a/d;
.super Ljava/lang/Enum;
.source "JsonEncoding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fasterxml/jackson/a/d;

.field public static final enum b:Lcom/fasterxml/jackson/a/d;

.field public static final enum c:Lcom/fasterxml/jackson/a/d;

.field public static final enum d:Lcom/fasterxml/jackson/a/d;

.field public static final enum e:Lcom/fasterxml/jackson/a/d;

.field private static final synthetic h:[Lcom/fasterxml/jackson/a/d;


# instance fields
.field protected final f:Ljava/lang/String;

.field protected final g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/fasterxml/jackson/a/d;

    const-string v1, "UTF8"

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/fasterxml/jackson/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    new-instance v0, Lcom/fasterxml/jackson/a/d;

    const-string v1, "UTF16_BE"

    const-string v2, "UTF-16BE"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/fasterxml/jackson/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/fasterxml/jackson/a/d;->b:Lcom/fasterxml/jackson/a/d;

    new-instance v0, Lcom/fasterxml/jackson/a/d;

    const-string v1, "UTF16_LE"

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/fasterxml/jackson/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/fasterxml/jackson/a/d;->c:Lcom/fasterxml/jackson/a/d;

    new-instance v0, Lcom/fasterxml/jackson/a/d;

    const-string v1, "UTF32_BE"

    const-string v2, "UTF-32BE"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/fasterxml/jackson/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/fasterxml/jackson/a/d;->d:Lcom/fasterxml/jackson/a/d;

    new-instance v0, Lcom/fasterxml/jackson/a/d;

    const-string v1, "UTF32_LE"

    const-string v2, "UTF-32LE"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/fasterxml/jackson/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/fasterxml/jackson/a/d;->e:Lcom/fasterxml/jackson/a/d;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fasterxml/jackson/a/d;

    sget-object v1, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/a/d;->b:Lcom/fasterxml/jackson/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/a/d;->c:Lcom/fasterxml/jackson/a/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/a/d;->d:Lcom/fasterxml/jackson/a/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/a/d;->e:Lcom/fasterxml/jackson/a/d;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fasterxml/jackson/a/d;->h:[Lcom/fasterxml/jackson/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fasterxml/jackson/a/d;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/fasterxml/jackson/a/d;->g:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/a/d;
    .registers 2

    const-class v0, Lcom/fasterxml/jackson/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/a/d;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/a/d;
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/a/d;->h:[Lcom/fasterxml/jackson/a/d;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/a/d;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d;->g:Z

    return v0
.end method
