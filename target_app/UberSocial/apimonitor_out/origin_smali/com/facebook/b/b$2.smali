.class Lcom/facebook/b/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/b/b;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/b/b;


# direct methods
.method constructor <init>(Lcom/facebook/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/b/b$2;->a:Lcom/facebook/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/b/b$2;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;)V

    return-void
.end method
