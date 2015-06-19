.class Lcom/lenovo/content/base/ContentPath$ContainerContentPath;
.super Lcom/lenovo/content/base/ContentPath;
.source "ContentPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/content/base/ContentPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContainerContentPath"
.end annotation


# instance fields
.field a:Lcom/lenovo/anyshare/sdk/internal/bh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/anyshare/sdk/internal/bh",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/content/base/ContentPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lenovo/content/base/ContentPath$ContainerContentPath;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/content/base/ContentPath;-><init>(Lcom/lenovo/content/base/ContentPath$ContainerContentPath;Ljava/lang/String;Lcom/lenovo/content/base/ContentPath$1;)V

    return-void
.end method


# virtual methods
.method public getSubContainer(Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath$ContainerContentPath;
    .registers 7

    const-class v4, Lcom/lenovo/content/base/ContentPath;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->a:Lcom/lenovo/anyshare/sdk/internal/bh;

    if-nez v3, :cond_e

    new-instance v3, Lcom/lenovo/anyshare/sdk/internal/bh;

    invoke-direct {v3}, Lcom/lenovo/anyshare/sdk/internal/bh;-><init>()V

    iput-object v3, p0, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->a:Lcom/lenovo/anyshare/sdk/internal/bh;

    :cond_e
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->a:Lcom/lenovo/anyshare/sdk/internal/bh;

    invoke-virtual {v3, p1}, Lcom/lenovo/anyshare/sdk/internal/bh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/content/base/ContentPath;

    if-eqz v2, :cond_22

    instance-of v3, v2, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    move-object v0, v2

    check-cast v0, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    move-object v1, v0

    :cond_22
    if-nez v1, :cond_2e

    new-instance v1, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;-><init>(Lcom/lenovo/content/base/ContentPath$ContainerContentPath;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->a:Lcom/lenovo/anyshare/sdk/internal/bh;

    invoke-virtual {v3, p1, v1}, Lcom/lenovo/anyshare/sdk/internal/bh;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    monitor-exit v4

    return-object v1

    :catchall_33
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v3
.end method

.method public getSubItem(Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath$ItemContentPath;
    .registers 7

    const-class v4, Lcom/lenovo/content/base/ContentPath;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->a:Lcom/lenovo/anyshare/sdk/internal/bh;

    if-nez v3, :cond_e

    new-instance v3, Lcom/lenovo/anyshare/sdk/internal/bh;

    invoke-direct {v3}, Lcom/lenovo/anyshare/sdk/internal/bh;-><init>()V

    iput-object v3, p0, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->a:Lcom/lenovo/anyshare/sdk/internal/bh;

    :cond_e
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->a:Lcom/lenovo/anyshare/sdk/internal/bh;

    invoke-virtual {v3, p1}, Lcom/lenovo/anyshare/sdk/internal/bh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/content/base/ContentPath;

    if-eqz v1, :cond_22

    instance-of v3, v1, Lcom/lenovo/content/base/ContentPath$ItemContentPath;

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    move-object v0, v1

    check-cast v0, Lcom/lenovo/content/base/ContentPath$ItemContentPath;

    move-object v2, v0

    :cond_22
    if-nez v2, :cond_2e

    new-instance v2, Lcom/lenovo/content/base/ContentPath$ItemContentPath;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/content/base/ContentPath$ItemContentPath;-><init>(Lcom/lenovo/content/base/ContentPath$ContainerContentPath;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->a:Lcom/lenovo/anyshare/sdk/internal/bh;

    invoke-virtual {v3, p1, v2}, Lcom/lenovo/anyshare/sdk/internal/bh;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    monitor-exit v4

    return-object v2

    :catchall_33
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v3
.end method
