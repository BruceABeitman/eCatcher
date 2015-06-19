.class public Lcom/twidroid/service/e;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/service/StreamingService;


# direct methods
.method public constructor <init>(Lcom/twidroid/service/StreamingService;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/service/e;->a:Lcom/twidroid/service/StreamingService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twidroid/service/StreamingService;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/service/e;->a:Lcom/twidroid/service/StreamingService;

    return-object v0
.end method
