.class final Lcom/spotify/mobile/android/service/flow/logic/f$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/logic/f;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/q;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/spotify/mobile/android/service/flow/logic/h;->a(Lcom/spotify/mobile/android/service/flow/logic/f;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/a;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/a;)V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/logic/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/logic/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$12;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1b
.end method
