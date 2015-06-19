.class Lcom/glympse/android/lib/hw;
.super Ljava/lang/Object;
.source "StorageUnit.java"

# interfaces
.implements Lcom/glympse/android/core/GStorageUnit;


# instance fields
.field private sB:Lcom/glympse/android/hal/GDirectory;

.field private sC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    invoke-static {p2}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/glympse/android/hal/GDirectory;->writeText(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/glympse/android/lib/hw;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v1

    invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/glympse/android/hal/HalFactory;->openDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/glympse/android/hal/GDirectory;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 4

    invoke-interface {p0, p1}, Lcom/glympse/android/hal/GDirectory;->readText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    goto :goto_b
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v2, 0x5f

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)Z
    .registers 3

    invoke-interface {p0, p1}, Lcom/glympse/android/hal/GDirectory;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, v1}, Lcom/glympse/android/hal/HalFactory;->openDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    iget-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    if-nez v0, :cond_30

    invoke-interface {p1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, v1}, Lcom/glympse/android/hal/HalFactory;->createDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    iget-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    if-nez v0, :cond_30

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[StorageUnit.start] Failed to open/create directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :cond_30
    invoke-static {p2, p4}, Lcom/glympse/android/lib/hw;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hw;->sC:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cK()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    iget-object v1, p0, Lcom/glympse/android/lib/hw;->sC:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/glympse/android/lib/hw;->d(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public deserialize(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 3

    invoke-static {p1}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public load()Lcom/glympse/android/core/GPrimitive;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    iget-object v1, p0, Lcom/glympse/android/lib/hw;->sC:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/glympse/android/lib/hw;->c(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    iget-object v1, p0, Lcom/glympse/android/lib/hw;->sC:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GDirectory;->deleteFile(Ljava/lang/String;)Z

    :cond_b
    return-void
.end method

.method public save(Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    iget-object v1, p0, Lcom/glympse/android/lib/hw;->sC:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_b
    return-void
.end method

.method public serialize(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/hw;->sB:Lcom/glympse/android/hal/GDirectory;

    iput-object v0, p0, Lcom/glympse/android/lib/hw;->sC:Ljava/lang/String;

    return-void
.end method
