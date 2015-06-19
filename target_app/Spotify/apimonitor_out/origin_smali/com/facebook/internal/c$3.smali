.class final Lcom/facebook/internal/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/c;


# direct methods
.method constructor <init>(Lcom/facebook/internal/c;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/internal/c$3;->a:Lcom/facebook/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/c$3;->a:Lcom/facebook/internal/c;

    invoke-static {v0}, Lcom/facebook/internal/c;->b(Lcom/facebook/internal/c;)V

    return-void
.end method
