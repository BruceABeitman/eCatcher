.class final Lcom/spotify/mobile/android/util/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/util/g;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/g;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/g$1;->a:Lcom/spotify/mobile/android/util/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/g$1;->a:Lcom/spotify/mobile/android/util/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/g;->a(Lcom/spotify/mobile/android/util/g;Z)V

    return-void
.end method
