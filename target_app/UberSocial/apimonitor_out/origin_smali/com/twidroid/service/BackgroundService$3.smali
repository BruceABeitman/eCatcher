.class Lcom/twidroid/service/BackgroundService$3;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/service/BackgroundService;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/service/BackgroundService;


# direct methods
.method constructor <init>(Lcom/twidroid/service/BackgroundService;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/service/BackgroundService$3;->a:Lcom/twidroid/service/BackgroundService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
