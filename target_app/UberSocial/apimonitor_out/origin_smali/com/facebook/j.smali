.class abstract Lcom/facebook/j;
.super Lcom/facebook/f;
.source "SourceFile"


# static fields
.field private static final c:J = 0x1L


# instance fields
.field final synthetic b:Lcom/facebook/d;


# direct methods
.method constructor <init>(Lcom/facebook/d;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/j;->b:Lcom/facebook/d;

    invoke-direct {p0, p1}, Lcom/facebook/f;-><init>(Lcom/facebook/d;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/facebook/j;->b:Lcom/facebook/d;

    invoke-virtual {v1}, Lcom/facebook/d;->i()Lcom/facebook/p;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/facebook/p;->a(Landroid/content/Intent;I)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_d} :catch_f

    const/4 v0, 0x1

    goto :goto_3

    :catch_f
    move-exception v1

    goto :goto_3
.end method
