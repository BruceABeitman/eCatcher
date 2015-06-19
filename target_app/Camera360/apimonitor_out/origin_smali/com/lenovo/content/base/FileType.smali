.class public final enum Lcom/lenovo/content/base/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/content/base/FileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DATA:Lcom/lenovo/content/base/FileType;

.field public static final enum PACKAGE:Lcom/lenovo/content/base/FileType;

.field public static final enum RAW:Lcom/lenovo/content/base/FileType;

.field public static final enum STORAGE:Lcom/lenovo/content/base/FileType;

.field public static final enum THUMBNAIL:Lcom/lenovo/content/base/FileType;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/content/base/FileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lcom/lenovo/content/base/FileType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v4, Lcom/lenovo/content/base/FileType;

    const-string/jumbo v5, "RAW"

    const-string/jumbo v6, "raw"

    invoke-direct {v4, v5, v7, v6}, Lcom/lenovo/content/base/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/FileType;->RAW:Lcom/lenovo/content/base/FileType;

    new-instance v4, Lcom/lenovo/content/base/FileType;

    const-string/jumbo v5, "THUMBNAIL"

    const-string/jumbo v6, "thumbnail"

    invoke-direct {v4, v5, v8, v6}, Lcom/lenovo/content/base/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;

    new-instance v4, Lcom/lenovo/content/base/FileType;

    const-string/jumbo v5, "DATA"

    const-string/jumbo v6, "data"

    invoke-direct {v4, v5, v9, v6}, Lcom/lenovo/content/base/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/FileType;->DATA:Lcom/lenovo/content/base/FileType;

    new-instance v4, Lcom/lenovo/content/base/FileType;

    const-string/jumbo v5, "STORAGE"

    const-string/jumbo v6, "storage"

    invoke-direct {v4, v5, v10, v6}, Lcom/lenovo/content/base/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/FileType;->STORAGE:Lcom/lenovo/content/base/FileType;

    new-instance v4, Lcom/lenovo/content/base/FileType;

    const-string/jumbo v5, "PACKAGE"

    const-string/jumbo v6, "package"

    invoke-direct {v4, v5, v11, v6}, Lcom/lenovo/content/base/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/FileType;->PACKAGE:Lcom/lenovo/content/base/FileType;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/lenovo/content/base/FileType;

    sget-object v5, Lcom/lenovo/content/base/FileType;->RAW:Lcom/lenovo/content/base/FileType;

    aput-object v5, v4, v7

    sget-object v5, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;

    aput-object v5, v4, v8

    sget-object v5, Lcom/lenovo/content/base/FileType;->DATA:Lcom/lenovo/content/base/FileType;

    aput-object v5, v4, v9

    sget-object v5, Lcom/lenovo/content/base/FileType;->STORAGE:Lcom/lenovo/content/base/FileType;

    aput-object v5, v4, v10

    sget-object v5, Lcom/lenovo/content/base/FileType;->PACKAGE:Lcom/lenovo/content/base/FileType;

    aput-object v5, v4, v11

    sput-object v4, Lcom/lenovo/content/base/FileType;->c:[Lcom/lenovo/content/base/FileType;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lenovo/content/base/FileType;->b:Ljava/util/Map;

    invoke-static {}, Lcom/lenovo/content/base/FileType;->values()[Lcom/lenovo/content/base/FileType;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_6c
    if-ge v1, v3, :cond_7a

    aget-object v2, v0, v1

    sget-object v4, Lcom/lenovo/content/base/FileType;->b:Ljava/util/Map;

    iget-object v5, v2, Lcom/lenovo/content/base/FileType;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_7a
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/lenovo/content/base/FileType;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/lenovo/content/base/FileType;
    .registers 3

    sget-object v0, Lcom/lenovo/content/base/FileType;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/content/base/FileType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/content/base/FileType;
    .registers 2

    const-class v0, Lcom/lenovo/content/base/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/content/base/FileType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/content/base/FileType;
    .registers 1

    sget-object v0, Lcom/lenovo/content/base/FileType;->c:[Lcom/lenovo/content/base/FileType;

    invoke-virtual {v0}, [Lcom/lenovo/content/base/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/content/base/FileType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/base/FileType;->a:Ljava/lang/String;

    return-object v0
.end method
