.class Lcom/glympse/android/hal/ao;
.super Ljava/lang/Object;
.source "LocalContactsProvider.java"

# interfaces
.implements Lcom/glympse/android/hal/GContactsProvider;


# instance fields
.field private R:Ljava/util/concurrent/Future;

.field private _handler:Lcom/glympse/android/core/GHandler;

.field private bS:Lcom/glympse/android/hal/GContactsListener;

.field private bT:Lcom/glympse/android/hal/ar;

.field private bU:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;"
        }
    .end annotation
.end field

.field private bV:Z

.field private bW:Lcom/glympse/android/hal/ap;

.field protected e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/ao;->bV:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/hal/ao;->bW:Lcom/glympse/android/hal/ap;

    iput-object p1, p0, Lcom/glympse/android/hal/ao;->e:Landroid/content/Context;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/hal/ao;->bU:Lcom/glympse/android/hal/GVector;

    return-void
.end method

.method static synthetic a(Lcom/glympse/android/hal/ao;)Lcom/glympse/android/core/GHandler;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/ao;->_handler:Lcom/glympse/android/core/GHandler;

    return-object v0
.end method

.method static synthetic a(Lcom/glympse/android/hal/ao;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/glympse/android/hal/ao;->bV:Z

    return p1
.end method


# virtual methods
.method protected complete(Lcom/glympse/android/hal/GVector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/glympse/android/hal/ao;->bU:Lcom/glympse/android/hal/GVector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/hal/ao;->bT:Lcom/glympse/android/hal/ar;

    iget-object v0, p0, Lcom/glympse/android/hal/ao;->bS:Lcom/glympse/android/hal/GContactsListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/glympse/android/hal/ao;->bS:Lcom/glympse/android/hal/GContactsListener;

    invoke-interface {v0, p0}, Lcom/glympse/android/hal/GContactsListener;->contactsProviderUpdateComplete(Lcom/glympse/android/hal/GContactsProvider;)V

    :cond_e
    return-void
.end method

.method public getPeople()Lcom/glympse/android/hal/GVector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/hal/ao;->bU:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public loadAvatar(J)Lcom/glympse/android/core/GDrawable;
    .registers 7

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_Contacts;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/hal/ao;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v3}, Lcom/glympse/android/hal/Reflection$_Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_22

    :goto_1f
    if-nez v2, :cond_27

    :cond_21
    :goto_21
    return-object v0

    :catch_22
    move-exception v1

    invoke-static {v1, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_1f

    :cond_27
    new-instance v0, Lcom/glympse/android/hal/ac;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/glympse/android/hal/ao;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Lcom/glympse/android/hal/ac;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_21
.end method

.method public refresh()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/ao;->bT:Lcom/glympse/android/hal/ar;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/glympse/android/hal/ar;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/ar;-><init>(Lcom/glympse/android/hal/ao;)V

    iput-object v0, p0, Lcom/glympse/android/hal/ao;->bT:Lcom/glympse/android/hal/ar;

    invoke-static {}, Lcom/glympse/android/hal/GlympseThreadPool;->instance()Lcom/glympse/android/hal/GlympseThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/ao;->bT:Lcom/glympse/android/hal/ar;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GlympseThreadPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/hal/ao;->R:Ljava/util/concurrent/Future;

    goto :goto_4
.end method

.method public setActive(Z)V
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/glympse/android/hal/ao;->y()V

    iget-boolean v0, p0, Lcom/glympse/android/hal/ao;->bV:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/ao;->bV:Z

    invoke-virtual {p0}, Lcom/glympse/android/hal/ao;->refresh()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/glympse/android/hal/ao;->x()V

    goto :goto_f
.end method

.method public start(Lcom/glympse/android/hal/GContactsListener;Lcom/glympse/android/core/GHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/glympse/android/hal/ao;->bS:Lcom/glympse/android/hal/GContactsListener;

    iput-object p2, p0, Lcom/glympse/android/hal/ao;->_handler:Lcom/glympse/android/core/GHandler;

    invoke-static {}, Lcom/glympse/android/hal/s;->m()V

    invoke-virtual {p0}, Lcom/glympse/android/hal/ao;->refresh()V

    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/ao;->bT:Lcom/glympse/android/hal/ar;

    if-eqz v0, :cond_f

    :try_start_5
    iget-object v0, p0, Lcom/glympse/android/hal/ao;->R:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_b} :catch_12

    :goto_b
    iput-object v2, p0, Lcom/glympse/android/hal/ao;->R:Ljava/util/concurrent/Future;

    iput-object v2, p0, Lcom/glympse/android/hal/ao;->bT:Lcom/glympse/android/hal/ar;

    :cond_f
    iput-object v2, p0, Lcom/glympse/android/hal/ao;->bS:Lcom/glympse/android/hal/GContactsListener;

    return-void

    :catch_12
    move-exception v0

    goto :goto_b
.end method

.method public x()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/hal/ao;->bW:Lcom/glympse/android/hal/ap;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_Contacts;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v1, Lcom/glympse/android/hal/ap;

    invoke-direct {v1, p0}, Lcom/glympse/android/hal/ap;-><init>(Lcom/glympse/android/hal/ao;)V

    iput-object v1, p0, Lcom/glympse/android/hal/ao;->bW:Lcom/glympse/android/hal/ap;

    iget-object v1, p0, Lcom/glympse/android/hal/ao;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/glympse/android/hal/ao;->bW:Lcom/glympse/android/hal/ap;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1d
    return-void
.end method

.method public y()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/ao;->bW:Lcom/glympse/android/hal/ap;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/glympse/android/hal/ao;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/ao;->bW:Lcom/glympse/android/hal/ap;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/hal/ao;->bW:Lcom/glympse/android/hal/ap;

    :cond_12
    return-void
.end method
