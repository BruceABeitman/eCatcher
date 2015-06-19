.class public final enum Lcom/bbm/ui/activities/zt;
.super Ljava/lang/Enum;
.source "NewListItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/ui/activities/zt;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/ui/activities/zt;

.field public static final enum b:Lcom/bbm/ui/activities/zt;

.field public static final enum c:Lcom/bbm/ui/activities/zt;

.field private static final f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/ui/activities/zt;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/bbm/ui/activities/zt;


# instance fields
.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/bbm/ui/activities/zt;

    const-string v2, "LOW"

    const v3, 0x7f0e03b9

    const-string v4, "Low"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/bbm/ui/activities/zt;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/bbm/ui/activities/zt;->a:Lcom/bbm/ui/activities/zt;

    new-instance v1, Lcom/bbm/ui/activities/zt;

    const-string v2, "NORMAL"

    const v3, 0x7f0e03ba

    const-string v4, "Normal"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/bbm/ui/activities/zt;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/bbm/ui/activities/zt;->b:Lcom/bbm/ui/activities/zt;

    new-instance v1, Lcom/bbm/ui/activities/zt;

    const-string v2, "HIGH"

    const v3, 0x7f0e03b8

    const-string v4, "High"

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/bbm/ui/activities/zt;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/bbm/ui/activities/zt;->c:Lcom/bbm/ui/activities/zt;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/bbm/ui/activities/zt;

    sget-object v2, Lcom/bbm/ui/activities/zt;->a:Lcom/bbm/ui/activities/zt;

    aput-object v2, v1, v0

    sget-object v2, Lcom/bbm/ui/activities/zt;->b:Lcom/bbm/ui/activities/zt;

    aput-object v2, v1, v5

    sget-object v2, Lcom/bbm/ui/activities/zt;->c:Lcom/bbm/ui/activities/zt;

    aput-object v2, v1, v6

    sput-object v1, Lcom/bbm/ui/activities/zt;->g:[Lcom/bbm/ui/activities/zt;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/bbm/ui/activities/zt;->f:Ljava/util/Hashtable;

    invoke-static {}, Lcom/bbm/ui/activities/zt;->values()[Lcom/bbm/ui/activities/zt;

    move-result-object v1

    array-length v2, v1

    :goto_4a
    if-ge v0, v2, :cond_58

    aget-object v3, v1, v0

    sget-object v4, Lcom/bbm/ui/activities/zt;->f:Ljava/util/Hashtable;

    iget-object v5, v3, Lcom/bbm/ui/activities/zt;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_58
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bbm/ui/activities/zt;->d:I

    iput-object p4, p0, Lcom/bbm/ui/activities/zt;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bbm/ui/activities/zt;
    .registers 2

    sget-object v0, Lcom/bbm/ui/activities/zt;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/zt;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/bbm/ui/activities/zt;->b:Lcom/bbm/ui/activities/zt;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/activities/zt;
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/zt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/zt;

    return-object v0
.end method

.method public static values()[Lcom/bbm/ui/activities/zt;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/zt;->g:[Lcom/bbm/ui/activities/zt;

    invoke-virtual {v0}, [Lcom/bbm/ui/activities/zt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/ui/activities/zt;

    return-object v0
.end method
