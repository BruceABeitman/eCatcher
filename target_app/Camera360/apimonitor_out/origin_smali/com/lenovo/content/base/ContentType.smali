.class public final enum Lcom/lenovo/content/base/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/content/base/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP:Lcom/lenovo/content/base/ContentType;

.field public static final enum CALLLOG:Lcom/lenovo/content/base/ContentType;

.field public static final enum CONTACT:Lcom/lenovo/content/base/ContentType;

.field public static final enum FILE:Lcom/lenovo/content/base/ContentType;

.field public static final enum MMS:Lcom/lenovo/content/base/ContentType;

.field public static final enum MUSIC:Lcom/lenovo/content/base/ContentType;

.field public static final enum PHOTO:Lcom/lenovo/content/base/ContentType;

.field public static final enum SMS:Lcom/lenovo/content/base/ContentType;

.field public static final enum VIDEO:Lcom/lenovo/content/base/ContentType;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/content/base/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lcom/lenovo/content/base/ContentType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v5, "MUSIC"

    const-string/jumbo v6, "music"

    invoke-direct {v4, v5, v8, v6}, Lcom/lenovo/content/base/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;

    new-instance v4, Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v5, "VIDEO"

    const-string/jumbo v6, "video"

    invoke-direct {v4, v5, v9, v6}, Lcom/lenovo/content/base/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/ContentType;->VIDEO:Lcom/lenovo/content/base/ContentType;

    new-instance v4, Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v5, "PHOTO"

    const-string/jumbo v6, "photo"

    invoke-direct {v4, v5, v10, v6}, Lcom/lenovo/content/base/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;

    new-instance v4, Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v5, "APP"

    const-string/jumbo v6, "app"

    invoke-direct {v4, v5, v11, v6}, Lcom/lenovo/content/base/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;

    new-instance v4, Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v5, "CONTACT"

    const-string/jumbo v6, "contact"

    invoke-direct {v4, v5, v12, v6}, Lcom/lenovo/content/base/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/ContentType;->CONTACT:Lcom/lenovo/content/base/ContentType;

    new-instance v4, Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v5, "FILE"

    const/4 v6, 0x5

    const-string/jumbo v7, "file"

    invoke-direct {v4, v5, v6, v7}, Lcom/lenovo/content/base/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;

    new-instance v4, Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v5, "CALLLOG"

    const/4 v6, 0x6

    const-string/jumbo v7, "calllog"

    invoke-direct {v4, v5, v6, v7}, Lcom/lenovo/content/base/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/ContentType;->CALLLOG:Lcom/lenovo/content/base/ContentType;

    new-instance v4, Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v5, "SMS"

    const/4 v6, 0x7

    const-string/jumbo v7, "sms"

    invoke-direct {v4, v5, v6, v7}, Lcom/lenovo/content/base/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/ContentType;->SMS:Lcom/lenovo/content/base/ContentType;

    new-instance v4, Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v5, "MMS"

    const/16 v6, 0x8

    const-string/jumbo v7, "mms"

    invoke-direct {v4, v5, v6, v7}, Lcom/lenovo/content/base/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/lenovo/content/base/ContentType;->MMS:Lcom/lenovo/content/base/ContentType;

    const/16 v4, 0x9

    new-array v4, v4, [Lcom/lenovo/content/base/ContentType;

    sget-object v5, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;

    aput-object v5, v4, v8

    sget-object v5, Lcom/lenovo/content/base/ContentType;->VIDEO:Lcom/lenovo/content/base/ContentType;

    aput-object v5, v4, v9

    sget-object v5, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;

    aput-object v5, v4, v10

    sget-object v5, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;

    aput-object v5, v4, v11

    sget-object v5, Lcom/lenovo/content/base/ContentType;->CONTACT:Lcom/lenovo/content/base/ContentType;

    aput-object v5, v4, v12

    const/4 v5, 0x5

    sget-object v6, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/lenovo/content/base/ContentType;->CALLLOG:Lcom/lenovo/content/base/ContentType;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/lenovo/content/base/ContentType;->SMS:Lcom/lenovo/content/base/ContentType;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/lenovo/content/base/ContentType;->MMS:Lcom/lenovo/content/base/ContentType;

    aput-object v6, v4, v5

    sput-object v4, Lcom/lenovo/content/base/ContentType;->c:[Lcom/lenovo/content/base/ContentType;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lenovo/content/base/ContentType;->b:Ljava/util/Map;

    invoke-static {}, Lcom/lenovo/content/base/ContentType;->values()[Lcom/lenovo/content/base/ContentType;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_bb
    if-ge v1, v3, :cond_c9

    aget-object v2, v0, v1

    sget-object v4, Lcom/lenovo/content/base/ContentType;->b:Ljava/util/Map;

    iget-object v5, v2, Lcom/lenovo/content/base/ContentType;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    :cond_c9
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

    iput-object p3, p0, Lcom/lenovo/content/base/ContentType;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/lenovo/content/base/ContentType;
    .registers 3

    sget-object v0, Lcom/lenovo/content/base/ContentType;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/content/base/ContentType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/content/base/ContentType;
    .registers 2

    const-class v0, Lcom/lenovo/content/base/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/content/base/ContentType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/content/base/ContentType;
    .registers 1

    sget-object v0, Lcom/lenovo/content/base/ContentType;->c:[Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v0}, [Lcom/lenovo/content/base/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/content/base/ContentType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/base/ContentType;->a:Ljava/lang/String;

    return-object v0
.end method
