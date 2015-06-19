.class public abstract Lcom/bbm/j/u;
.super Lcom/bbm/j/k;
.source "SingleshotMonitor.java"


# static fields
.field static m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bbm/j/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bbm/j/u;->m:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method

.method public static a(Lcom/bbm/j/s;)V
    .registers 3

    new-instance v0, Lcom/bbm/j/v;

    invoke-direct {v0, p0}, Lcom/bbm/j/v;-><init>(Lcom/bbm/j/s;)V

    sget-object v1, Lcom/bbm/j/u;->m:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    invoke-virtual {p0}, Lcom/bbm/j/u;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/bbm/j/u;->e()V

    :cond_9
    return-void
.end method

.method public abstract b()Z
.end method
