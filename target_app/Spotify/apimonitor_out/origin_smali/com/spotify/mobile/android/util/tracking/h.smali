.class public final Lcom/spotify/mobile/android/util/tracking/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/tracking/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/h;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/z;)Landroid/support/v4/app/z;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/util/tracking/i;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/tracking/i;-><init>(Landroid/support/v4/app/z;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/h;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Lcom/spotify/mobile/android/util/tracking/n;)Lcom/spotify/mobile/android/util/ar;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/util/tracking/n;",
            ")",
            "Lcom/spotify/mobile/android/util/ar",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/spotify/mobile/android/util/ar;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Lcom/spotify/mobile/android/util/tracking/h$1;

    invoke-direct {v2, p0, p1}, Lcom/spotify/mobile/android/util/tracking/h$1;-><init>(Lcom/spotify/mobile/android/util/tracking/h;Lcom/spotify/mobile/android/util/tracking/n;)V

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/util/ar;-><init>(ILcom/spotify/mobile/android/util/as;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/tracking/i;

    iput-object v1, v0, Lcom/spotify/mobile/android/util/tracking/i;->b:Lcom/spotify/mobile/android/util/ar;

    goto :goto_16

    :cond_25
    return-object v1
.end method
