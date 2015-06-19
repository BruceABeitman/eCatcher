.class Lcom/twidroid/fragments/e/g$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/fragments/e/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/g;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/g;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/g$4;->a:Lcom/twidroid/fragments/e/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$4;->a:Lcom/twidroid/fragments/e/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/fragments/e/g;->h(Lcom/twidroid/fragments/e/g;Z)Z

    return-void
.end method
