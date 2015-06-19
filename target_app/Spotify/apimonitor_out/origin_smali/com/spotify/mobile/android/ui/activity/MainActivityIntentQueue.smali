.class public Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->e:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->e:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_30

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_32

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->b:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_34

    move v0, v1

    :goto_25
    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_36

    :goto_2d
    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->d:Z

    return-void

    :cond_30
    move v0, v2

    goto :goto_13

    :cond_32
    move v0, v2

    goto :goto_1c

    :cond_34
    move v0, v2

    goto :goto_25

    :cond_36
    move v1, v2

    goto :goto_2d
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/ui/activity/i;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Must supply a dispatcher"

    invoke-static {p1, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a()Z

    move-result v2

    const-string v3, "must have queued intent"

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->b:Z

    if-eqz v2, :cond_26

    const-string v0, "drawer is open..."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :cond_1c
    :goto_1c
    if-nez v0, :cond_55

    const-string v0, "Cannot dispatch queued Intents"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_25
    return-void

    :cond_26
    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->c:Z

    if-eqz v2, :cond_2e

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a:Z

    if-eqz v2, :cond_1c

    :cond_2e
    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->d:Z

    if-nez v2, :cond_1c

    const-string v2, "paused: %b, uiFragmentsReadyToLoad: %b, uiFragmentsLoaded: %b"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->c:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1c

    :cond_55
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-interface {p1, v0}, Lcom/spotify/mobile/android/ui/activity/i;->a(Landroid/content/Intent;)V

    goto :goto_5b

    :cond_6b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_25
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a:Z

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final a(Landroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->b:Z

    if-eqz v2, :cond_1d

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "Enqueuing Intent because the drawer is opened"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->b(Landroid/content/Intent;)V

    :goto_1c
    return v0

    :cond_1d
    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a:Z

    if-eqz v2, :cond_2c

    const-string v2, "Enqueueing Intent because the app is paused"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->b(Landroid/content/Intent;)V

    goto :goto_1c

    :cond_2c
    move v0, v1

    goto :goto_1c
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->d:Z

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->b:Z

    return-void
.end method

.method public final c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->c:Z

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a:Z

    if-eqz v0, :cond_26

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->b:Z

    if-eqz v0, :cond_28

    move v0, v1

    :goto_10
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->c:Z

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_19
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->d:Z

    if-eqz v0, :cond_2c

    :goto_21
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_26
    move v0, v2

    goto :goto_7

    :cond_28
    move v0, v2

    goto :goto_10

    :cond_2a
    move v0, v2

    goto :goto_19

    :cond_2c
    move v1, v2

    goto :goto_21
.end method
