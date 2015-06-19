.class public Lcom/bbm/l/c/e;
.super Lcom/bbm/l/c/a;
.source "AsyncStickerPackListFetcher.java"


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/bbm/l/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/l/c/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/l/c/a;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bbm/l/c/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/bbm/util/bo;Lcom/bbm/l/c/i;)V
    .registers 4

    new-instance v0, Lcom/bbm/l/c/f;

    invoke-direct {v0, p0, p1}, Lcom/bbm/l/c/f;-><init>(Lcom/bbm/util/bo;Lcom/bbm/l/c/i;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bbm/l/c/f;->c([Ljava/lang/Object;)Lcom/bbm/util/b;

    return-void
.end method

.method static synthetic a(Ljava/net/URL;Lcom/bbm/util/bo;Lcom/bbm/l/c/i;)V
    .registers 4

    if-nez p0, :cond_d

    if-eqz p2, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0}, Lcom/bbm/l/c/i;->a(Ljava/util/List;)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    new-instance v0, Lcom/bbm/l/c/g;

    invoke-direct {v0, p2}, Lcom/bbm/l/c/g;-><init>(Lcom/bbm/l/c/i;)V

    invoke-virtual {p1, p0, v0}, Lcom/bbm/util/bo;->a(Ljava/net/URL;Lcom/bbm/util/bu;)V

    goto :goto_c
.end method
