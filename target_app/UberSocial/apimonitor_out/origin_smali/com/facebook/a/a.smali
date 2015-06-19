.class public Lcom/facebook/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Lcom/facebook/a/e;


# direct methods
.method public constructor <init>(Lcom/facebook/a/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/a/a;->a:Lcom/facebook/a/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/facebook/a/b;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/a/a;->a(Landroid/content/Context;Lcom/facebook/a/b;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/facebook/a/b;Ljava/lang/Object;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/facebook/a/a$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/a/a$1;-><init>(Lcom/facebook/a/a;Landroid/content/Context;Lcom/facebook/a/b;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/facebook/a/a$1;->start()V

    return-void
.end method

.method public a(Landroid/os/Bundle;Lcom/facebook/a/b;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const-string v3, "GET"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Lcom/facebook/a/b;Ljava/lang/Object;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const-string v3, "GET"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/a/b;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v3, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/a/b;Ljava/lang/Object;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v3, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/facebook/a/a$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/a/a$2;-><init>(Lcom/facebook/a/a;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/facebook/a/a$2;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/a/b;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V

    return-void
.end method
