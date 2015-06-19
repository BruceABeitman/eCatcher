.class final Lcom/a/a/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/a/a/a/o;


# direct methods
.method constructor <init>(Lcom/a/a/a/o;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/a/a/a/p;->b:Lcom/a/a/a/o;

    iput-object p2, p0, Lcom/a/a/a/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/p;->b:Lcom/a/a/a/o;

    iget-object v10, v0, Lcom/a/a/a/o;->a:Lcom/a/a/a/u;

    iget-object v0, p0, Lcom/a/a/a/p;->b:Lcom/a/a/a/o;

    invoke-static {v0}, Lcom/a/a/a/o;->a(Lcom/a/a/a/o;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/p;->b:Lcom/a/a/a/o;

    invoke-static {v1}, Lcom/a/a/a/o;->b(Lcom/a/a/a/o;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/p;->b:Lcom/a/a/a/o;

    invoke-static {v2}, Lcom/a/a/a/o;->c(Lcom/a/a/a/o;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/a/p;->b:Lcom/a/a/a/o;

    invoke-static {v3}, Lcom/a/a/a/o;->d(Lcom/a/a/a/o;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/a/a/a/p;->b:Lcom/a/a/a/o;

    invoke-static {v4}, Lcom/a/a/a/o;->e(Lcom/a/a/a/o;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/a/a/a/p;->b:Lcom/a/a/a/o;

    invoke-static {v5}, Lcom/a/a/a/o;->f(Lcom/a/a/a/o;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/a/a/a/p;->b:Lcom/a/a/a/o;

    invoke-static {v6}, Lcom/a/a/a/o;->g(Lcom/a/a/a/o;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/a/a/a/p;->b:Lcom/a/a/a/o;

    invoke-static {v7}, Lcom/a/a/a/o;->h(Lcom/a/a/a/o;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/a/a/a/p;->a:Ljava/lang/String;

    const-string v9, "sessionId"

    invoke-static {v9, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    sget-object v8, Lcom/a/a/a/w;->i:Lcom/a/a/a/w;

    invoke-static/range {v0 .. v9}, Lcom/a/a/a/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/w;Ljava/util/Map;)Lcom/a/a/a/v;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/a/a/a/u;->a(Lcom/a/a/a/v;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    :goto_45
    return-void

    :catch_46
    move-exception v0

    const-string v0, "Crashlytics failed to record crash event"

    invoke-static {v0}, Lcom/a/a/a/bc;->d(Ljava/lang/String;)V

    goto :goto_45
.end method
