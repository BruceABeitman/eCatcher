.class public Lcom/lenovo/content/base/ContentPath;
.super Ljava/lang/Object;
.source "ContentPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/content/base/ContentPath$1;,
        Lcom/lenovo/content/base/ContentPath$ItemContentPath;,
        Lcom/lenovo/content/base/ContentPath$ContainerContentPath;
    }
.end annotation


# static fields
.field private static a:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;


# instance fields
.field private final b:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lenovo/content/base/ContentObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    const/4 v1, 0x0

    const-string/jumbo v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;-><init>(Lcom/lenovo/content/base/ContentPath$ContainerContentPath;Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/content/base/ContentPath;->a:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    return-void
.end method

.method private constructor <init>(Lcom/lenovo/content/base/ContentPath$ContainerContentPath;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/lenovo/content/base/ContentPath;->b:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    iput-object p2, p0, Lcom/lenovo/content/base/ContentPath;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/content/base/ContentPath$ContainerContentPath;Ljava/lang/String;Lcom/lenovo/content/base/ContentPath$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/lenovo/content/base/ContentPath;-><init>(Lcom/lenovo/content/base/ContentPath$ContainerContentPath;Ljava/lang/String;)V

    return-void
.end method

.method private a()[Ljava/lang/String;
    .registers 7

    const-class v5, Lcom/lenovo/content/base/ContentPath;

    monitor-enter v5

    const/4 v1, 0x0

    move-object v2, p0

    :goto_5
    :try_start_5
    sget-object v4, Lcom/lenovo/content/base/ContentPath;->a:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    if-eq v2, v4, :cond_e

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v2, Lcom/lenovo/content/base/ContentPath;->b:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    goto :goto_5

    :cond_e
    new-array v3, v1, [Ljava/lang/String;

    move v0, v1

    move-object v2, p0

    :goto_12
    sget-object v4, Lcom/lenovo/content/base/ContentPath;->a:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    if-eq v2, v4, :cond_1f

    add-int/lit8 v0, v0, -0x1

    iget-object v4, v2, Lcom/lenovo/content/base/ContentPath;->c:Ljava/lang/String;

    aput-object v4, v3, v0

    iget-object v2, v2, Lcom/lenovo/content/base/ContentPath;->b:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    goto :goto_12

    :cond_1f
    monitor-exit v5

    return-object v3

    :catchall_21
    move-exception v4

    monitor-exit v5
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v4
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/16 v8, 0x2f

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    new-array v5, v7, [Ljava/lang/String;

    :goto_b
    return-object v5

    :cond_c
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_2c

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "malformed path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    :goto_32
    if-ge v2, v4, :cond_76

    const/4 v0, 0x0

    move v3, v2

    :goto_36
    if-ge v3, v4, :cond_50

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x7b

    if-ne v1, v7, :cond_45

    add-int/lit8 v0, v0, 0x1

    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_45
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_4c

    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    :cond_4c
    if-nez v0, :cond_42

    if-ne v1, v8, :cond_42

    :cond_50
    if-eqz v0, :cond_6c

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6c
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    goto :goto_32

    :cond_76
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_b
.end method

.method public static getContainer(Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath;
    .registers 7

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    const-class v5, Lcom/lenovo/content/base/ContentPath;

    monitor-enter v5

    :try_start_6
    invoke-static {p0}, Lcom/lenovo/content/base/ContentPath;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_11

    sget-object v1, Lcom/lenovo/content/base/ContentPath;->a:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    monitor-exit v5

    :goto_10
    return-object v1

    :cond_11
    sget-object v2, Lcom/lenovo/content/base/ContentPath;->a:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    const/4 v0, 0x0

    :goto_14
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_22

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->getSubContainer(Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->getSubContainer(Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    monitor-exit v5

    goto :goto_10

    :catchall_30
    move-exception v4

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw v4
.end method

.method public static getItem(Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath;
    .registers 7

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    const-class v5, Lcom/lenovo/content/base/ContentPath;

    monitor-enter v5

    :try_start_6
    invoke-static {p0}, Lcom/lenovo/content/base/ContentPath;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_22

    const/4 v4, 0x1

    :goto_e
    invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    sget-object v2, Lcom/lenovo/content/base/ContentPath;->a:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    const/4 v0, 0x0

    :goto_14
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_24

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->getSubContainer(Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    const/4 v4, 0x0

    goto :goto_e

    :cond_24
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;->getSubItem(Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath$ItemContentPath;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    monitor-exit v5

    return-object v1

    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v4
.end method


# virtual methods
.method public getObject()Lcom/lenovo/content/base/ContentObject;
    .registers 3

    const-class v1, Lcom/lenovo/content/base/ContentPath;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/lenovo/content/base/ContentPath;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit v1

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/lenovo/content/base/ContentPath;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/content/base/ContentObject;

    goto :goto_8

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getParent()Lcom/lenovo/content/base/ContentPath;
    .registers 3

    const-class v1, Lcom/lenovo/content/base/ContentPath;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/lenovo/content/base/ContentPath;->a:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    if-eq p0, v0, :cond_b

    iget-object v0, p0, Lcom/lenovo/content/base/ContentPath;->b:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    if-eqz v0, :cond_17

    :cond_b
    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/content/base/ContentPath;->b:Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    monitor-exit v1

    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_c

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public setObject(Lcom/lenovo/content/base/ContentObject;)V
    .registers 4

    const-class v1, Lcom/lenovo/content/base/ContentPath;

    monitor-enter v1

    :try_start_3
    instance-of v0, p1, Lcom/lenovo/content/base/ContentItem;

    if-eqz v0, :cond_b

    instance-of v0, p0, Lcom/lenovo/content/base/ContentPath$ItemContentPath;

    if-nez v0, :cond_13

    :cond_b
    instance-of v0, p1, Lcom/lenovo/content/base/ContentContainer;

    if-eqz v0, :cond_23

    instance-of v0, p0, Lcom/lenovo/content/base/ContentPath$ContainerContentPath;

    if-eqz v0, :cond_23

    :cond_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    invoke-virtual {p1, p0}, Lcom/lenovo/content/base/ContentObject;->setContentPath(Lcom/lenovo/content/base/ContentPath;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lenovo/content/base/ContentPath;->d:Ljava/lang/ref/WeakReference;

    monitor-exit v1

    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_14

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-class v4, Lcom/lenovo/content/base/ContentPath;

    monitor-enter v4

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/content/base/ContentPath;->a()[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_d
    array-length v3, v2

    if-ge v1, v3, :cond_1e

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    :catchall_24
    move-exception v3

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v3
.end method
