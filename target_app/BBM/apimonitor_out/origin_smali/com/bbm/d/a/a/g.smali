.class final Lcom/bbm/d/a/a/g;
.super Lcom/bbm/d/a/a/b;
.source "LiveList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/a/a/b",
        "<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/bbm/d/a/a/e;


# direct methods
.method private constructor <init>(Lcom/bbm/d/a/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/a/a/g;->c:Lcom/bbm/d/a/a/e;

    invoke-direct {p0}, Lcom/bbm/d/a/a/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/d/a/a/e;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/d/a/a/g;-><init>(Lcom/bbm/d/a/a/e;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/d/a/a;

    invoke-interface {p1}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
