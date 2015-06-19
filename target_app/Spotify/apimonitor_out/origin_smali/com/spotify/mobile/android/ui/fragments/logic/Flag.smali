.class public Lcom/spotify/mobile/android/ui/fragments/logic/Flag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        "S:",
        "Lcom/spotify/mobile/android/ui/fragments/logic/w;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static e:Ljava/util/AbstractCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Z

.field protected c:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected d:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final f:Lcom/spotify/mobile/android/ui/fragments/logic/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/spotify/mobile/android/ui/fragments/logic/g",
            "<TT;TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->e:Ljava/util/AbstractCollection;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "TS;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->h:Ljava/util/Collection;

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->e:Ljava/util/AbstractCollection;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There can be only one feature flag instance with identifier "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_27
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->e:Ljava/util/AbstractCollection;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->g:Ljava/lang/Class;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->f:Lcom/spotify/mobile/android/ui/fragments/logic/w;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->b:Z

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-override"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c:Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->d:Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/fragments/logic/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/ui/fragments/logic/g",
            "<TT;TS;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->h:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Ljava/io/Serializable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c:Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/g;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/g;->a()V

    goto :goto_11

    :cond_21
    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c:Ljava/io/Serializable;

    return-void
.end method

.method public final b()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c:Ljava/io/Serializable;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->d:Ljava/io/Serializable;

    return-void
.end method

.method public final b(Lcom/spotify/mobile/android/ui/fragments/logic/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/ui/fragments/logic/g",
            "<TT;TS;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->h:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Lcom/spotify/mobile/android/ui/fragments/logic/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->f:Lcom/spotify/mobile/android/ui/fragments/logic/w;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/io/Serializable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-class v0, Lcom/spotify/mobile/android/ui/fragments/logic/h;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->b(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/h;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/h;->b(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/h;->a(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;)Ljava/io/Serializable;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c:Ljava/io/Serializable;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->d:Ljava/io/Serializable;

    if-eqz v0, :cond_3d

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    if-nez v0, :cond_3f

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag$FlagUndefinedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using flag \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" before it has been set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag$FlagUndefinedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_1e

    :cond_3f
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->d:Ljava/io/Serializable;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->d:Ljava/io/Serializable;

    goto :goto_14

    :cond_46
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c:Ljava/io/Serializable;

    goto :goto_14
.end method

.method public final f()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c:Ljava/io/Serializable;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c:Ljava/io/Serializable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_b
    const-class v0, Lcom/spotify/mobile/android/ui/fragments/logic/h;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->b(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/h;

    if-eqz v0, :cond_41

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/h;->b(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;)Z

    move-result v2

    if-eqz v2, :cond_41

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/h;->a(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;)Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (forcibly overridden, provided: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3c
    :goto_3c
    return-object v1

    :cond_3d
    const-string v0, "undefined"

    move-object v1, v0

    goto :goto_b

    :cond_41
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->d:Ljava/io/Serializable;

    if-eqz v0, :cond_68

    const/4 v0, 0x1

    :goto_46
    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->d:Ljava/io/Serializable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (overridden, provided: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_68
    const/4 v0, 0x0

    goto :goto_46
.end method
