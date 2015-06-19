.class public final Lcom/facebook/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/l;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/UUID;)V
    .registers 2

    invoke-static {p0}, Lcom/facebook/k;->b(Ljava/util/UUID;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/io/File;)V

    return-void
.end method

.method private static b(Ljava/util/UUID;)Ljava/io/File;
    .registers 4

    sget-object v0, Lcom/facebook/k;->b:Ljava/io/File;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/facebook/k;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private static b(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/facebook/k;->b(Ljava/util/UUID;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    new-instance v1, Ljava/io/File;

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_13} :catch_15

    move-object v0, v1

    goto :goto_7

    :catch_15
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method public final a(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-static {p2}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_e

    :cond_8
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    :cond_e
    :try_start_e
    invoke-static {p1, p2}, Lcom/facebook/k;->b(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v0

    return-object v0

    :catch_13
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method
