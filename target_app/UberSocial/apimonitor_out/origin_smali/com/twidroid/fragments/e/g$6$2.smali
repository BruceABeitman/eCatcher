.class Lcom/twidroid/fragments/e/g$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/g$6;->a(Lcom/twidroid/model/twitter/c;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/g$6;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/g$6;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/g$6$2;->a:Lcom/twidroid/fragments/e/g$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$6$2;->a:Lcom/twidroid/fragments/e/g$6;

    iget-object v0, v0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->aa()V

    return-void
.end method
