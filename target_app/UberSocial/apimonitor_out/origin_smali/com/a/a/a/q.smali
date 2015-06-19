.class final Lcom/a/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/a/a/a/v;

.field private synthetic b:Z

.field private synthetic c:Lcom/a/a/a/o;


# direct methods
.method constructor <init>(Lcom/a/a/a/o;Lcom/a/a/a/v;Z)V
    .registers 4

    iput-object p1, p0, Lcom/a/a/a/q;->c:Lcom/a/a/a/o;

    iput-object p2, p0, Lcom/a/a/a/q;->a:Lcom/a/a/a/v;

    iput-boolean p3, p0, Lcom/a/a/a/q;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/q;->c:Lcom/a/a/a/o;

    iget-object v0, v0, Lcom/a/a/a/o;->a:Lcom/a/a/a/u;

    iget-object v1, p0, Lcom/a/a/a/q;->a:Lcom/a/a/a/v;

    invoke-interface {v0, v1}, Lcom/a/a/a/u;->a(Lcom/a/a/a/v;)V

    iget-boolean v0, p0, Lcom/a/a/a/q;->b:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/a/a/a/q;->c:Lcom/a/a/a/o;

    iget-object v0, v0, Lcom/a/a/a/o;->a:Lcom/a/a/a/u;

    invoke-interface {v0}, Lcom/a/a/a/u;->d()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v0, "Crashlytics failed to record session event."

    invoke-static {v0}, Lcom/a/a/a/bc;->d(Ljava/lang/String;)V

    goto :goto_14
.end method
