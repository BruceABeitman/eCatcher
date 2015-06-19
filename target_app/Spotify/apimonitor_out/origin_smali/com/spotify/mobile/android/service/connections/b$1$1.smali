.class final Lcom/spotify/mobile/android/service/connections/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/connections/b$1;->a(Ljava/util/List;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/connections/b$1;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/connections/b$1;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/b$1$1;->a:Lcom/spotify/mobile/android/service/connections/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/b$1$1;->a:Lcom/spotify/mobile/android/service/connections/b$1;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/connections/b$1;->a:Lcom/spotify/mobile/android/service/connections/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/b;)V

    return-void
.end method
