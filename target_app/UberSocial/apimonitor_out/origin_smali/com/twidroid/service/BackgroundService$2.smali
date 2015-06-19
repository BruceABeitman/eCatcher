.class Lcom/twidroid/service/BackgroundService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/service/BackgroundService;->e(Lcom/twidroid/b/a/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/service/BackgroundService;


# direct methods
.method constructor <init>(Lcom/twidroid/service/BackgroundService;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/service/BackgroundService$2;->a:Lcom/twidroid/service/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService$2;->a:Lcom/twidroid/service/BackgroundService;

    iget-object v0, v0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0, p1}, Lcom/twidroid/d/v;->d(Z)V

    return-void
.end method
