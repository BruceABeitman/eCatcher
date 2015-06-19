.class public final Lcom/bbm/setup/an;
.super Ljava/lang/Object;
.source "WhatsNewDetector.java"


# instance fields
.field public a:Lcom/bbm/j/k;

.field b:Lcom/bbm/s;

.field c:Lcom/bbm/af;


# direct methods
.method public constructor <init>(Lcom/bbm/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/setup/ao;

    invoke-direct {v0, p0}, Lcom/bbm/setup/ao;-><init>(Lcom/bbm/setup/an;)V

    iput-object v0, p0, Lcom/bbm/setup/an;->a:Lcom/bbm/j/k;

    iput-object p1, p0, Lcom/bbm/setup/an;->b:Lcom/bbm/s;

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/setup/an;->c:Lcom/bbm/af;

    return-void
.end method
