.class public final Lcom/facebook/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/bv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ba;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/aw;
    .registers 5

    new-instance v0, Lcom/facebook/aw;

    iget-object v1, p0, Lcom/facebook/ba;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ba;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ba;->c:Lcom/facebook/bv;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/bv;)V

    return-object v0
.end method

.method public a(Lcom/facebook/bv;)Lcom/facebook/ba;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ba;->c:Lcom/facebook/bv;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/ba;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ba;->b:Ljava/lang/String;

    return-object p0
.end method
