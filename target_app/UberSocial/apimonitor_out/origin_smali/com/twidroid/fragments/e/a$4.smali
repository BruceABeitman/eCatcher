.class Lcom/twidroid/fragments/e/a$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/fragments/e/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/a;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/a;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/a$4;->a:Lcom/twidroid/fragments/e/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/e/a$4;->a:Lcom/twidroid/fragments/e/a;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/a;->b()V

    return-void
.end method
