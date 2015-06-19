.class final Lcom/spotify/mobile/android/service/flow/login/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/login/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/c$1;->a:Lcom/spotify/mobile/android/service/flow/login/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/c$1;->a:Lcom/spotify/mobile/android/service/flow/login/c;

    invoke-virtual {v0, p2, p3}, Lcom/spotify/mobile/android/service/flow/login/c;->a(Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method
