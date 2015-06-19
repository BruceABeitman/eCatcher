.class final Lcom/spotify/mobile/android/util/b/a$2;
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

    iput-object p1, p0, Lcom/spotify/mobile/android/util/b/a$2;->a:Lcom/spotify/mobile/android/util/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ClientEvent;)V
    .registers 5

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->a:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v0, v1, p2}, Lcom/spotify/mobile/android/util/bj;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method
