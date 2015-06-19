.class Lcom/twidroid/fragments/f$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/net/c/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/f;->i()Z
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twidroid/fragments/f;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/f;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/f$16;->b:Lcom/twidroid/fragments/f;

    iput-object p2, p0, Lcom/twidroid/fragments/f$16;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/f$16;->b:Lcom/twidroid/fragments/f;

    invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/f$16;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/f$16;->b:Lcom/twidroid/fragments/f;

    invoke-static {v0}, Lcom/twidroid/fragments/f;->b(Lcom/twidroid/fragments/f;)V

    return-void
.end method
