.class Lcom/facebook/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/e;->a(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/bj;Lcom/facebook/a/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/f;

.field final synthetic b:Lcom/facebook/a/e;


# direct methods
.method constructor <init>(Lcom/facebook/a/e;Lcom/facebook/a/f;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/a/e$1;->b:Lcom/facebook/a/e;

    iput-object p2, p0, Lcom/facebook/a/e$1;->a:Lcom/facebook/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/a/e$1;->b:Lcom/facebook/a/e;

    iget-object v1, p0, Lcom/facebook/a/e$1;->a:Lcom/facebook/a/f;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/facebook/a/e;->a(Lcom/facebook/a/e;Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;Lcom/facebook/a/f;)V

    return-void
.end method
