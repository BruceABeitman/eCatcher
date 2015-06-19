.class public final Lcom/spotify/mobile/android/service/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/support/v4/app/z",
            "<*>;",
            "Lcom/spotify/mobile/android/service/b/c",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/b/b;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/b/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/b/c;->b()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final a(Landroid/support/v4/app/z;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/app/z",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/b/c;

    if-nez v0, :cond_1b

    iget v1, p0, Lcom/spotify/mobile/android/service/b/b;->a:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/service/b/b;->a:I

    new-instance v0, Lcom/spotify/mobile/android/service/b/c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/spotify/mobile/android/service/b/c;-><init>(ILandroid/support/v4/app/z;B)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/b/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/b/c;->a()V

    return-void
.end method

.method public final b(Landroid/support/v4/app/z;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/z",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/b/c;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/b/c;->b()V

    goto :goto_a
.end method
