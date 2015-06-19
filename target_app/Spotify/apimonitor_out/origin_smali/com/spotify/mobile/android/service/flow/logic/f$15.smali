.class final Lcom/spotify/mobile/android/service/flow/logic/f$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/logic/f;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/e;->b(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/c;->b(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v1, p1}, Lcom/spotify/mobile/android/service/flow/login/q;->a(Lcom/spotify/mobile/android/service/flow/logic/d;Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/login/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v1, p1, p2}, Lcom/spotify/mobile/android/service/flow/logic/h;->a(Lcom/spotify/mobile/android/service/flow/logic/f;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/FlowActivity;

    if-nez v0, :cond_19

    const-string v0, "Could not finish flow - activity not attached"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_18
    return-void

    :cond_19
    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->b(Lcom/spotify/mobile/android/service/flow/a;)V

    goto :goto_18
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/service/v;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/e;->b(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v1, p1, p2, p3}, Lcom/spotify/mobile/android/service/flow/login/ag;->a(Lcom/spotify/mobile/android/service/flow/logic/d;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/service/v;)Lcom/spotify/mobile/android/service/flow/login/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/a;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/e;->b(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/l;->b(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/a;)V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$15;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->c()V

    return-void
.end method
