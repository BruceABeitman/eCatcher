.class final Lcom/facebook/e/c/m;
.super Ljava/lang/Object;
.source "Tracer.java"


# instance fields
.field public final a:Lcom/facebook/e/c/c;

.field public b:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/e/c/c;

    invoke-direct {v0}, Lcom/facebook/e/c/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/e/c/m;-><init>()V

    return-void
.end method
