.class final Lcom/facebook/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/internal/o;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/internal/o;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/l;->b:Lcom/facebook/internal/o;

    iput-boolean p3, p0, Lcom/facebook/internal/l;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/internal/l;->b:Lcom/facebook/internal/o;

    iget-object v1, p0, Lcom/facebook/internal/l;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/facebook/internal/l;->c:Z

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/o;Landroid/content/Context;Z)V

    return-void
.end method
