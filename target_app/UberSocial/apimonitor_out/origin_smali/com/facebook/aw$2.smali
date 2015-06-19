.class Lcom/facebook/aw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/aw;->e(Lcom/facebook/ax;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/aw;


# direct methods
.method constructor <init>(Lcom/facebook/aw;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/aw$2;->a:Lcom/facebook/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/n;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/aw$2;->a:Lcom/facebook/aw;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/facebook/aw;->a(Lcom/facebook/aw;ILcom/facebook/n;)V

    return-void
.end method
