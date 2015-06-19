.class public Lcom/facebook/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/facebook/c/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/c/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/widget/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/widget/k;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/j;->a:Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Lcom/facebook/widget/k;->c:Lcom/facebook/widget/k;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    if-nez v0, :cond_e

    sget-object v0, Lcom/facebook/widget/k;->b:Lcom/facebook/widget/k;

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/k;

    goto :goto_6
.end method
