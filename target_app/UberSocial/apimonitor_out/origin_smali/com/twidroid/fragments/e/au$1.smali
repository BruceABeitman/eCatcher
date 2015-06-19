.class Lcom/twidroid/fragments/e/au$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/au;->c([Ljava/lang/Object;)Ljava/util/List;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/au;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/au;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/au$1;->a:Lcom/twidroid/fragments/e/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/au$1;->a:Lcom/twidroid/fragments/e/au;

    iget-object v0, v0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;

    const-string v1, "User is protected"

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/at;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/au$1;->a:Lcom/twidroid/fragments/e/au;

    iget-object v0, v0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/at;->P()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/au$1;->a:Lcom/twidroid/fragments/e/au;

    iget-object v0, v0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/at;->R()V

    return-void
.end method
