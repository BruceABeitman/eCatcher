.class Lcom/twidroid/fragments/e/ab$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/fragments/e/ab;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/ab;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/ab$1;->a:Lcom/twidroid/fragments/e/ab;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "search"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/twidroid/fragments/e/ab;->H:Z

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab$1;->a:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/e/ab;->a(Ljava/lang/String;)V

    return-void
.end method
