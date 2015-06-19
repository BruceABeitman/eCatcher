.class final Lcom/spotify/mobile/android/service/flow/login/y$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/login/y;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/android/paste/app/a;

.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/z;

.field final synthetic c:Lcom/spotify/mobile/android/service/flow/login/y;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/y;Lcom/spotify/android/paste/app/a;Lcom/spotify/mobile/android/service/flow/login/z;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/y$1;->c:Lcom/spotify/mobile/android/service/flow/login/y;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/y$1;->a:Lcom/spotify/android/paste/app/a;

    iput-object p3, p0, Lcom/spotify/mobile/android/service/flow/login/y$1;->b:Lcom/spotify/mobile/android/service/flow/login/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y$1;->c:Lcom/spotify/mobile/android/service/flow/login/y;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/y;->a(Lcom/spotify/mobile/android/service/flow/login/y;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y$1;->a:Lcom/spotify/android/paste/app/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/a;->show()V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y$1;->b:Lcom/spotify/mobile/android/service/flow/login/z;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/z;->b()V

    return-void
.end method
