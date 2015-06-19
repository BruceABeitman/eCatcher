.class public final Lcom/spotify/mobile/android/service/session/e;
.super Lcom/spotify/mobile/android/service/connections/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/service/connections/e",
        "<",
        "Lcom/spotify/mobile/android/service/session/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/spotify/mobile/android/service/session/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/spotify/mobile/android/service/session/SessionStateService;

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/service/connections/e;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/session/e;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/spotify/mobile/android/service/session/e;
    .registers 3

    instance-of v0, p0, Lcom/spotify/mobile/android/service/session/f;

    const-string v1, "Activity must be instance of SessionStateClientAware!"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    check-cast p0, Lcom/spotify/mobile/android/service/session/f;

    invoke-interface {p0}, Lcom/spotify/mobile/android/service/session/f;->z_()Lcom/spotify/mobile/android/service/session/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/service/session/d;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/session/e;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/session/e;->g()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/session/c;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/session/c;->a(Lcom/spotify/mobile/android/service/session/d;)V

    :cond_14
    return-void
.end method

.method public final b()V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/session/e;->c()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/session/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/session/e;->g()Landroid/os/Binder;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/service/session/c;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/session/c;->b(Lcom/spotify/mobile/android/service/session/d;)V

    goto :goto_c

    :cond_22
    invoke-super {p0}, Lcom/spotify/mobile/android/service/connections/e;->b()V

    return-void
.end method

.method public final b(Lcom/spotify/mobile/android/service/session/d;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/session/e;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/session/e;->g()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/session/c;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/session/c;->b(Lcom/spotify/mobile/android/service/session/d;)V

    :cond_14
    return-void
.end method

.method protected final e()V
    .registers 4

    invoke-super {p0}, Lcom/spotify/mobile/android/service/connections/e;->e()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/session/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/session/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/session/e;->g()Landroid/os/Binder;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/service/session/c;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/session/c;->a(Lcom/spotify/mobile/android/service/session/d;)V

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/session/e;->g()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/session/c;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/session/c;->a:Lcom/spotify/mobile/android/service/session/SessionStateService;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/SessionStateService;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/session/e;->g()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/session/c;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/session/c;->a:Lcom/spotify/mobile/android/service/session/SessionStateService;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/SessionStateService;->b()Z

    move-result v0

    return v0
.end method
