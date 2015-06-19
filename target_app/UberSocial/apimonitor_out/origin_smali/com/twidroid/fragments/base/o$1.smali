.class Lcom/twidroid/fragments/base/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/base/o;->g(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twidroid/fragments/base/o;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/base/o$1;->b:Lcom/twidroid/fragments/base/o;

    iput-object p2, p0, Lcom/twidroid/fragments/base/o$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/base/o$1;->b:Lcom/twidroid/fragments/base/o;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/o$1;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/twidroid/d/h;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
