.class final Lcom/spotify/mobile/android/util/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/util/b/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/b/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/b/a$1;->a:Lcom/spotify/mobile/android/util/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ClientEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/util/b/a$1;->a:Lcom/spotify/mobile/android/util/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/b/a;->a(Lcom/spotify/mobile/android/util/b/a;)Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->a:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p1, v0, p2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method
