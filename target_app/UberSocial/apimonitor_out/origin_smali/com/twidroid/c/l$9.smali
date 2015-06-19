.class final Lcom/twidroid/c/l$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/l;->a(Landroid/content/Context;Lcom/twidroid/d/v;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twidroid/d/v;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twidroid/d/v;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/l$9;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twidroid/c/l$9;->b:Lcom/twidroid/d/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/c/l$9;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/c/l$9;->a:Landroid/content/Context;

    const-class v3, Lcom/twidroid/activity/WhatsNewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twidroid/c/l$9;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->Z()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string v0, "tour-open"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Answer"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Yes"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
