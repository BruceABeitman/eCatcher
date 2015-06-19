.class final Lcom/spotify/mobile/android/service/flow/logic/f$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/logic/f;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$13;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$13;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$13;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/a;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$13;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->f()V

    return-void
.end method
