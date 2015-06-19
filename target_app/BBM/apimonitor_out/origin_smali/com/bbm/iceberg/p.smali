.class final Lcom/bbm/iceberg/p;
.super Ljava/lang/Object;
.source "LocalContactList.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/iceberg/n;


# direct methods
.method constructor <init>(Lcom/bbm/iceberg/n;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/iceberg/p;->a:Lcom/bbm/iceberg/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/iceberg/p;->a:Lcom/bbm/iceberg/n;

    invoke-static {v0}, Lcom/bbm/iceberg/n;->a(Lcom/bbm/iceberg/n;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/iceberg/n;->a(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/iceberg/p;->a:Lcom/bbm/iceberg/n;

    invoke-static {v1}, Lcom/bbm/iceberg/n;->e(Lcom/bbm/iceberg/n;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bbm/iceberg/q;

    invoke-direct {v2, p0, v0}, Lcom/bbm/iceberg/q;-><init>(Lcom/bbm/iceberg/p;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
