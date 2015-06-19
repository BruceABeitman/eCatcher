.class public abstract Lcom/spotify/mobile/android/service/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/os/Handler$Callback;

.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/spotify/mobile/android/service/c/b;

.field protected final d:Landroid/os/Handler;

.field protected final e:Landroid/os/Handler;

.field private f:Lcom/spotify/mobile/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/g/a",
            "<",
            "Lcom/spotify/mobile/android/service/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Notification;

.field private h:Lcom/squareup/picasso/ai;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/b;Landroid/os/Handler;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/service/c/d$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/c/d$1;-><init>(Lcom/spotify/mobile/android/service/c/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->a:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/c/d;->a:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->e:Landroid/os/Handler;

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->f:Lcom/spotify/mobile/android/g/a;

    new-instance v0, Lcom/spotify/mobile/android/service/c/d$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/c/d$2;-><init>(Lcom/spotify/mobile/android/service/c/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->h:Lcom/squareup/picasso/ai;

    iput-object p1, p0, Lcom/spotify/mobile/android/service/c/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/c/d;->c:Lcom/spotify/mobile/android/service/c/b;

    iput-object p3, p0, Lcom/spotify/mobile/android/service/c/d;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/c/d;)Landroid/app/Notification;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->g:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/c/d;Lcom/spotify/mobile/android/g/a;)V
    .registers 8

    const v5, 0x7f0b007b

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/spotify/mobile/android/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->f:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-virtual {p1}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/c/c;

    iget-object v3, v0, Lcom/spotify/mobile/android/service/c/c;->b:Landroid/net/Uri;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->f:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->f:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/c/c;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/c/c;->b:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    :cond_32
    move v1, v2

    :goto_33
    iput-object p1, p0, Lcom/spotify/mobile/android/service/c/d;->f:Lcom/spotify/mobile/android/g/a;

    iget-object v4, p0, Lcom/spotify/mobile/android/service/c/d;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/c/c;

    invoke-static {v4, v0}, Lcom/spotify/mobile/android/util/notifications/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)Lcom/spotify/mobile/android/util/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/notifications/a;->b()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->g:Landroid/app/Notification;

    if-eqz v1, :cond_66

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/squareup/picasso/ad;->a(II)Lcom/squareup/picasso/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/ad;->b()Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/c/d;->h:Lcom/squareup/picasso/ai;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    :cond_66
    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->c:Lcom/spotify/mobile/android/service/c/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/c/d;->g:Landroid/app/Notification;

    invoke-virtual {v0, v2, v1}, Lcom/spotify/mobile/android/service/c/b;->a(ILandroid/app/Notification;)V

    :cond_6d
    return-void

    :cond_6e
    const/4 v0, 0x0

    move v1, v0

    goto :goto_33
.end method


# virtual methods
.method public abstract a()V
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->c:Lcom/spotify/mobile/android/service/c/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/c/b;->a(I)V

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/d;->f:Lcom/spotify/mobile/android/g/a;

    return-void
.end method
