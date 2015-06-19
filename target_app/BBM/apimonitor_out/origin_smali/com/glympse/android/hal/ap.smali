.class Lcom/glympse/android/hal/ap;
.super Landroid/database/ContentObserver;
.source "LocalContactsProvider.java"


# instance fields
.field final synthetic bX:Lcom/glympse/android/hal/ao;


# direct methods
.method public constructor <init>(Lcom/glympse/android/hal/ao;)V
    .registers 3

    iput-object p1, p0, Lcom/glympse/android/hal/ap;->bX:Lcom/glympse/android/hal/ao;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/glympse/android/hal/ap;->bX:Lcom/glympse/android/hal/ao;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glympse/android/hal/ao;->a(Lcom/glympse/android/hal/ao;Z)Z

    return-void
.end method
